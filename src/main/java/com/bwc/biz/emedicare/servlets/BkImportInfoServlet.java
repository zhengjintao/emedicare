package com.bwc.biz.emedicare.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.form.User;

/**
 * 诊断情报导入处理
 */
public class BkImportInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private boolean okflg=true;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BkImportInfoServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filepath = request.getParameter("filepath");
		
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		if(filepath== "" || filepath== null){
			this.getImportHistory(request, response);
			request.getRequestDispatcher("bkimportinfo.jsp").forward(request, response);
		}else{
			this.saveDataFromExcel(filepath,userinfo.getUserName());
			this.getImportHistory(request, response);
			request.getRequestDispatcher("bkimportinfo.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	private void getImportHistory(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String sql ="select * from cdata_importhistory order by importdate";
 		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(sql, null);
		List<String[]> imoprthist = new ArrayList<String[]>();
		for (Object data : dataList) {
			Map<String, Object> row = (Map<String, Object>) data;
			String[] each = new String[5];
			each[0] = row.get("userid").toString();
			each[1] = row.get("username").toString();
			each[2] = row.get("historyname").toString();
			each[3] = row.get("importdate").toString();
			each[4] = row.get("resultflg").toString().equals("0") ? "OK":"NG";
			
			imoprthist.add(each);
		}
		
		// 最終結果
		request.setAttribute("imoprthist", imoprthist);
	}
	
	private void saveDataFromExcel(String filepath,String sysusername) {
		InputStream inputStream = null;
		Workbook workbook = null;
		File file = new File(filepath);
		
		if (!file.exists()) {
			System.out.println("文件不存在");
		}

		try {
			inputStream = new FileInputStream(file);
			workbook = WorkbookFactory.create(inputStream);
			Sheet sheet = workbook.getSheetAt(0);
			String userid = getCellValue(sheet,4,2);
			String username = getCellValue(sheet,3,2);
			String date = getCellValue(sheet,3,8);
			int histno = this.check(userid, date);
			
			// 履历情报-Sheet1（健診結果報告書１）
			BKDetailData_01 detail01 = new BKDetailData_01(workbook.getSheetAt(0), userid,username,date,Integer.toString(histno));
			detail01.saveDataExcelToDb();
			// 履历情报-Sheet2（健診結果報告書2）
			BKDetailData_02 detail02 = new BKDetailData_02(workbook.getSheetAt(1), userid,username,date,Integer.toString(histno));
			detail02.saveDataExcelToDb();
			
			String fileName = file.getName();
			String historyname = fileName.substring(0, fileName.indexOf("."));
			this.saveHistoryDate(userid, username, histno, historyname, date);
			this.saveImportHistoryDate(userid, sysusername, historyname);
			inputStream.close();
		} catch (Exception e) {
			this.okflg = false;
			e.printStackTrace();
		}
	}
	

	private int check(String userid, String date) {
		int historyno = 1;
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_01 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_01 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
		// 履历No取得
		String maxnosql = "select max(historyno) as historyno from cdata_detail_01 where userid = ?";
		List<Object> list2 = JdbcUtil.getInstance().excuteQuery(maxnosql, params);
		if (list2.size() > 0) {
			Map<String, Object> set = (Map<String, Object>) list2.get(0);
			historyno = Integer.parseInt(set.get("historyno").toString())+1;
		}
		
		return historyno;
	}
	
	/*
	 * 明细表数据导入完成后履历表对应数据作成
	 */
	private void saveHistoryDate(String userid,String username,int historyno,String historyname,String historydate){
		String chksql = "select * from cdata_history where userid=? and historydate=?";
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(chksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_history where userid = ? and historydate=?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
		
		String insertSql = "insert into cdata_history value(?,?,?,?,?,?)";
        Object[] insertparams = new Object[6];
        insertparams[0] = userid;
        insertparams[1] = username;
        insertparams[2] = historyno;
        insertparams[3] = historyname;
        insertparams[4] = historydate;
        insertparams[5] = "0";
        JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
	}
	
	/*
	 * 明细表数据导入完成后履历表对应数据作成
	 */
	private void saveImportHistoryDate(String userid,String username,String historyname){
		String insertSql = "insert into cdata_importhistory value(?,?,?,?,?)";
        Object[] insertparams = new Object[5];
        insertparams[0] = userid;
        insertparams[1] = username;
        insertparams[2] = historyname;
        insertparams[3] = new Date();
        insertparams[4] = "0";
        JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
	}
	
	/*
	 * Cell值取得
	 */
	public static String getCellValue(Sheet sheet,int rowIndex,int colIndx){
		String value = null;
    	Row row = sheet.getRow(rowIndex);
    	Cell cell = row.getCell(colIndx);
    	switch (cell.getCellType()) {
        case Cell.CELL_TYPE_STRING:
        	value = cell.getStringCellValue().trim();
            break;
        case Cell.CELL_TYPE_NUMERIC:
        	value = Double.toString(cell.getNumericCellValue());
            break;
    	}
    	return value;
	}
}
