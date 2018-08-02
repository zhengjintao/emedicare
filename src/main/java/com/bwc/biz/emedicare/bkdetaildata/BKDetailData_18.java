package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET18
 */
public class BKDetailData_18 {
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
			new int[] {2, 3 },new int[] {2, 10 },
			new int[] {3, 3 },new int[] {3, 10 },
			new int[] {4, 3 },new int[] {4, 10 },
			new int[] {24, 2 },new int[] {27, 2 },
			new int[] {32, 14 },
			new int[] {33, 8 },new int[] {33, 14 },
			new int[] {36, 3 },new int[] {37, 3 },
			new int[] {36, 8 },new int[] {36, 14 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
			new String[] { "1", "姓名","姓名"},new String[] { "2", "ID","ID"},
			new String[] { "3", "年龄","年龄"},new String[] { "4", "身高","身高"},
			new String[] { "5", "BMI","BMI"},new String[] { "6", "体重","体重"},
			new String[] { "7", "baPWV（cm/s）","值1"},new String[] { "8", "baPWV（cm/s）","值2"},
			new String[] { "9", "心率","心率"},
			new String[] { "10", "右臂","右臂"},new String[] { "11", "左臂","左臂"},
			new String[] { "12", "右臂","右臂"},new String[] { "13", "左臂","左臂"},
			new String[] { "14", "ABI","右足"},new String[] { "15", "ABI","左足"},
			new String[] { "16", "ABI","右脚腕"},new String[] { "17", "ABI","左脚腕"}
		);

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_18(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_18 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_18 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_18 value(?,?,?,?,?,?,?)";
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
