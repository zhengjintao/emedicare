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
public class BKDetailData_04 {
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
		// 胸部X线检查
		new int[] {2,2},
		new int[] {3,3},new int[] {3,4},
		new int[] {7,3},new int[] {7,4},new int[] {7,5},new int[] {7,6},
		//脂质
		new int[] {11,2},new int[] {11,5},new int[] {11,7},
		new int[] {12,5},new int[] {12,7},
		new int[] {13,5},new int[] {13,7},
		new int[] {14,5},new int[] {14,7},
		new int[] {15,3},new int[] {15,5},new int[] {15,7},
		new int[] {16,1},
		//肝功能检查
		new int[] {19,2},new int[] {19,5},new int[] {19,7},
		new int[] {20,5},new int[] {20,7},
		new int[] {21,5},new int[] {21,7},
		new int[] {22,5},new int[] {22,7},
		new int[] {23,5},new int[] {23,7},
		new int[] {24,5},new int[] {24,7},
		new int[] {25,5},new int[] {25,7},
		new int[] {26,5},new int[] {26,7},
		new int[] {27,5},new int[] {27,7},
		new int[] {28,5},new int[] {28,7},
		new int[] {29,5},new int[] {29,7},
		new int[] {30,5},new int[] {30,7},
		new int[] {31,5},new int[] {31,7},
		new int[] {32,1}
	    );
	
	private List<String[]> lableList = Arrays.asList();
	
	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_04(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_04 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_04 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_04 value(?,?,?,?,?,?,?)";
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
