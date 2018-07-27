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
public class BKDetailData_08 {
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
		// 诊察所见
		new int[] {2, 2 },new int[] {2, 3 },new int[] {2, 4 },new int[] {2, 5 },
		new int[] {3, 3 },new int[] {3, 4 },new int[] {3, 5 },
		//身体测量
		new int[] {6, 2 },new int[] {6, 4 },new int[] {6, 5 },
		new int[] {7, 4 },new int[] {7, 5 },
		new int[] {8, 4 },new int[] {8, 5 },
		new int[] {9, 4 },new int[] {9, 5 },
		new int[] {10, 4 },new int[] {10, 5 },
		new int[] {11, 4 },new int[] {11, 5 },
		new int[] {12, 4 },new int[] {12, 5 },
		new int[] {13, 3 },new int[] {13, 4 },new int[] {13, 5 },
		new int[] {14, 1 },
		//血压
		new int[] {17, 2 },new int[] {17, 4 },new int[] {17, 5 },
		new int[] {18, 4 },new int[] {18, 5 },
		new int[] {19, 3 },new int[] {19, 4 },new int[] {19, 5 },
		new int[] {20, 1 },	
		//血压
		new int[] {23, 2 },new int[] {23, 4 },new int[] {23, 5 },
		new int[] {24, 4 },new int[] {24, 5 },
		new int[] {25, 3 },new int[] {25, 4 },new int[] {25, 5 },
		new int[] {26, 1 },	
		//听力
		new int[] {29, 2 },new int[] {29, 3 },new int[] {29, 4 },new int[] {29, 5 },
		new int[] {30, 3 },new int[] {30, 4 },new int[] {30, 5 },
		new int[] {31, 3 },new int[] {31, 4 },new int[] {31, 5 },
		new int[] {32, 3 },new int[] {32, 4 },new int[] {32, 5 },
		new int[] {33, 3 },new int[] {33, 4 },new int[] {33, 5 },
		new int[] {34, 1 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "乳房检查","判定"},
		new String[] { "2", "乳房检查","本次"},new String[] { "3", "乳房检查","上次"},new String[] { "4", "乳房检查","上上次"},
		new String[] { "5", "乳房检查","本次"},new String[] { "6", "乳房检查","上次"},new String[] { "7", "乳房检查","上上次"},
		new String[] { "8", "乳房检查","本次"},new String[] { "9", "乳房检查","上次"},new String[] { "10", "乳房检查","上上次"},
		new String[] { "11", "乳房检查","本次"},new String[] { "12", "乳房检查","上次"},new String[] { "13", "乳房检查","上上次"},
		new String[] { "14", "乳房检查","本次"},new String[] { "15", "乳房检查","上次"},new String[] { "16", "乳房检查","上上次"},
		new String[] { "17", "乳房检查","本次"},new String[] { "18", "乳房检查","上次"},new String[] { "19", "乳房检查","上上次"},
		new String[] { "20", "乳房检查","本次"},new String[] { "21", "乳房检查","上次"},new String[] { "22", "乳房检查","上上次"},
		new String[] { "23", "乳房检查","本次"},new String[] { "24", "乳房检查","上次"},new String[] { "25", "乳房检查","上上次"},
		new String[] { "26", "乳房检查","本次"},new String[] { "27", "乳房检查","上次"},new String[] { "28", "乳房检查","上上次"},
		new String[] { "29", "乳房检查","本次"},new String[] { "30", "乳房检查","上次"},new String[] { "31", "乳房检查","上上次"},
		new String[] { "32", "乳房检查","本次"},new String[] { "33", "乳房检查","上次"},new String[] { "34", "乳房检查","上上次"},
		new String[] { "35", "乳房检查","本次"},new String[] { "36", "乳房检查","上次"},new String[] { "37", "乳房检查","上上次"},
		new String[] { "38", "妇科检查","判定"},
		new String[] { "39", "妇科检查","本次"},new String[] { "40", "妇科检查","上次"},new String[] { "41", "妇科检查","上上次"},
		new String[] { "42", "妇科检查","本次"},new String[] { "43", "妇科检查","上次"},new String[] { "44", "妇科检查","上上次"},
		new String[] { "45", "妇科检查","本次"},new String[] { "46", "妇科检查","上次"},new String[] { "47", "妇科检查","上上次"},
		new String[] { "48", "妇科检查","本次"},new String[] { "49", "妇科检查","上次"},new String[] { "50", "妇科检查","上上次"},
		new String[] { "51", "妇科检查","本次"},new String[] { "52", "妇科检查","上次"},new String[] { "53", "妇科检查","上上次"},
		new String[] { "54", "妇科检查","本次"},new String[] { "55", "妇科检查","上次"},new String[] { "56", "妇科检查","上上次"},
		new String[] { "57", "妇科检查","本次"},new String[] { "58", "妇科检查","上次"},new String[] { "59", "妇科检查","上上次"},
		new String[] { "60", "妇科检查","本次"},new String[] { "61", "妇科检查","上次"},new String[] { "62", "妇科检查","上上次"},
		new String[] { "63", "妇科检查","本次"},new String[] { "64", "妇科检查","上次"},new String[] { "65", "妇科检查","上上次"},
		new String[] { "66", "妇科检查","本次"},new String[] { "67", "妇科检查","上次"},new String[] { "68", "妇科检查","上上次"},
		new String[] { "69", "妇科检查","本次"},new String[] { "70", "妇科检查","上次"},new String[] { "71", "妇科检查","上上次"},
		new String[] { "72", "妇科检查","本次"},new String[] { "73", "妇科检查","上次"},new String[] { "74", "妇科检查","上上次"}
		);
	
	public BKDetailData_08() {}

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_08(Sheet sheet, String userid, String username, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_08 value(?,?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_08 where userid = ? and examdate= ? order by dispindex";
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
	public void saveDataDispToDb(String[] detaildata02){
		String userid = detaildata02[2];
		String historydate = detaildata02[1];
		this.check(userid,historydate);
		String insertsql = "insert into cdata_detail_08 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for(int i=0; i < detaildata02.length;i++){
			insertparams[0] = userid;
			insertparams[1] = detaildata02[0];
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
	public void deleteData(String[] detaildata02){
		String userid = detaildata02[2];
		String historydate = detaildata02[1];
		
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		String delsql = "delete from cdata_detail_08 where userid = ? and examdate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
		
		String delsql2 = "delete from cdata_history where userid = ? and historydate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql2, params);
	}
	
	private void check(String userid, String date) {
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_08 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_08 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
	}
}
