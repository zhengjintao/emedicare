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
public class BKDetailData_01 {
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
		new int[] {3, 2 },
		new int[] {3, 8 },
		new int[] {4, 2 },
		new int[] {4, 5 },
		new int[] {4, 8 },
		new int[] {8, 4 },
		new int[] {9, 4 },
		new int[] {10, 4 },
		new int[] {11, 4 },
		new int[] {12, 4 },
		new int[] {13, 4 },
		new int[] {14, 4 },
		new int[] {15, 4 },
		new int[] {16, 4 },
		new int[] {17, 4 },
		new int[] {18, 4 },
		new int[] {19, 4 },
		new int[] {8, 6 },
		new int[] {15, 6 },
		new int[] {20, 6 },
		new int[] {23, 1 },
		new int[] {32, 3 },
		new int[] {32, 8 },
		new int[] {33, 3 },
		new int[] {33, 8 });
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "姓名：","姓名："},
		new String[] { "2", "检查日：","检查日："},
		new String[] { "3", "ID：","ID："},
		new String[] { "4", "年齡：","年齡："},
		new String[] { "5", "性別：","性別："},
		new String[] { "6", "饮食","饮食速度"},
		new String[] { "7", "饮食","不吃早饭（3次以上）"},
		new String[] { "8", "饮食","晚餐就餐晚"},
		new String[] { "9", "饮食","吃夜宵"},
		new String[] { "10", "运动","运动"},
		new String[] { "11", "运动","在实行身体活动计划"},
		new String[] { "12", "运动","步行速度快"},
		new String[] { "13", "饮酒","频度"},
		new String[] { "14", "饮酒","饮酒量"},
		new String[] { "15", "吸烟","烟龄"},
		new String[] { "16", "睡眠","睡眠是否充足"},
		new String[] { "17", "精神压力焦虑感","常有压力感"},
		new String[] { "18", "自觉症状","自觉症状"},
		new String[] { "19", "既往史•现病史","既往史•现病史"},
		new String[] { "20", "检查状态","检查状态"},
		new String[] { "21", "对于改善生活习惯的建议","对于改善生活习惯的建议"},
		new String[] { "22", "服用高血压药历","服用高血压药历"},
		new String[] { "23", "服用脂质代谢异常症药历","服用脂质代谢异常症药历"},
		new String[] { "24", "服用糖尿病药历","服用糖尿病药历"},
		new String[] { "25", "吸烟经历","吸烟经历"}
		);
	
	public BKDetailData_01() {}

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_01(Sheet sheet, String userid, String username, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_01 value(?,?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_01 where userid = ? and examdate= ? order by dispindex";
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
	public void saveDataDispToDb(String[] detaildata01){
		String userid = detaildata01[2];
		String historydate = detaildata01[1];
		this.check(userid,historydate);
		String insertsql = "insert into cdata_detail_01 value(?,?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[8];
		for(int i=0; i < detaildata01.length;i++){
			insertparams[0] = userid;
			insertparams[1] = detaildata01[0];
			insertparams[2] = historydate;
			insertparams[3] = 1;
			insertparams[4] = i;
			insertparams[5] = lableList.get(i)[1];
			insertparams[6] = lableList.get(i)[2];
			insertparams[7] = detaildata01[i];
			
			JdbcUtil.getInstance().executeUpdate(insertsql, insertparams);
		}	
	}
	
	/*
	 * 画面表示数据删除
	 */
	public void deleteData(String[] detaildata01){
		String userid = detaildata01[2];
		String historydate = detaildata01[1];
		
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		String delsql = "delete from cdata_detail_01 where userid = ? and examdate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
		
		String delsql2 = "delete from cdata_history where userid = ? and historydate = ?";
		JdbcUtil.getInstance().executeUpdate(delsql2, params);
	}
	
	private void check(String userid, String date) {
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= date;
		
		String checksql = "select * from cdata_detail_01 where userid = ? and examdate = ?";
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(checksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "delete from cdata_detail_01 where userid = ? and examdate = ?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
	}
}
