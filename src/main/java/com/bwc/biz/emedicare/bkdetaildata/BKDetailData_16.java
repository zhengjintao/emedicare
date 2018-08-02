package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET16
 */
public class BKDetailData_16 {
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
		new int[] {2, 2 },new int[] {2, 6 },
		new int[] {3, 2 },new int[] {3, 6 },
		new int[] {4, 2 },new int[] {4, 6 },
		//检查项目
		new int[] {8, 2 },new int[] {8, 4 },
		new int[] {9, 2 },new int[] {9, 4 },
		new int[] {10, 2 },new int[] {10, 4 },
		new int[] {11, 2 },new int[] {11, 4 },
		new int[] {12, 2 },new int[] {12, 4 },
		new int[] {13, 2 },new int[] {13, 4 },
		new int[] {14, 2 },new int[] {14, 4 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
			new String[] { "1", "ID","ID"},new String[] { "2", "检查日期","检查日期"},
			new String[] { "3", "姓名","姓名"},new String[] { "4", "报告日期","报告日期"},
			new String[] { "5", "担任医生","担任医生"},new String[] { "6", "年龄/性别","年龄/性别"},
			new String[] { "7", "AFP","检查结果"},new String[] { "8", "AFP","基准值"},
			new String[] { "9", "PIVKA-II","检查结果"},new String[] { "10", "PIVKA-II","基准值"},
			new String[] { "11", "CEA","检查结果"},new String[] { "12", "CEA","基准值"},
			new String[] { "13", "CA19-9","检查结果"},new String[] { "14", "CA19-9","基准值"},
			new String[] { "15", "CA15-3","检查结果"},new String[] { "16", "CA15-3","基准值"},
			new String[] { "17", "CA125","检查结果"},new String[] { "18", "CA125","基准值"},
			new String[] { "19", "CYFRA","检查结果"},new String[] { "20", "CYFRA","基准值"}
		);

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_16(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_16 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_16 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_16 value(?,?,?,?,?,?,?)";
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
