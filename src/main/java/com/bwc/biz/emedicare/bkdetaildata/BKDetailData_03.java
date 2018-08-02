package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET3
 */
public class BKDetailData_03 {
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
		// 尿常规检查
		new int[] {2,2},new int[] {2,4},new int[] {2,5},new int[] {2,6},new int[] {2,7},
		new int[] {3,4},new int[] {3,5},new int[] {3,6},new int[] {3,7},
		new int[] {4,4},new int[] {4,5},new int[] {4,6},new int[] {4,7},
		new int[] {5,4},new int[] {5,5},new int[] {5,6},new int[] {5,7},
		new int[] {6,4},new int[] {6,5},new int[] {6,6},new int[] {6,7},
		new int[] {7,4},new int[] {7,5},new int[] {7,6},new int[] {7,7},
		//尿沉渣检查
		new int[] {8,2},new int[] {8,4},new int[] {8,5},new int[] {8,6},new int[] {8,7},
		new int[] {9,4},new int[] {9,5},new int[] {9,6},new int[] {9,7},
		new int[] {10,4},new int[] {10,5},new int[] {10,6},new int[] {10,7},
		new int[] {11,4},new int[] {11,5},new int[] {11,6},new int[] {11,7},
		//肾
		new int[] {12,2},new int[] {12,4},new int[] {12,5},new int[] {12,6},new int[] {12,7},
		new int[] {13,4},new int[] {13,5},new int[] {13,6},new int[] {13,7},
		new int[] {14,4},new int[] {14,5},new int[] {14,6},new int[] {14,7},
		new int[] {15,4},new int[] {15,5},new int[] {15,6},new int[] {15,7},
		new int[] {16,4},new int[] {16,5},new int[] {16,6},new int[] {16,7},
		new int[] {17,4},new int[] {17,5},new int[] {17,6},new int[] {17,7},
		new int[] {18,4},new int[] {18,5},new int[] {18,6},new int[] {18,7},
		new int[] {19,3},new int[] {19,4},new int[] {19,5},new int[] {19,6},new int[] {19,7},
		new int[] {20,1},

		//血常规
		new int[] {24,2},new int[] {24,4},new int[] {24,5},new int[] {24,6},new int[] {24,7},
		new int[] {25,4},new int[] {25,5},new int[] {25,6},new int[] {25,7},
		new int[] {26,4},new int[] {26,5},new int[] {26,6},new int[] {26,7},
		new int[] {27,4},new int[] {27,5},new int[] {27,6},new int[] {27,7},
		new int[] {28,4},new int[] {28,5},new int[] {28,6},new int[] {28,7},
		new int[] {29,4},new int[] {29,5},new int[] {29,6},new int[] {29,7},
		new int[] {30,4},new int[] {30,5},new int[] {30,6},new int[] {30,7},
		new int[] {31,4},new int[] {31,5},new int[] {31,6},new int[] {31,7},
		new int[] {32,1}
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "尿常规检查","判定"},new String[] { "2", "尿糖（定性）","标准值/单位"},new String[] { "3", "尿糖（定性）","本次"},new String[] { "4", "尿糖（定性）","上次"},new String[] { "5", "尿糖（定性）","上上次"},
		new String[] { "6", "尿蛋白（定性）","标准值/单位"},new String[] { "7", "尿蛋白（定性）","本次"},new String[] { "8", "尿蛋白（定性）","上次"},new String[] { "9", "尿蛋白（定性）","上上次"},
		new String[] { "10", "尿胆原","标准值/单位"},new String[] { "11", "尿胆原","本次"},new String[] { "12", "尿胆原","上次"},new String[] { "13", "尿胆原","上上次"},
		new String[] { "14", "尿PH","标准值/单位"},new String[] { "15", "尿PH","本次"},new String[] { "16", "尿PH","上次"},new String[] { "17", "尿PH","上上次"},
		new String[] { "18", "尿潜血","标准值/单位"},new String[] { "19", "尿潜血","本次"},new String[] { "20", "尿潜血","上次"},new String[] { "21", "尿潜血","上上次"},
		new String[] { "22", "尿比重","标准值/单位"},new String[] { "23", "尿比重","本次"},new String[] { "24", "尿比重","上次"},new String[] { "25", "尿比重","上上次"},
		
		new String[] { "26", "尿沉渣检查","判定"},new String[] { "27", "尿沉渣白细胞","标准值/单位"},new String[] { "28", "尿沉渣白细胞","本次"},new String[] { "29", "尿沉渣白细胞","上次"},new String[] { "30", "尿沉渣白细胞","上上次"},
		new String[] { "31", "尿沉渣红细胞","标准值/单位"},new String[] { "32", "尿沉渣红细胞","本次"},new String[] { "33", "尿沉渣红细胞","上次"},new String[] { "34", "尿沉渣红细胞","上上次"},
		new String[] { "35", "尿沉渣（鳞状上皮）","标准值/单位"},new String[] { "36", "尿沉渣（鳞状上皮）","本次"},new String[] { "37", "尿沉渣（鳞状上皮）","上次"},new String[] { "38", "尿沉渣（鳞状上皮）","上上次"},
		new String[] { "39", "尿沉渣（肾小管上皮）","标准值/单位"},new String[] { "40", "尿沉渣（肾小管上皮）","本次"},new String[] { "41", "尿沉渣（肾小管上皮）","上次"},new String[] { "42", "尿沉渣（肾小管上皮）","上上次"}
		//TODO
		//暂时不要
		);

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_03(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_03 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_03 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_03 value(?,?,?,?,?,?,?)";
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
