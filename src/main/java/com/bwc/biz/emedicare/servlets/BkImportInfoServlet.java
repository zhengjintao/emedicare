package com.bwc.biz.emedicare.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
import org.json.JSONObject;

import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_03;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_04;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_05;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_06;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_07;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_08;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_09;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_10;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_11;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_12;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_13;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_14;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_15;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_16;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_17;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_18;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_19;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_20;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_21;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_22;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_23;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_24;
import com.bwc.biz.emedicare.common.FileUploader;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.common.PicUploader;
import com.bwc.biz.emedicare.form.User;

/**
 * 诊断情报导入处理
 */
public class BkImportInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
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
		String mode = request.getParameter("mode");
		
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		
		if(mode.equals("init")){
			this.getImportHistory(request, response);
			request.getRequestDispatcher("bkimportinfo.jsp").forward(request, response);
		}else if(mode.equals("delete")){
			String importno = request.getParameter("importno");
			this.deleteImportHistory(importno);
			List<String[]> hisList = this.getImportHistory(request, response);
			this.setDispImportHistory(hisList,request, response);
		}else if(mode.equals("savesheet")){
			FileUploader loader = new FileUploader();
			String[] result = loader.upload(request, this.getServletContext().getRealPath("/WEB-INF"));
			// 文件正常上传
			if("0".equals(result[0])){
				this.saveDataFromExcel(result[1], result[2], userinfo);
			}else{
				// 上传文件发生错误
				this.saveImportHistoryDate(userinfo.getUserId(), userinfo.getUserName(), result[2], "1", result[1]);
			}
			this.getImportHistory(request, response);
			request.getRequestDispatcher("bkimportinfo.jsp").forward(request, response);
		}else if(mode.equals("savepic")){
			PicUploader loader = new PicUploader();
			String[] result = loader.upload(request, this.getServletContext().getRealPath("/assets"));
			// 文件正常上传
			if("0".equals(result[0])){
				this.saveDataFromPic(result[1], result[2], userinfo);
			}else{
				// 上传文件发生错误
				this.saveImportHistoryDate(userinfo.getUserId(), userinfo.getUserName(), result[2], "1", result[1]);
			}
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

	private List<String[]> getImportHistory(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String sql ="select * from cdata_importhistory order by importdate desc";
 		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(sql, null);
		List<String[]> imoprthist = new ArrayList<String[]>();
		for (Object data : dataList) {
			Map<String, Object> row = (Map<String, Object>) data;
			String[] each = new String[7];
			each[0] = row.get("userid").toString();
			each[1] = row.get("username").toString();
			each[2] = row.get("historyname").toString();
			each[3] = row.get("importdate").toString();
			each[4] = row.get("resultflg").toString().equals("0") ? "成功":"失敗";
			each[5] = row.get("importno").toString();
			each[6] = row.get("resultmsg").toString();
			imoprthist.add(each);
		}
		
		// 最終結果
		request.setAttribute("imoprthist", imoprthist);
		return imoprthist;
	}
	
	/**
	 * 
	 * @param filepath 上传服务端后的完整导入文件路径
	 * @param orifilename 文件原名称
	 * @param sysusername
	 */
	private void saveDataFromExcel(String filepath, String orifilename, User procuser) {
		InputStream inputStream = null;
		Workbook workbook = null;
		File file = new File(filepath);
		String historyname = orifilename.substring(0, orifilename.indexOf("."));
		if (!file.exists()) {
			this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "上传未成功，文件不存在");
			return;
		}
		String errmsg = "";
		try {
			inputStream = new FileInputStream(file);
			workbook = WorkbookFactory.create(inputStream);
			Sheet sheet = workbook.getSheetAt(0);
			String userid = getCellValue(sheet,4,2);
		    
		    Object[] params = new Object[1];
			params[0]= userid;
			
			String checksql = "select * from mstr_user where userid = ? and delflg = '0'";
			String username = getCellValue(sheet,3,2);
			
			List<Object> userinfo = JdbcUtil.getInstance().excuteQuery(checksql, params);
			// 导入对象用户不存在
			if (userinfo.size() == 0) {
				this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "导入对象用户不存在（ID:"+userid+"&nbsp;&nbsp;用户名:"+username+"）");
				return;
			}
			
			errmsg = "处理：检查日取得";
			String date = getCellValue(sheet,3,8);
			if(!checkdate(date)){
				this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "[健診結果報告書１]检查日("+date+")不正确。<br>检查日必须为YYYYMMDD格式(例：20180612)");
				return;
			}
			
			errmsg = "处理：履历情报记录保存";
			int histno = this.saveHistoryDate(userid, historyname, date);
			
			// 履历情报-Sheet1（健診結果報告書１）
			errmsg = "处理：履历情报-Sheet1（健診結果報告書１）导入";
			BKDetailData_01 detail01 = new BKDetailData_01(workbook.getSheetAt(0), userid,date,Integer.toString(histno));
			detail01.saveDataExcelToDb();
			
			// 履历情报-Sheet2（健診結果報告書2）
			errmsg = "处理：履历情报-Sheet2（健診結果報告書2）导入";
			BKDetailData_02 detail02 = new BKDetailData_02(workbook.getSheetAt(1), userid, date,Integer.toString(histno));
			detail02.saveDataExcelToDb();
			
			// 履历情报-Sheet3（健診結果報告書3）
			errmsg = "处理：履历情报-Sheet3（健診結果報告書3）导入";
			BKDetailData_03 detail03 = new BKDetailData_03(workbook.getSheetAt(2), userid, date,Integer.toString(histno));
			detail03.saveDataExcelToDb();
			
			// 履历情报-Sheet4（健診結果報告書4）
			errmsg = "处理：履历情报-Sheet4（健診結果報告書4）导入";
			BKDetailData_04 detail04 = new BKDetailData_04(workbook.getSheetAt(3), userid, date,Integer.toString(histno));
			detail04.saveDataExcelToDb();
			
			// 履历情报-Sheet5（健診結果報告書5）
			errmsg = "处理：履历情报-Sheet5（健診結果報告書5）导入";
			BKDetailData_05 detail05 = new BKDetailData_05(workbook.getSheetAt(4), userid, date,Integer.toString(histno));
			detail05.saveDataExcelToDb();
			
			// 履历情报-Sheet6（健診結果報告書6）
			errmsg = "处理：履历情报-Sheet6（健診結果報告書6）导入";
			BKDetailData_06 detail06 = new BKDetailData_06(workbook.getSheetAt(5), userid, date,Integer.toString(histno));
			detail06.saveDataExcelToDb();
			
			// 履历情报-Sheet7（健診結果報告書7）
			errmsg = "处理：履历情报-Sheet7（健診結果報告書7）导入";
			BKDetailData_07 detail07 = new BKDetailData_07(workbook.getSheetAt(6), userid, date,Integer.toString(histno));
			detail07.saveDataExcelToDb();
			
			// 履历情报-Sheet8（健診結果報告書8）
			errmsg = "处理：履历情报-Sheet8（健診結果報告書8）导入";
			BKDetailData_08 detail08 = new BKDetailData_08(workbook.getSheetAt(7), userid, date,Integer.toString(histno));
			detail08.saveDataExcelToDb();
			
			// 履历情报-Sheet9（健診結果報告書8）
			errmsg = "处理：履历情报-Sheet9（健診結果報告書8）导入";
			BKDetailData_09 detail09 = new BKDetailData_09(workbook.getSheetAt(8), userid, date,Integer.toString(histno));
			detail09.saveDataExcelToDb();
			
			// 履历情报-Sheet10（健診結果報告書10）
			errmsg = "处理：履历情报-Sheet10（健診結果報告書10）导入";
			BKDetailData_10 detail10 = new BKDetailData_10(workbook.getSheetAt(9), userid, date,Integer.toString(histno));
			detail10.saveDataExcelToDb();
			
			// 履历情报-Sheet11（健診結果報告書11）
			errmsg = "处理：履历情报-Sheet11（健診結果報告書11）导入";
			BKDetailData_11 detail11 = new BKDetailData_11(workbook.getSheetAt(10), userid, date,Integer.toString(histno));
			detail11.saveDataExcelToDb();
			
			// 履历情报-Sheet12（综合判断）
			errmsg = "处理：履历情报-Sheet12（综合判断）导入";
			BKDetailData_12 detail12 = new BKDetailData_12(workbook.getSheetAt(11), userid, date,Integer.toString(histno));
			detail12.saveDataExcelToDb();
			
			// 履历情报-Sheet13（检查结果查询表 ）
			errmsg = "处理：履历情报-Sheet13（检查结果查询表 ）导入";
			BKDetailData_13 detail13 = new BKDetailData_13(workbook.getSheetAt(12), userid, date,Integer.toString(histno));
			detail13.saveDataExcelToDb();
			
			// 履历情报-Sheet14（SPO 2）
			errmsg = "处理：履历情报-Sheet14（SPO 2）导入";
			BKDetailData_14 detail14 = new BKDetailData_14(workbook.getSheetAt(13), userid, date,Integer.toString(histno));
			detail14.saveDataExcelToDb();
			
			// 履历情报-Sheet15（甲状腺機能）
			errmsg = "处理：履历情报-Sheet15（甲状腺機能）导入";
			BKDetailData_15 detail15 = new BKDetailData_15(workbook.getSheetAt(14), userid, date,Integer.toString(histno));
			detail15.saveDataExcelToDb();
			
			// 履历情报-Sheet16（肿瘤标志物）
			errmsg = "处理：履历情报-Sheet16（肿瘤标志物）导入";
			BKDetailData_16 detail16 = new BKDetailData_16(workbook.getSheetAt(15), userid, date,Integer.toString(histno));
			detail16.saveDataExcelToDb();
			
			// 履历情报-Sheet17（ABC検診）
			errmsg = "处理：履历情报-Sheet17（ABC検診）导入";
			BKDetailData_17 detail17 = new BKDetailData_17(workbook.getSheetAt(16), userid, date,Integer.toString(histno));
			detail17.saveDataExcelToDb();
			
			// 履历情报-Sheet18（血压脉搏检查）
			errmsg = "处理：履历情报-Sheet18（血压脉搏检查）导入";
			BKDetailData_18 detail18 = new BKDetailData_18(workbook.getSheetAt(17), userid, date,Integer.toString(histno));
			detail18.saveDataExcelToDb();
			
			// 履历情报-Sheet19（骨密度）
			errmsg = "处理：履历情报-Sheet19（骨密度）导入";
			BKDetailData_19 detail19 = new BKDetailData_19(workbook.getSheetAt(18), userid, date,Integer.toString(histno));
			detail19.saveDataExcelToDb();
			
			// 履历情报-Sheet20（脳ドック）
			errmsg = "处理：履历情报-Sheet20（脳ドック）导入";
			BKDetailData_20 detail20 = new BKDetailData_20(workbook.getSheetAt(19), userid, date,Integer.toString(histno));
			detail20.saveDataExcelToDb();
			
			// 履历情报-Sheet21（颈动脉超声波）
			errmsg = "处理：履历情报-Sheet21（颈动脉超声波）导入";
			BKDetailData_21 detail21 = new BKDetailData_21(workbook.getSheetAt(20), userid, date,Integer.toString(histno));
			detail21.saveDataExcelToDb();
			
			// 履历情报-Sheet22（骨盆MRI）
			errmsg = "处理：履历情报-Sheet22（骨盆MRI）导入";
			BKDetailData_22 detail22 = new BKDetailData_22(workbook.getSheetAt(21), userid, date,Integer.toString(histno));
			detail22.saveDataExcelToDb();
			
			// 履历情报-Sheet23（心脏超声波）
			errmsg = "处理：履历情报-Sheet23（心脏超声波）导入";
			BKDetailData_23 detail23 = new BKDetailData_23(workbook.getSheetAt(22), userid, date,Integer.toString(histno));
			detail23.saveDataExcelToDb();
			
			this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"0", "成功导入。<br>(用户ID:"+userid+"&nbsp;&nbsp;用户名:"+username+ "&nbsp;&nbsp;检查日:" +date+")");
			inputStream.close();
		} catch (Exception e) {
			this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "导入文件失败。<br>"+errmsg+"发生错误");
			e.printStackTrace();
		}finally{
			if(workbook != null){
				try {
					workbook.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	private void saveDataFromPic(String filepath, String orifilename, User procuser) {
		InputStream inputStream = null;
		File file = new File(filepath);		
		String historyname = orifilename.substring(0, orifilename.indexOf("."));;
		if (!file.exists()) {
			this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "上传未成功，文件不存在");
			return;
		}
		String errmsg = "";
		try {
			inputStream = new FileInputStream(file);
			// check id
			String userid = getPicValue(historyname, 0);		    
		    Object[] params = new Object[1];
			params[0]= userid;
			
			String checksql = "select * from mstr_user where userid = ? and delflg = '0'";
			String username = getPicValue(historyname ,1);
			
			List<Object> userinfo = JdbcUtil.getInstance().excuteQuery(checksql, params);
			// 导入对象用户不存在
			if (userinfo.size() == 0) {
				this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "导入对象用户不存在（ID:"+userid+"&nbsp;&nbsp;用户名:"+username+"）");
				return;
			}
			//check date
			errmsg = "处理：检查日取得";
			String date = getPicValue(historyname, 2);
			if(!checkdate(date)){
				this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "[健診結果報告書１]检查日("+date+")不正确。<br>检查日必须为YYYYMMDD格式(例：20180612)");
				return;
			}
			//check sam efile
			String checknamesql = "select * from cdata_importhistory where historyname = ? and resultflg = '0'";
			Object[] checkparams = new Object[1];
			checkparams[0]= historyname;	
			
			List<Object> nameinfo = JdbcUtil.getInstance().excuteQuery(checknamesql, checkparams);
			if (nameinfo.size() > 0) {
				this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "导入相同图片，请导入其他图片");
				return;
			}
			errmsg = "处理：履历情报记录保存";
			int histno = this.savePicHistoryDate(userid, historyname, date);
			
			BKDetailData_24 detail24 = new BKDetailData_24(userid, date, Integer.toString(histno), historyname, filepath);
			detail24.saveDataPicToDb();
						
			this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"0", "成功导入。<br>(用户ID:"+userid+"&nbsp;&nbsp;用户名:"+username+ "&nbsp;&nbsp;检查日:" +date+")");
			inputStream.close();
		} catch (Exception e) {
			this.saveImportHistoryDate(procuser.getUserId(), procuser.getUserName(), historyname,"1", "导入文件失败。<br>"+errmsg+"发生错误");
			e.printStackTrace();
		}
	}
	
	/*
	 * 履历表对应数据作成
	 */
	private int saveHistoryDate(String userid, String historyname,String historydate){
		int historyno = 0;
		String chksql = "select * from cdata_history where userid=? and historydate=?";
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(chksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "update cdata_history set deleteflg='1' where userid = ? and historydate=?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
		
		// 履历No取得
		String maxnosql = "select max(historyno) as historyno from cdata_history where userid = ? and historydate=?";
		List<Object> list2 = JdbcUtil.getInstance().excuteQuery(maxnosql, params);
		if (list2.size() > 0) {
			Map<String, Object> set = (Map<String, Object>) list2.get(0);
			if(set.get("historyno")!=null){
				historyno = Integer.parseInt(set.get("historyno").toString()) + 1;
			}
		}

		String insertSql = "insert into cdata_history value(?,?,?,?,?)";
        Object[] insertparams = new Object[5];
        insertparams[0] = userid;
        insertparams[1] = historydate;
        insertparams[2] = historyno;
        insertparams[3] = historyname;
        insertparams[4] = "0";
        JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
        
        return historyno;
	}
	
	private int savePicHistoryDate(String userid, String historyname,String historydate){
		int historyno = 0;
		String chksql = "select * from cdata_pichistory where userid=? and historydate=?";
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(chksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "update cdata_pichistory set deleteflg='1' where userid = ? and historydate=?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
		
		// 履历No取得
		String maxnosql = "select max(historyno) as historyno from cdata_pichistory where userid = ? and historydate=?";
		List<Object> list2 = JdbcUtil.getInstance().excuteQuery(maxnosql, params);
		if (list2.size() > 0) {
			Map<String, Object> set = (Map<String, Object>) list2.get(0);
			if(set.get("historyno")!=null){
				historyno = Integer.parseInt(set.get("historyno").toString()) + 1;
			}
		}

		String insertSql = "insert into cdata_pichistory value(?,?,?,?,?)";
        Object[] insertparams = new Object[5];
        insertparams[0] = userid;
        insertparams[1] = historydate;
        insertparams[2] = historyno;
        insertparams[3] = historyname;
        insertparams[4] = "0";
        JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
        
        return historyno;
	}
	/*
	 * 明细表数据导入完成后履历表对应数据作成
	 */
	private void saveImportHistoryDate(String userid,String username,String historyname,String flg, String msg){
		long maxno = 0;
		String sql = "select max(importno) as importno from cdata_importhistory";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(sql, null);
		Map<String, Object> maxRow = (Map<String, Object>) list1.get(0);
		// date日的数据已经导入的时候，先删除
		if (maxRow.get("importno") != null) {
			maxno = Long.parseLong(maxRow.get("importno").toString());
		}
		
		String insertSql = "insert into cdata_importhistory value(?,?,?,?,?,?,?)";
        Object[] insertparams = new Object[7];
        insertparams[0] = maxno+1;
        insertparams[1] = userid;
        insertparams[2] = username;
        insertparams[3] = historyname;
        insertparams[4] = new Date();
        insertparams[5] = flg;
        insertparams[6] = msg;
        JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
	}
	
	private void deleteImportHistory(String importno){
		Object[] params = new Object[1];
		params[0]= importno;
		String delsql = "delete from cdata_importhistory where importno = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
	}
	
	private boolean checkdate(String date){
		Pattern pattern = Pattern.compile("^\\d{8}$");
        Matcher matcher = pattern.matcher(date);
        return matcher.matches();
	}
	
	private void setDispImportHistory(List<String[]> hisList,HttpServletRequest request, HttpServletResponse response) throws IOException{
		StringBuilder info = new StringBuilder();
		if (hisList.size() == 0) {
			info.append("<tr>");
			info.append("<td colspan='6'>");
			info.append("没有导入履历记录");
			info.append("</td>");
			info.append("</tr>");
		}
		for (String[] each : hisList) {
			info.append("<tr>");
			info.append("<td>" + each[2] + "</td>");
			info.append("<td>" + each[1] + "</td>");
			info.append("<td>" + each[3] + "</td>");
			info.append("<td>" + each[4] + "</td>");
			info.append("<td>" + each[6] + "</td>");
			info.append("<td>");
			info.append("<i class='close icon' onclick='ondelete(" + each[5]+ ");'></i>");
			info.append("</td>");
			info.append("</tr>");
		}
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", info.toString());
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(jsonObject.toString());
		
		return;
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
	/*
	 * Pic值取得
	 */
	public static String getPicValue(String filename, int index){
		String value = null;
    	String[] temp = filename.split("_", 4);
    	value = temp[index];
    	return value;
	}
}
