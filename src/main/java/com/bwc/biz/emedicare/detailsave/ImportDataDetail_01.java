package com.bwc.biz.emedicare.detailsave;

import java.util.ArrayList;
import java.util.List;
import org.apache.poi.ss.usermodel.Sheet;

import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;
public class ImportDataDetail_01 {
    // 对象Sheet
	private Sheet sheet;
	// 用户ID
	private String userid;
	// 用户名称
	private String username;
	// 检查日期
	private String date;
	// 检查日期
	private String histno;
	private List<int[]> indexList = new ArrayList<int[]>();
	
	public ImportDataDetail_01(Sheet sheet,String userid,String username,String date,String histno){
		this.sheet = sheet;
		this.userid = userid;
		this.username = username;
		this.date = date;
		this.histno = histno;
		indexList.add(new int[]{8,1,8,2,8,4});
		indexList.add(new int[]{8,1,9,2,9,4});
		indexList.add(new int[]{8,1,10,2,10,4});
		indexList.add(new int[]{8,1,11,2,11,4});
		indexList.add(new int[]{12,1,12,2,12,4});
		indexList.add(new int[]{12,1,13,2,13,4});
		indexList.add(new int[]{12,1,14,2,14,4});
		indexList.add(new int[]{15,1,15,2,15,4});
		indexList.add(new int[]{16,1,16,2,16,4});
		indexList.add(new int[]{17,1,17,2,17,4});
		indexList.add(new int[]{18,1,18,2,18,4});
		indexList.add(new int[]{19,1,19,2,19,4});
		indexList.add(new int[]{7,6,7,6,8,6});
		indexList.add(new int[]{14,6,14,6,15,6});
		indexList.add(new int[]{19,6,19,6,20,6});
		indexList.add(new int[]{22,1,22,1,23,1});
		indexList.add(new int[]{32,1,32,1,32,3});
		indexList.add(new int[]{32,5,32,5,32,8});
		indexList.add(new int[]{33,1,33,1,33,3});
		indexList.add(new int[]{33,5,33,5,33,8});
		indexList.add(new int[]{3,1,3,1,3,2});
		indexList.add(new int[]{3,7,3,7,3,8});
		indexList.add(new int[]{4,1,4,1,4,2});
		indexList.add(new int[]{4,4,4,4,4,5});
		indexList.add(new int[]{4,7,4,7,4,8});	
	}
	
	/*
	 * DB登陆处理实施
	 */
	public void saveData(){        
        // 主项目
        String mainclass = "";
        // 子项目
        String subclass = "";
        // 内容
        String context = "";
        // 插入用SQL
        String insertSql = "insert into cdata_detail_01 value(?,?,?,?,?,?,?,?)";
        int[] indexArr = new int[6];
        Object[] insertparams = new Object[8];
        for (int i = 0; i < indexList.size(); i++) {
        	indexArr = indexList.get(i);
        	mainclass = BkImportInfoServlet.getCellValue(this.sheet,indexArr[0],indexArr[1]);
        	subclass = BkImportInfoServlet.getCellValue(this.sheet,indexArr[2],indexArr[3]);
        	context = BkImportInfoServlet.getCellValue(this.sheet,indexArr[4],indexArr[5]);
        	insertparams[0] = this.userid;
        	insertparams[1] = this.username;
        	insertparams[2] = this.date;
        	insertparams[3] = histno;
        	insertparams[4] = i;
        	insertparams[5] = mainclass;
        	insertparams[6] = subclass;
        	insertparams[7] = context;
        	
        	JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
         }
     }
}

