package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET6
 */
public class BKDetailData_06 {
	// 对象Sheet
	private Sheet sheet;
	// 用户ID
	private String userid;
	// 检查日期
	private String historydate;
	// 检查日期
	private String historyno;
	//数据坐标（EXCEL行列）
	private List<int[]> indexList = Arrays.asList(
		// 上部消化管内视镜
		new int[] {2, 2 },
		new int[] {3, 3 },new int[] {3, 4 },
		new int[] {4, 3 },new int[] {4, 4 },
		new int[] {5, 3 },new int[] {5, 4 },
		new int[] {6, 3 },new int[] {6, 4 },
		new int[] {9, 3 },new int[] {9, 4 },new int[] {9, 5 },new int[] {9, 6 },
		//胃活检
		new int[] {11, 2 },
		new int[] {13, 3 },new int[] {13, 4 },
		//上腹部超声波
		new int[] {18, 2 },
		new int[] {19, 3 },new int[] {19, 4 },
		new int[] {20, 3 },new int[] {20, 4 },
		new int[] {21, 3 },new int[] {21, 4 },
		new int[] {24, 3 },new int[] {24, 4 },new int[] {24, 5 },new int[] {24, 6 },
		
		//血沉
		new int[] {29, 2 },new int[] {29, 5 },new int[] {29, 7},
		new int[] {30, 5 },new int[] {30, 7},
		new int[] {31, 3 },new int[] {31, 5},new int[] {31, 7 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "上部消化管内视镜","判定"},
		new String[] { "2", "上部消化管内视镜","部位"},new String[] { "3", "肺功能","上次"},new String[] { "4", "肺功能","上次"},new String[] { "5", "肺功能","上上次"},
		new String[] { "6", "肺功能","标准值/单位"},new String[] { "7", "肺功能","上次"},new String[] { "8", "肺功能","上次"},new String[] { "9", "肺功能","上上次"},
		new String[] { "10", "肺功能","标准值/单位"},new String[] { "11", "肺功能","上次"},new String[] { "12", "肺功能","上次"},new String[] { "13", "肺功能","上上次"},
		new String[] { "14", "肺功能","标准值/单位"},new String[] { "15", "肺功能","上次"},new String[] { "16", "肺功能","上次"},new String[] { "17", "肺功能","上上次"},
		new String[] { "18", "肺功能","标准值/单位"},new String[] { "19", "肺功能","上次"},new String[] { "20", "肺功能","上次"},new String[] { "21", "肺功能","上上次"},
		new String[] { "22", "肺功能","评语"},
		new String[] { "23", "胰腺","判定"},
		new String[] { "24", "胰腺","标准值/单位"},new String[] { "25", "胰腺","上次"},new String[] { "26", "胰腺","上次"},new String[] { "27", "胰腺","上上次"},
		new String[] { "28", "胰腺","评语"},
		new String[] { "29", "炎症反应","判定"},
		new String[] { "30", "炎症反应","检查项目"},new String[] { "31", "炎症反应","标准值/单位"},new String[] { "32", "胰腺","上次"},new String[] { "33", "胰腺","上次"},new String[] { "34", "胰腺","上上次"},
		new String[] { "35", "炎症反应","标准值/单位"},new String[] { "36", "胰腺","上次"},new String[] { "37", "胰腺","上次"},new String[] { "38", "胰腺","上上次"},
		new String[] { "39", "炎症反应","检查项目"},new String[] { "40", "炎症反应","标准值/单位"},new String[] { "41", "胰腺","上次"},new String[] { "42", "胰腺","上次"},new String[] { "43", "胰腺","上上次"},
		new String[] { "44", "炎症反应","标准值/单位"},new String[] { "45", "胰腺","上次"},new String[] { "46", "胰腺","上次"},new String[] { "47", "胰腺","上上次"},
		new String[] { "48", "炎症反应","标准值/单位"},new String[] { "49", "胰腺","上次"},new String[] { "50", "胰腺","上次"},new String[] { "51", "胰腺","上上次"},
		new String[] { "52", "炎症反应","标准值/单位"},new String[] { "53", "胰腺","上次"},new String[] { "54", "胰腺","上次"},new String[] { "55", "胰腺","上上次"},
		new String[] { "56", "炎症反应","评语"},
		new String[] { "57", "肝炎","判定"},
		new String[] { "58", "肝炎","标准值/单位"},new String[] { "59", "肝炎","上次"},new String[] { "60", "肝炎","上次"},new String[] { "61", "肝炎","上上次"},
		new String[] { "62", "肝炎","标准值/单位"},new String[] { "63", "肝炎","上次"},new String[] { "64", "肝炎","上次"},new String[] { "65", "肝炎","上上次"},
		new String[] { "66", "肝炎","标准值/单位"},new String[] { "67", "肝炎","上次"},new String[] { "68", "肝炎","上次"},new String[] { "69", "肝炎","上上次"},
		new String[] { "70", "肝炎","评语"},
		new String[] { "71", "血清反应","判定"},
		new String[] { "72", "血清反应","标准值/单位"},new String[] { "73", "血清反应","上次"},new String[] { "74", "血清反应","上次"},new String[] { "75", "血清反应","上上次"},
		new String[] { "76", "血清反应","标准值/单位"},new String[] { "77", "血清反应","上次"},new String[] { "78", "血清反应","上次"},new String[] { "79", "血清反应","上上次"},
		new String[] { "80", "血清反应","评语"}
		);
	
	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_06(Sheet sheet, String userid, String date, String histno) {
		this.sheet = sheet;
		this.userid = userid;
		this.historydate = date;
		this.historyno = histno;
	}

	/*
	 * 详细数据登陆处理（EXCEL到DB）
	 */
	public void saveDataExcelToDb() {
		// 主项目
		String mainclass = "";
		// 子项目
		String subclass = "";
		// 内容
		String context = "";
		// 插入用SQL
		String insertSql = "insert into cdata_detail_06 value(?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[7];
		for (int i = 0; i < indexList.size(); i++) {
			mainclass = lableList.get(i)[1];
			subclass = lableList.get(i)[2];
			context = BkImportInfoServlet.getCellValue(this.sheet, indexList.get(i)[0], indexList.get(i)[1]);
			insertparams[0] = this.userid;
			insertparams[1] = this.historydate;
			insertparams[2] = this.historyno;
			insertparams[3] = i;
			insertparams[4] = mainclass;
			insertparams[5] = subclass;
			insertparams[6] = context;

			JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
		}
	}

	/*
	 * 详细数据取得（画面表示用详细数据取得）
	 */
	public List<String> getDateValue() {
		List<String> detailDataList = new ArrayList<String>();

		String dataSql = "select context from cdata_detail_06 where userid = ? and examdate= ? and historyno= ? order by dispindex";
		Object[] params = new Object[3];
		params[0] = userid;
		params[1] = historydate;
		params[2] = historyno;

		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(dataSql, params);

		if (dataList.size() > 0) {
			for (Object data : dataList) {
				Map<String, Object> row = (Map<String, Object>) data;
				detailDataList.add(row.get("context") ==null ? "":row.get("context").toString());
			}
		}

		return detailDataList;
	}
	
	/*
	 * 画面表示数据更新保存
	 */
	public void saveDataDispToDb(String[] detaildata){
		String insertsql = "insert into cdata_detail_06 value(?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[7];
		for(int i=0; i < detaildata.length;i++){
			insertparams[0] = userid;
			insertparams[1] = historydate;
			insertparams[2] = historyno;
			insertparams[3] = i;
			insertparams[4] = "";
			insertparams[5] = "";
			insertparams[6] = detaildata[i];
			
			JdbcUtil.getInstance().executeUpdate(insertsql, insertparams);
		}	
	}
}
