package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET4
 */
public class BKDetailData_05 {
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
		// 糖尿病
		new int[] {2,2},new int[] {2,5},new int[] {2,7},new int[] {2,8},new int[] {2,9},
		new int[] {3,5},new int[] {3,7},new int[] {3,8},new int[] {3,9},
		new int[] {4,5},new int[] {4,7},new int[] {4,8},new int[] {4,9},
		new int[] {5,5},new int[] {5,7},new int[] {5,8},new int[] {5,9},
		new int[] {6,1},
		//痛风
		new int[] {9,2},new int[] {9,5},new int[] {9,7},new int[] {9,8},new int[] {9,9},
		new int[] {10,1},
		//心电图
		new int[] {13,2},new int[] {13,3},new int[] {13,5},new int[] {13,7},
		new int[] {14,2},new int[] {14,3},new int[] {14,5},new int[] {14,7},
		// 便
		new int[] {17,2},new int[] {17,5},new int[] {17,7},new int[] {17,8},new int[] {17,9},
		new int[] {18,5},new int[] {18,7},new int[] {18,8},new int[] {18,9},
		new int[] {19,1},
		// 眼底
		new int[] {22,2},new int[] {22,8},new int[] {22,9},
		new int[] {23,8},new int[] {23,9},
		new int[] {24,5},new int[] {24,7},new int[] {24,8},new int[] {24,9},
		new int[] {25,5},new int[] {25,7},new int[] {25,8},new int[] {25,9},
		new int[] {26,5},new int[] {26,7},new int[] {26,8},new int[] {26,9},
		new int[] {27,5},new int[] {27,7},new int[] {27,8},new int[] {27,9},
		new int[] {28,5},new int[] {28,7},new int[] {28,8},new int[] {28,9},
		new int[] {29,5},new int[] {29,7},new int[] {29,8},new int[] {29,9},
		// 眼压
		new int[] {30,2},new int[] {30,5},new int[] {30,7},new int[] {30,8},new int[] {30,9},
		new int[] {31,2},new int[] {31,5},new int[] {31,7},new int[] {31,8},new int[] {31,9}
	    );
	
	private List<String[]> lableList = Arrays.asList();
	
	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_05(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_05 value(?,?,?,?,?,?,?)";
		Object[] insertparams = new Object[7];
		for (int i = 0; i < indexList.size(); i++) {
			mainclass = "";
			subclass = "";
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

		String dataSql = "select context from cdata_detail_05 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_05 value(?,?,?,?,?,?,?)";
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
