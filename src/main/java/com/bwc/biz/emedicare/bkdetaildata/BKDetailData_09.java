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
public class BKDetailData_09 {
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
		// 肿瘤标志物
		new int[] {2, 2 },new int[] {2, 4 },new int[] {2, 5 },new int[] {2, 6 },new int[] {2, 7 },
		new int[] {3, 4 },new int[] {3, 5 },new int[] {3, 6 },new int[] {3, 7 },
		new int[] {4, 4 },new int[] {4, 5 },new int[] {4, 6 },new int[] {4, 7 },
		new int[] {5, 4 },new int[] {5, 5 },new int[] {5, 6 },new int[] {5, 7 },
		new int[] {6, 4 },new int[] {6, 5 },new int[] {6, 6 },new int[] {6, 7 },
		new int[] {7, 4 },new int[] {7, 5 },new int[] {7, 6 },new int[] {7, 7 },
		new int[] {8, 4 },new int[] {8, 5 },new int[] {8, 6 },new int[] {8, 7 },
		// ABI/PWV
		new int[] {11, 2 },new int[] {11, 4 },new int[] {11, 5 },new int[] {11, 6 },new int[] {11, 7 },
		new int[] {12, 4 },new int[] {12, 5 },new int[] {12, 6 },new int[] {12, 7 },
		new int[] {13, 4 },new int[] {13, 5 },new int[] {13, 6 },new int[] {13, 7 },
		new int[] {14, 4 },new int[] {14, 5 },new int[] {14, 6 },new int[] {14, 7 },
		// 甲状腺超声
		new int[] {17, 2 },new int[] {17, 3 },new int[] {17, 4 },new int[] {17, 5 },
		// 骨密度
		new int[] {20, 2 },new int[] {20, 3 },new int[] {20, 4 },new int[] {20, 5 },
		new int[] {21, 3 },new int[] {21, 4 },new int[] {21, 5 },
		new int[] {22, 3 },new int[] {22, 4 },new int[] {22, 5 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "肿瘤标志物","判定"},
		new String[] { "2", "AFP","标准值/单位"},new String[] { "3", "AFP","本次"},new String[] { "4", "AFP","上次"},new String[] { "5", "AFP","上上次"},
		new String[] { "6", "PIVKA-II","标准值/单位"},new String[] { "7", "PIVKA-II","本次"},new String[] { "8", "PIVKA-II","上次"},new String[] { "9", "PIVKA-II","上上次"},
		new String[] { "10", "CEA","标准值/单位"},new String[] { "11", "CEA","本次"},new String[] { "12", "CEA","上次"},new String[] { "13", "CEA","上上次"},
		new String[] { "14", "CA19-9","标准值/单位"},new String[] { "15", "CA19-9","本次"},new String[] { "16", "CA19-9","上次"},new String[] { "17", "CA19-9","上上次"},
		new String[] { "18", "CA15-3","标准值/单位"},new String[] { "19", "CA15-3","本次"},new String[] { "20", "CA15-3","上次"},new String[] { "21", "CA15-3","上上次"},
		new String[] { "22", "CA125","标准值/单位"},new String[] { "23", "CA125","本次"},new String[] { "24", "CA125","上次"},new String[] { "25", "CA125","上上次"},
		new String[] { "26", "CYFRA","标准值/单位"},new String[] { "27", "CYFRA","本次"},new String[] { "28", "CYFRA","上次"},new String[] { "29", "CYFRA","上上次"},
		new String[] { "30", "ABI/PWV","判定"},
		new String[] { "31", "ABI 右","标准值/单位"},new String[] { "32", "ABI 右","本次"},new String[] { "33", "ABI 右","上次"},new String[] { "34", "ABI 右","上上次"},
		new String[] { "35", "ABI 左","标准值/单位"},new String[] { "36", "ABI 左","本次"},new String[] { "37", "ABI 左","上次"},new String[] { "38", "ABI 左","上上次"},
		new String[] { "39", "baPWV 右","标准值/单位"},new String[] { "40", "baPWV 右","本次"},new String[] { "41", "baPWV 右","上次"},new String[] { "42", "baPWV 右","上上次"},
		new String[] { "43", "baPWV 左","标准值/单位"},new String[] { "44", "baPWV 左","本次"},new String[] { "45", "baPWV 左","上次"},new String[] { "46", "baPWV 左","上上次"},
		new String[] { "47", "甲状腺超声","判定"},
		new String[] { "48", "甲状腺超声","本次"},new String[] { "49", "甲状腺超声","上次"},new String[] { "50", "甲状腺超声","上上次"},
		new String[] { "51", "骨密度","判定"},
		new String[] { "52", "骨密度","本次"},new String[] { "53", "骨密度","上次"},new String[] { "54", "骨密度","上上次"},
		new String[] { "55", "骨密度","本次"},new String[] { "56", "骨密度","上次"},new String[] { "57", "骨密度","上上次"},
		new String[] { "58", "骨密度","本次"},new String[] { "59", "骨密度","上次"},new String[] { "60", "骨密度","上上次"}
		);

	public BKDetailData_09() {}

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_09(Sheet sheet, String userid, String username, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_09 value(?,?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_09 where userid = ? and examdate= ? order by dispindex";
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
	public void saveDataDispToDb(String[] detaildata09){
		String userid = detaildata09[2];
		String historydate = detaildata09[1];
		this.check(userid,historydate);
		String insertsql = "insert into cdata_detail_09 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for(int i=0; i < detaildata09.length;i++){
			insertparams[0] = userid;
			insertparams[1] = detaildata09[0];
			insertparams[2] = historydate;
			insertparams[3] = 1;
			insertparams[4] = i;
			insertparams[5] = lableList.get(i)[1];
			insertparams[6] = lableList.get(i)[2];
			insertparams[7] = detaildata09[i];
			
			JdbcUtil.getInstance().executeUpdate(insertsql, insertparams);
		}	
	}
	
	/*
	 * 画面表示数据删除
	 */
	public void deleteData(String[] detaildata09){
		String userid = detaildata09[2];
		String historydate = detaildata09[1];
		
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		String delsql = "delete from cdata_detail_09 where userid = ? and examdate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
		
		String delsql2 = "delete from cdata_history where userid = ? and historydate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql2, params);
	}
	
	private void check(String userid, String date) {
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_09 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_09 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
	}
}
