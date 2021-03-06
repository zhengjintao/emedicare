package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET11
 */
public class BKDetailData_11 {
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
		new int[] {4, 2 },
		new int[] {4, 5 },new int[] {4, 7 },new int[] {4, 8 },new int[] {4, 9 },
		new int[] {5, 5 },new int[] {5, 7 },new int[] {5, 8 },new int[] {5, 9 },
		new int[] {6, 5 },new int[] {6, 7 },new int[] {6, 8 },new int[] {6, 9 },
		new int[] {7, 5 },new int[] {7, 7 },new int[] {7, 8 },new int[] {7, 9 },
		new int[] {8, 5 },new int[] {8, 7 },new int[] {8, 8 },new int[] {8, 9 },
		new int[] {9, 5 },new int[] {9, 7 },new int[] {9, 8 },new int[] {9, 9 },
		new int[] {10, 5 },new int[] {10, 7 },new int[] {10, 8 },new int[] {10, 9 },
		new int[] {11, 5 },new int[] {11, 7 },new int[] {11, 8 },new int[] {11, 9 },
		new int[] {12, 5 },new int[] {12, 7 },new int[] {12, 8 },new int[] {12, 9 },
		new int[] {13, 5 },new int[] {13, 7 },new int[] {13, 8 },new int[] {13, 9 },
		new int[] {14, 5 },new int[] {14, 7 },new int[] {14, 8 },new int[] {14, 9 },
		new int[] {15, 5 },new int[] {15, 7 },new int[] {15, 8 },new int[] {15, 9 },
		new int[] {16, 5 },new int[] {16, 7 },new int[] {16, 8 },new int[] {16, 9 },
		new int[] {17, 5 },new int[] {17, 7 },new int[] {17, 8 },new int[] {17, 9 },
		new int[] {18, 5 },new int[] {18, 7 },new int[] {18, 8 },new int[] {18, 9 }
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

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_11(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_11 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_11 where userid = ? and examdate= ? and historyno= ? order by dispindex";
		Object[] params = new Object[3];
		params[0] = userid;
		params[1] = historydate;
		params[2] = historyno;

		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(dataSql, params);

		if (dataList.size() > 0) {
			for (Object data : dataList) {
				Map<String, Object> row = (Map<String, Object>) data;
				detailDataList.add(row.get("context") ==null ? "" : row.get("context").toString());
			}
		}

		return detailDataList;
	}
	
	/*
	 * 画面表示数据更新保存
	 */
	public void saveDataDispToDb(String[] detaildata){
		String insertsql = "insert into cdata_detail_11 value(?,?,?,?,?,?,?)";
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
