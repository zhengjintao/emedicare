package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET
 */
public class BKDetailData_24 {
	// 用户ID
	private String userid;
	// 检查日期
	private String historydate;
	// 检查日期
	private String historyno;
	//name
	private String historyname;
	//path
	private String filepath;	

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_24(String userid, String date, String histno, String historyname, String filepath) {
		this.userid = userid;
		this.historydate = date;
		this.historyno = histno;
		this.historyname = historyname;
		this.filepath = filepath;
		
	}

	/*
	 * 详细数据登陆处理（pic到DB）
	 */
	public void saveDataPicToDb() {	
		// 插入用SQL
		String insertSql = "insert into cdata_detail_24 value(?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[7];
		String context = BkImportInfoServlet.getPicValue(this.historyname, 2);
		insertparams[0] = this.userid;
		insertparams[1] = this.historydate;
		insertparams[2] = this.historyno;
		insertparams[3] = 0;
		insertparams[4] = this.historyname;
		insertparams[5] = this.filepath.replaceAll("(.*)assets", "/emedicare/assets");
		insertparams[6] = context;

		JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);	
	}

	/*
	 * 详细数据取得（画面表示用详细数据取得）
	 */
	public List<String> getCommentValue() {
		List<String> detailDataList = new ArrayList<String>();

		String dataSql = "select context from cdata_detail_24 inner join cdata_pichistory "
				+ "on cdata_detail_24.historyno = cdata_pichistory.historyno and "
				+ "cdata_detail_24.userid = cdata_pichistory.userid "
				+ "where cdata_detail_24.userid = ? and cdata_pichistory.historydate = ? "
				+ "and cdata_pichistory.deleteflg = '0'";
		Object[] params = new Object[2];
		params[0] = this.userid;
		params[1] = this.historydate;
		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(dataSql, params);

		if (dataList.size() > 0) {
			for (Object data : dataList) {
				Map<String, Object> row = (Map<String, Object>) data;
				detailDataList.add(row.get("context") ==null ? "" : row.get("context").toString());
			}
		}

		return detailDataList;
	}
	
	public List<String> getPathValue() {
		List<String> detailDataList = new ArrayList<String>();

		String dataSql = "select filepath from cdata_detail_24 inner join cdata_pichistory "
				+ "on cdata_detail_24.historyno = cdata_pichistory.historyno and "
				+ "cdata_detail_24.userid = cdata_pichistory.userid "
				+ "where cdata_detail_24.userid = ? and cdata_pichistory.historydate = ? "
				+ "and cdata_pichistory.deleteflg = '0'";
		Object[] params = new Object[2];
		params[0] = this.userid;
		params[1] = this.historydate;
		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(dataSql, params);

		if (dataList.size() > 0) {
			for (Object data : dataList) {
				Map<String, Object> row = (Map<String, Object>) data;
				detailDataList.add(row.get("filepath") ==null ? "" : row.get("filepath").toString());
			}
		}

		return detailDataList;
	}
	
	/*
	 * 画面表示数据更新保存
	 */
	public void saveDataDispToDb(String[] detaildata){
		//TODO
	}
}

