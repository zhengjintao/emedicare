package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET
 */
public class BKDetailData_11 {
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
		new int[] {5, 3 },new int[] {5, 5 },new int[] {5, 6 },new int[] {5, 7 },new int[] {5, 8 },
		new int[] {6, 5 },new int[] {6, 6 },new int[] {6, 7 },new int[] {6, 8 },
		new int[] {7, 5 },new int[] {7, 6 },new int[] {7, 7 },new int[] {7, 8 },
		new int[] {8, 5 },new int[] {8, 6 },new int[] {8, 7 },new int[] {8, 8 },
		new int[] {9, 5 },new int[] {9, 6 },new int[] {9, 7 },new int[] {9, 8 },
		new int[] {10, 5 },new int[] {10, 6 },new int[] {10, 7 },new int[] {10, 8 },
		new int[] {11, 5 },new int[] {11, 6 },new int[] {11, 7 },new int[] {11, 8 },
		new int[] {12, 5 },new int[] {12, 6 },new int[] {12, 7 },new int[] {12, 8 },
		new int[] {13, 5 },new int[] {13, 6 },new int[] {13, 7 },new int[] {13, 8 },
		new int[] {14, 5 },new int[] {14, 6 },new int[] {14, 7 },new int[] {14, 8 },
		new int[] {15, 5 },new int[] {15, 6 },new int[] {15, 7 },new int[] {15, 8 },
		new int[] {16, 5 },new int[] {16, 6 },new int[] {16, 7 },new int[] {16, 8 },
		new int[] {17, 5 },new int[] {17, 6 },new int[] {17, 7 },new int[] {17, 8 },
		new int[] {18, 5 },new int[] {18, 6 },new int[] {18, 7 },new int[] {18, 8 },
		new int[] {19, 5 },new int[] {19, 6 },new int[] {19, 7 },new int[] {19, 8 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "选项","判定"},
		new String[] { "2", "血沉（60分）","标准值/单位"},new String[] { "3", "血沉（60分）","本次"},new String[] { "4", "血沉（60分）","上次"},new String[] { "5", "血沉（60分）","上上次"},
		new String[] { "6", "血沉（120分）","标准值/单位"},new String[] { "7", "血沉（120分）","本次"},new String[] { "8", "血沉（120分）","上次"},new String[] { "9", "血沉（120分）","上上次"},
		new String[] { "10", "幽门螺旋杆菌抗体","标准值/单位"},new String[] { "11", "幽门螺旋杆菌抗体","本次"},new String[] { "12", "幽门螺旋杆菌抗体","上次"},new String[] { "13", "幽门螺旋杆菌抗体","上上次"},
		new String[] { "14", "Rh血型","标准值/单位"},new String[] { "15", "Rh血型","本次"},new String[] { "16", "Rh血型","上次"},new String[] { "17", "Rh血型","上上次"},
		new String[] { "18", "ABO血型","标准值/单位"},new String[] { "19", "ABO血型","本次"},new String[] { "20", "ABO血型","上次"},new String[] { "21", "ABO血型","上上次"},
		new String[] { "22", "TSH","标准值/单位"},new String[] { "23", "TSH","本次"},new String[] { "24", "TSH","上次"},new String[] { "25", "TSH","上上次"},
		new String[] { "26", "FT4","标准值/单位"},new String[] { "27", "FT4","本次"},new String[] { "28", "FT4","上次"},new String[] { "29", "FT4","上上次"},
		new String[] { "30", "FT3","标准值/单位"},new String[] { "31", "FT3","本次"},new String[] { "32", "FT3","上次"},new String[] { "33", "FT3","上上次"},
		new String[] { "34", "胃蛋白酶原","标准值/单位"},new String[] { "35", "胃蛋白酶原","本次"},new String[] { "36", "胃蛋白酶原","上次"},new String[] { "37", "胃蛋白酶原","上上次"},
		new String[] { "38", "CK（CPK）","标准值/单位"},new String[] { "39", "CK（CPK）","本次"},new String[] { "40", "CK（CPK）","上次"},new String[] { "41", "CK（CPK）","上上次"},
		new String[] { "42", "咳痰细胞诊","标准值/单位"},new String[] { "43", "咳痰细胞诊","本次"},new String[] { "44", "咳痰细胞诊","上次"},new String[] { "45", "咳痰细胞诊","上上次"},
		new String[] { "46", "BNP","标准值/单位"},new String[] { "47", "BNP","本次"},new String[] { "48", "BNP","上次"},new String[] { "49", "BNP","上上次"},
		new String[] { "50", "QFT（判定）","标准值/单位"},new String[] { "51", "QFT（判定）","本次"},new String[] { "52", "QFT（判定）","上次"},new String[] { "53", "QFT（判定）","上上次"},
		new String[] { "54", "QFT（TB抗原）","标准值/单位"},new String[] { "55", "QFT（TB抗原）","本次"},new String[] { "56", "QFT（TB抗原）","上次"},new String[] { "57", "QFT（TB抗原）","上上次"},
		new String[] { "58", "HPV-DNA（HL）","标准值/单位"},new String[] { "59", "HPV-DNA（HL）","本次"},new String[] { "60", "HPV-DNA（HL）","上次"},new String[] { "61", "HPV-DNA（HL）","上上次"}
		);

	public BKDetailData_11() {}

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_11(Sheet sheet, String userid, String username, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_11 value(?,?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_11 where userid = ? and examdate= ? order by dispindex";
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
	public void saveDataDispToDb(String[] detaildata11){
		String userid = detaildata11[2];
		String historydate = detaildata11[1];
		this.check(userid,historydate);
		String insertsql = "insert into cdata_detail_11 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for(int i=0; i < detaildata11.length;i++){
			insertparams[0] = userid;
			insertparams[1] = detaildata11[0];
			insertparams[2] = historydate;
			insertparams[3] = 1;
			insertparams[4] = i;
			insertparams[5] = lableList.get(i)[1];
			insertparams[6] = lableList.get(i)[2];
			insertparams[7] = detaildata11[i];
			
			JdbcUtil.getInstance().executeUpdate(insertsql, insertparams);
		}	
	}
	
	/*
	 * 画面表示数据删除
	 */
	public void deleteData(String[] detaildata11){
		String userid = detaildata11[2];
		String historydate = detaildata11[1];
		
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		String delsql = "delete from cdata_detail_11 where userid = ? and examdate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
		
		String delsql2 = "delete from cdata_history where userid = ? and historydate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql2, params);
	}
	
	private void check(String userid, String date) {
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_11 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_11 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
	}
}
