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
public class BKDetailData_19 {
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
		new int[] {8, 2 },
		new int[] {10, 3 },
		new int[] {11, 3 },
		new int[] {12, 3 },
		new int[] {13, 2 },new int[] {13, 4 },
		new int[] {16, 2 },
		new int[] {17, 2 },
		new int[] {18, 2 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "ID","ID"},
		new String[] { "2", "检查日期","检查日期"},
		new String[] { "3", "姓名","姓名"},
		new String[] { "4", "检查部位","检查部位"},
		new String[] { "5", "出生日期","出生日期"},
		new String[] { "6", "年龄/性别","年龄/性别"},
		new String[] { "7", "测定部位：","腰椎L.234"},
		new String[] { "8", "你的骨密度是 /ｃ㎡","你的骨密度是 /ｃ㎡"},
		new String[] { "9", "与年轻人的比较值为 ％","与年轻人的比较值为 ％"},
		new String[] { "10", "与同龄的比较值为 ％","与同龄的比较值为 ％"},
		new String[] { "11", "骨面积：","骨面积："},new String[] { "12", "骨盐量：","骨盐量："},
		new String[] { "13", "骨密度判定","骨密度判定"},
		new String[] { "14", "解说","解说"},
		new String[] { "15", "解说","解说"}
		);

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_19(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_19 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_19 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_19 value(?,?,?,?,?,?,?)";
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