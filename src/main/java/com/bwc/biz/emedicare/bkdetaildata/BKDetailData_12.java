package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET12
 */
public class BKDetailData_12 {
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
	//数据坐标（EXCEL行列）
	private List<int[]> indexList = Arrays.asList(
		// 综合判断
		new int[] {4, 2 },new int[] {4, 3 },new int[] {4, 4 },new int[] {4, 6 },new int[] {4, 7 },new int[] {4, 8 },new int[] {4, 10 },new int[] {4, 11 },new int[] {4, 12 },
		new int[] {5, 2 },new int[] {5, 3 },new int[] {5, 4 },new int[] {5, 6 },new int[] {5, 7 },new int[] {5, 8 },new int[] {5, 10 },new int[] {5, 11 },new int[] {5, 12 },
		new int[] {6, 2 },new int[] {6, 3 },new int[] {6, 4 },new int[] {6, 6 },new int[] {6, 7 },new int[] {6, 8 },new int[] {6, 10 },new int[] {6, 11 },new int[] {6, 12 },
		new int[] {7, 2 },new int[] {7, 3 },new int[] {7, 4 },new int[] {7, 6 },new int[] {7, 7 },new int[] {7, 8 },new int[] {7, 10 },new int[] {7, 11 },new int[] {7, 12 },
		new int[] {8, 2 },new int[] {8, 3 },new int[] {8, 4 },new int[] {8, 6 },new int[] {8, 7 },new int[] {8, 8 },new int[] {8, 10 },new int[] {8, 11 },new int[] {8, 12 },
		new int[] {9, 2 },new int[] {9, 3 },new int[] {9, 4 },new int[] {9, 6 },new int[] {9, 7 },new int[] {9, 8 },new int[] {9, 10 },new int[] {9, 11 },new int[] {9, 12 },
		new int[] {10, 2 },new int[] {10, 3 },new int[] {10, 4 },new int[] {10, 6 },new int[] {10, 7 },new int[] {10, 8 },new int[] {10, 10 },new int[] {10, 11 },new int[] {10, 12 },
		new int[] {11, 2 },new int[] {11, 3 },new int[] {11, 4 },new int[] {11, 6 },new int[] {11, 7 },new int[] {11, 8 },new int[] {11, 10 },new int[] {11, 11 },new int[] {11, 12 },
		new int[] {12, 2 },new int[] {12, 3 },new int[] {12, 4 },new int[] {12, 6 },new int[] {12, 7 },new int[] {12, 8 },
		new int[] {13, 2 },new int[] {13, 3 },new int[] {13, 4 },new int[] {13, 6 },new int[] {13, 7 },new int[] {13, 8 },
		new int[] {14, 2 },new int[] {14, 3 },new int[] {14, 4 },new int[] {14, 6 },new int[] {14, 7 },new int[] {14, 8 },
		new int[] {15, 2 },new int[] {15, 3 },new int[] {15, 4 },new int[] {15, 6 },new int[] {15, 7 },new int[] {15, 8 },
		new int[] {16, 2 },new int[] {16, 3 },new int[] {16, 4 },new int[] {16, 6 },new int[] {16, 7 },new int[] {16, 8 },
		new int[] {17, 2 },new int[] {17, 3 },new int[] {17, 4 },new int[] {17, 6 },new int[] {17, 7 },new int[] {17, 8 },
		// 代谢综合症判定
		new int[] {25, 4 },
		// 保健指导程度
		new int[] {25, 10 },
		// 指示事项
		new int[] {30, 1 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "诊察所见","本次"},new String[] { "2", "诊察所见","上次"},new String[] { "3", "诊察所见","上上次"},
		new String[] { "4", "血清反应","本次"},new String[] { "5", "血清反应","上次"},new String[] { "6", "血清反应","上上次"},
		new String[] { "7", "乳房检查","本次"},new String[] { "8", "乳房检查","上次"},new String[] { "9", "乳房检查","上上次"},
		new String[] { "10", "身体测量","本次"},new String[] { "11", "身体测量","上次"},new String[] { "12", "身体测量","上上次"},
		new String[] { "13", "血沉","本次"},new String[] { "14", "血沉","上次"},new String[] { "15", "血沉","上上次"},
		new String[] { "16", "妇科检查","本次"},new String[] { "17", "妇科检查","上次"},new String[] { "18", "妇科检查","上上次"},
		new String[] { "19", "血压","本次"},new String[] { "20", "血压","上次"},new String[] { "21", "血压","上上次"},
		new String[] { "22", "糖尿病","本次"},new String[] { "23", "糖尿病","上次"},new String[] { "24", "糖尿病","上上次"},
		new String[] { "25", "ABI","本次"},new String[] { "26", "ABI","上次"},new String[] { "27", "ABI","上上次"},
		new String[] { "28", "视力","本次"},new String[] { "29", "视力","上次"},new String[] { "30", "视力","上上次"},
		new String[] { "31", "炎症反应","本次"},new String[] { "32", "炎症反应","上次"},new String[] { "33", "炎症反应","上上次"},
		new String[] { "34", "胸部CT","本次"},new String[] { "35", "胸部CT","上次"},new String[] { "36", "胸部CT","上上次"},
		new String[] { "37", "听力","本次"},new String[] { "38", "听力","上次"},new String[] { "39", "听力","上上次"},
		new String[] { "40", "肝炎","本次"},new String[] { "41", "肝炎","上次"},new String[] { "42", "肝炎","上上次"},
		new String[] { "43", "腹部CT","本次"},new String[] { "44", "腹部CT","上次"},new String[] { "45", "腹部CT","上上次"},
		new String[] { "46", "尿常规","本次"},new String[] { "47", "尿常规","上次"},new String[] { "48", "尿常规","上上次"},
		new String[] { "49", "肿瘤标记物","本次"},new String[] { "50", "肿瘤标记物","上次"},new String[] { "51", "肿瘤标记物","上上次"},
		new String[] { "52", "尿沉渣","本次"},new String[] { "53", "尿沉渣","上次"},new String[] { "54", "尿沉渣","上上次"},
		new String[] { "55", "肺功能","本次"},new String[] { "56", "肺功能","上次"},new String[] { "57", "肺功能","上上次"},
		new String[] { "58", "病毒抗体","本次"},new String[] { "59", "病毒抗体","上次"},new String[] { "60", "病毒抗体","上上次"},
		new String[] { "61", "甲状腺超声波","本次"},new String[] { "62", "甲状腺超声波","上次"},new String[] { "63", "甲状腺超声波","上上次"},
		new String[] { "64", "便检查","本次"},new String[] { "65", "便检查","上次"},new String[] { "66", "便检查","上上次"},
		new String[] { "67", "胸部","本次"},new String[] { "68", "胸部","上次"},new String[] { "69", "胸部","上上次"},
		new String[] { "70", "甲状腺检查","本次"},new String[] { "71", "甲状腺检查","上次"},new String[] { "72", "甲状腺检查","上上次"},
		new String[] { "73", "肝功能","本次"},new String[] { "74", "肝功能","上次"},new String[] { "75", "肝功能","上上次"},
		new String[] { "76", "心电图","本次"},new String[] { "77", "心电图","上次"},new String[] { "78", "心电图","上上次"},
		new String[] { "79", "肾功能","本次"},new String[] { "80", "肾功能","上次"},new String[] { "81", "肾功能","上上次"},
		new String[] { "82", "眼底所见","本次"},new String[] { "83", "眼底所见","上次"},new String[] { "84", "眼底所见","上上次"},
		new String[] { "85", "胰功能","本次"},new String[] { "86", "胰功能","上次"},new String[] { "87", "胰功能","上上次"},
		new String[] { "88", "胃部内视镜","本次"},new String[] { "89", "胃部内视镜","上次"},new String[] { "90", "胃部内视镜","上上次"},
		new String[] { "91", "脂质","本次"},new String[] { "92", "脂质","上次"},new String[] { "93", "脂质","上上次"},
		new String[] { "94", "上腹部超声波","本次"},new String[] { "95", "上腹部超声波","上次"},new String[] { "96", "上腹部超声波","上上次"},
		new String[] { "97", "痛风","本次"},new String[] { "98", "痛风","上次"},new String[] { "99", "痛风","上上次"},
		new String[] { "100", "血沉","本次"},new String[] { "101", "血沉","上次"},new String[] { "102", "血沉","上上次"},
		new String[] { "103", "血球","本次"},new String[] { "104", "血球","上次"},new String[] { "105", "血球","上上次"},
		new String[] { "106", "骨密度","本次"},new String[] { "107", "骨密度","上次"},new String[] { "108", "骨密度","上上次"},
		new String[] { "109", "代谢综合症判定","代谢综合症判定"},new String[] { "110", "保健指导程度","保健指导程度"},
		new String[] { "111", "指示事项","指示事项"}
		);

	public BKDetailData_12() {}

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_12(Sheet sheet, String userid, String username, String date, String histno) {
		this.sheet = sheet;
		this.userid = userid;
		this.username = username;
		this.date = date;
		this.histno = histno;
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
		String insertSql = "insert into cdata_detail_12 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for (int i = 0; i < indexList.size(); i++) {
			mainclass = lableList.get(i)[1];
			subclass = lableList.get(i)[2];
			context = BkImportInfoServlet.getCellValue(this.sheet, indexList.get(i)[0], indexList.get(i)[1]);
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

	/*
	 * 详细数据取得（画面表示用详细数据取得）
	 */
	public List<String> getDateValue(String userid, String historydate) {
		List<String> detailDataList = new ArrayList<String>();

		String dataSql = "select context from cdata_detail_12 where userid = ? and examdate= ? order by dispindex";
		Object[] params = new Object[2];
		params[0] = userid;
		params[1] = historydate;

		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(dataSql, params);

		if (dataList.size() > 0) {
			for (Object data : dataList) {
				Map<String, Object> row = (Map<String, Object>) data;
				detailDataList.add(row.get("context").toString());
			}
		}

		return detailDataList;
	}
	
	/*
	 * 画面表示数据更新保存
	 */
	public void saveDataDispToDb(String userid,String username,String historydate, String[] detaildata02){
		this.check(userid,historydate);
		String insertsql = "insert into cdata_detail_12 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for(int i=0; i < detaildata02.length;i++){
			insertparams[0] = userid;
			insertparams[1] = username;
			insertparams[2] = historydate;
			insertparams[3] = 1;
			insertparams[4] = i;
			insertparams[5] = lableList.get(i)[1];
			insertparams[6] = lableList.get(i)[2];
			insertparams[7] = detaildata02[i];
			
			JdbcUtil.getInstance().executeUpdate(insertsql, insertparams);
		}	
	}
	
	/*
	 * 画面表示数据删除
	 */
	public void deleteData(String userid, String historydate){
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		String delsql = "delete from cdata_detail_12 where userid = ? and examdate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
	}
	
	private void check(String userid, String date) {
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_12 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_12 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
	}
}
