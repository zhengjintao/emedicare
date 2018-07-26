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
public class BKDetailData_10 {
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
		// 胸部CT
		new int[] {2, 2 },new int[] {2, 3 },new int[] {2, 4 },new int[] {2, 5 },
		new int[] {3, 3 },new int[] {3, 4 },new int[] {3, 5 },
		new int[] {4, 3 },new int[] {4, 4 },new int[] {4, 5 },
		new int[] {5, 3 },new int[] {5, 4 },new int[] {5, 5 },
		// 腹部CT
		new int[] {8, 2 },new int[] {8, 3 },new int[] {8, 4 },new int[] {8, 5 },
		new int[] {9, 3 },new int[] {9, 4 },new int[] {9, 5 },
		new int[] {10, 3 },new int[] {10, 4 },new int[] {10, 5 },
		new int[] {11, 3 },new int[] {11, 4 },new int[] {11, 5 },
		// MRI/MRA
		new int[] {14, 2 },new int[] {14, 3 },new int[] {14, 4 },new int[] {14, 5 },
		new int[] {15, 3 },new int[] {15, 4 },new int[] {15, 5 },
		new int[] {16, 3 },new int[] {16, 4 },new int[] {16, 5 },
		new int[] {17, 3 },new int[] {17, 4 },new int[] {17, 5 },
		// 颈部超声
		new int[] {21, 2 },new int[] {21, 3 },new int[] {21, 4 },new int[] {21, 5 },
		new int[] {22, 3 },new int[] {22, 4 },new int[] {22, 5 },
		new int[] {23, 3 },new int[] {23, 4 },new int[] {23, 5 },
		new int[] {24, 3 },new int[] {24, 4 },new int[] {24, 5 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "胸部CT","判定"},new String[] { "2", "胸部CT","本次"},new String[] { "3", "胸部CT","上次"},new String[] { "4", "胸部CT","上上次"},
		new String[] { "5", "胸部CT","本次"},new String[] { "6", "胸部CT","上次"},new String[] { "7", "胸部CT","上上次"},
		new String[] { "8", "胸部CT","本次"},new String[] { "9", "胸部CT","上次"},new String[] { "10", "胸部CT","上上次"},
		new String[] { "11", "胸部CT","本次"},new String[] { "12", "胸部CT","上次"},new String[] { "13", "胸部CT","上上次"},
		new String[] { "14", "腹部CT","判定"},new String[] { "15", "腹部CT","本次"},new String[] { "16", "腹部CT","上次"},new String[] { "17", "腹部CT","上上次"},
		new String[] { "18", "腹部CT","本次"},new String[] { "19", "腹部CT","上次"},new String[] { "20", "腹部CT","上上次"},
		new String[] { "21", "腹部CT","本次"},new String[] { "22", "腹部CT","上次"},new String[] { "23", "腹部CT","上上次"},
		new String[] { "24", "腹部CT","本次"},new String[] { "25", "腹部CT","上次"},new String[] { "26", "腹部CT","上上次"},
		new String[] { "27", "MRI/MRA","判定"},new String[] { "28", "MRI/MRA","本次"},new String[] { "29", "MRI/MRA","上次"},new String[] { "30", "MRI/MRA","上上次"},
		new String[] { "31", "MRI/MRA","本次"},new String[] { "32", "MRI/MRA","上次"},new String[] { "33", "MRI/MRA","上上次"},
		new String[] { "34", "MRI/MRA","本次"},new String[] { "35", "MRI/MRA","上次"},new String[] { "36", "MRI/MRA","上上次"},
		new String[] { "37", "MRI/MRA","本次"},new String[] { "38", "MRI/MRA","上次"},new String[] { "39", "MRI/MRA","上上次"},
		new String[] { "40", "颈部超声","判定"},new String[] { "41", "颈部超声","本次"},new String[] { "42", "颈部超声","上次"},new String[] { "43", "颈部超声","上上次"},
		new String[] { "44", "颈部超声","本次"},new String[] { "45", "颈部超声","上次"},new String[] { "46", "颈部超声","上上次"},
		new String[] { "47", "颈部超声","本次"},new String[] { "48", "颈部超声","上次"},new String[] { "49", "颈部超声","上上次"},
		new String[] { "50", "颈部超声","本次"},new String[] { "51", "颈部超声","上次"},new String[] { "52", "颈部超声","上上次"}
		);

	public BKDetailData_10() {}

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_10(Sheet sheet, String userid, String username, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_10 value(?,?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_10 where userid = ? and examdate= ? order by dispindex";
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
	public void saveDataDispToDb(String[] detaildata10){
		String userid = detaildata10[2];
		String historydate = detaildata10[1];
		this.check(userid,historydate);
		String insertsql = "insert into cdata_detail_10 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for(int i=0; i < detaildata10.length;i++){
			insertparams[0] = userid;
			insertparams[1] = detaildata10[0];
			insertparams[2] = historydate;
			insertparams[3] = 1;
			insertparams[4] = i;
			insertparams[5] = lableList.get(i)[1];
			insertparams[6] = lableList.get(i)[2];
			insertparams[7] = detaildata10[i];
			
			JdbcUtil.getInstance().executeUpdate(insertsql, insertparams);
		}	
	}
	
	/*
	 * 画面表示数据删除
	 */
	public void deleteData(String[] detaildata10){
		String userid = detaildata10[2];
		String historydate = detaildata10[1];
		
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		String delsql = "delete from cdata_detail_10 where userid = ? and examdate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
		
		String delsql2 = "delete from cdata_history where userid = ? and historydate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql2, params);
	}
	
	private void check(String userid, String date) {
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_10 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_10 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
	}
}
