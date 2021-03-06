package com.bwc.biz.emedicare.bkdetaildata;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.Sheet;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.servlets.BkImportInfoServlet;

/*
 * 明细数据第SHEET13
 */
public class BKDetailData_13 {
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
	    new int[] {3, 2 },new int[] {3, 4 },new int[] {3, 5 },new int[] {3, 9 },new int[] {3, 11 },new int[] {3, 12 },
		new int[] {4, 2 },new int[] {4, 4 },new int[] {4, 5 },new int[] {4, 9 },new int[] {4, 11 },new int[] {4, 12 },
		new int[] {5, 2 },new int[] {5, 4 },new int[] {5, 5 },new int[] {5, 9 },new int[] {5, 11 },new int[] {5, 12 },
		new int[] {6, 2 },new int[] {6, 4 },new int[] {6, 5 },new int[] {6, 9 },new int[] {6, 11 },new int[] {6, 12 },
		new int[] {7, 2 },new int[] {7, 4 },new int[] {7, 5 },new int[] {7, 9 },new int[] {7, 11 },new int[] {7, 12 },
		new int[] {8, 2 },new int[] {8, 4 },new int[] {8, 5 },new int[] {8, 9 },new int[] {8, 11 },new int[] {8, 12 },
		new int[] {9, 2 },new int[] {9, 4 },new int[] {9, 5 },new int[] {9, 9 },new int[] {9, 11 },new int[] {9, 12 },
		new int[] {10, 2 },new int[] {10, 4 },new int[] {10, 5 },new int[] {10, 9 },new int[] {10, 11 },new int[] {10, 12 },
		new int[] {11, 2 },new int[] {11, 4 },new int[] {11, 5 },new int[] {11, 9 },new int[] {11, 11 },new int[] {11, 12 },
		new int[] {12, 2 },new int[] {12, 4 },new int[] {12, 5 },new int[] {12, 9 },new int[] {12, 11 },new int[] {12, 12 },
		new int[] {13, 2 },new int[] {13, 4 },new int[] {13, 5 },new int[] {13, 9 },new int[] {13, 11 },new int[] {13, 12 },
		new int[] {14, 2 },new int[] {14, 4 },new int[] {14, 5 },new int[] {14, 9 },new int[] {14, 11 },new int[] {14, 12 },
		new int[] {15, 2 },new int[] {15, 4 },new int[] {15, 5 },new int[] {15, 9 },new int[] {15, 11 },new int[] {15, 12 },
		new int[] {16, 2 },new int[] {16, 4 },new int[] {16, 5 },new int[] {16, 9 },new int[] {16, 11 },new int[] {16, 12 },
		new int[] {17, 2 },new int[] {17, 4 },new int[] {17, 5 },new int[] {17, 9 },new int[] {17, 11 },new int[] {17, 12 },
		new int[] {18, 2 },new int[] {18, 4 },new int[] {18, 5 },new int[] {18, 9 },new int[] {18, 11 },new int[] {18, 12 },
		new int[] {19, 2 },new int[] {19, 4 },new int[] {19, 5 },new int[] {19, 9 },new int[] {19, 11 },new int[] {19, 12 },
		new int[] {20, 2 },new int[] {20, 4 },new int[] {20, 5 },new int[] {20, 9 },new int[] {20, 11 },new int[] {20, 12 },
		new int[] {21, 2 },new int[] {21, 4 },new int[] {21, 5 },new int[] {21, 9 },new int[] {21, 11 },new int[] {21, 12 },
		new int[] {22, 2 },new int[] {22, 4 },new int[] {22, 5 },new int[] {22, 9 },new int[] {22, 11 },new int[] {22, 12 },
		new int[] {23, 2 },new int[] {23, 4 },new int[] {23, 5 },new int[] {23, 9 },new int[] {23, 11 },new int[] {23, 12 },
		new int[] {24, 2 },new int[] {24, 4 },new int[] {24, 5 },new int[] {24, 9 },new int[] {24, 11 },new int[] {24, 12 },
		new int[] {25, 2 },new int[] {25, 4 },new int[] {25, 5 },new int[] {25, 9 },new int[] {25, 11 },new int[] {25, 12 },
		new int[] {26, 2 },new int[] {26, 4 },new int[] {26, 5 },new int[] {26, 9 },new int[] {26, 11 },new int[] {26, 12 },
		new int[] {27, 2 },new int[] {27, 4 },new int[] {27, 5 },new int[] {27, 9 },new int[] {27, 11 },new int[] {27, 12 },
		new int[] {28, 2 },new int[] {28, 4 },new int[] {28, 5 },new int[] {28, 9 },new int[] {28, 11 },new int[] {28, 12 },
		new int[] {29, 2 },new int[] {29, 4 },new int[] {29, 5 },new int[] {29, 9 },new int[] {29, 11 },new int[] {29, 12 },
		new int[] {30, 2 },new int[] {30, 4 },new int[] {30, 5 },new int[] {30, 9 },new int[] {30, 11 },new int[] {30, 12 },
		new int[] {31, 2 },new int[] {31, 4 },new int[] {31, 5 },new int[] {31, 9 },new int[] {31, 11 },new int[] {31, 12 },
		new int[] {32, 2 },new int[] {32, 4 },new int[] {32, 5 },new int[] {32, 9 },new int[] {32, 11 },new int[] {32, 12 },
		new int[] {33, 2 },new int[] {33, 4 },new int[] {33, 5 },new int[] {33, 9 },new int[] {33, 11 },new int[] {33, 12 },
		new int[] {34, 2 },new int[] {34, 4 },new int[] {34, 5 },new int[] {34, 9 },new int[] {34, 11 },new int[] {34, 12 },
		new int[] {35, 2 },new int[] {35, 4 },new int[] {35, 5 },new int[] {35, 9 },new int[] {35, 11 },new int[] {35, 12 },
		new int[] {36, 2 },new int[] {36, 4 },new int[] {36, 5 },new int[] {36, 9 },new int[] {36, 11 },new int[] {36, 12 },
		new int[] {37, 2 },new int[] {37, 4 },new int[] {37, 5 },new int[] {37, 9 },new int[] {37, 11 },new int[] {37, 12 },
		new int[] {38, 2 },new int[] {38, 4 },new int[] {38, 5 },new int[] {38, 9 },new int[] {38, 11 },new int[] {38, 12 },
		new int[] {39, 2 },new int[] {39, 4 },new int[] {39, 5 },new int[] {39, 9 },new int[] {39, 11 },new int[] {39, 12 },
		new int[] {40, 2 },new int[] {40, 4 },new int[] {40, 5 },new int[] {40, 9 },new int[] {40, 11 },new int[] {40, 12 },
		new int[] {41, 2 },new int[] {41, 4 },new int[] {41, 5 },new int[] {41, 9 },new int[] {41, 11 },new int[] {41, 12 },
		new int[] {42, 2 },new int[] {42, 4 },new int[] {42, 5 },new int[] {42, 9 },new int[] {42, 11 },new int[] {42, 12 },
		new int[] {43, 2 },new int[] {43, 4 },new int[] {43, 5 },new int[] {43, 9 },new int[] {43, 11 },new int[] {43, 12 },
		new int[] {44, 2 },new int[] {44, 4 },new int[] {44, 5 },new int[] {44, 9 },new int[] {44, 11 },new int[] {44, 12 },
		new int[] {45, 2 },new int[] {45, 4 },new int[] {45, 5 },new int[] {45, 9 },new int[] {45, 11 },new int[] {45, 12 },
		new int[] {46, 2 },new int[] {46, 4 },new int[] {46, 5 },new int[] {46, 9 },new int[] {46, 11 },new int[] {46, 12 },
		new int[] {47, 2 },new int[] {47, 4 },new int[] {47, 5 },new int[] {47, 9 },new int[] {47, 11 },new int[] {47, 12 },
		new int[] {48, 2 },new int[] {48, 4 },new int[] {48, 5 },new int[] {48, 9 },new int[] {48, 11 },new int[] {48, 12 },
		new int[] {49, 2 },new int[] {49, 4 },new int[] {49, 5 },new int[] {49, 9 },new int[] {49, 11 },new int[] {49, 12 },
		new int[] {50, 2 },new int[] {50, 4 },new int[] {50, 5 },new int[] {50, 9 },new int[] {50, 11 },new int[] {50, 12 },
		new int[] {51, 9 },new int[] {51, 11 },new int[] {51, 12 }
	    );
	
	private List<String[]> lableList = Arrays.asList(
		new String[] { "1", "B脂蛋白","结果"},new String[] { "2", "B脂蛋白","单位"},new String[] { "3", "B脂蛋白","基准值"},
		new String[] { "4", "FT4","结果"},new String[] { "5", "FT4","单位"},new String[] { "6", "FT4","基准值"},
		new String[] { "7", "CA19-9","结果"},new String[] { "8", "CA19-9","单位"},new String[] { "9", "CA19-9","基准值"},
		new String[] { "10", "FT3","结果"},new String[] { "11", "FT3","单位"},new String[] { "12", "FT3","基准值"},
		new String[] { "13", "便-血红蛋白（1）","结果"},new String[] { "14", "便-血红蛋白（1）","单位"},new String[] { "15", "便-血红蛋白（1）","基准值"},
		new String[] { "16", "甲状腺球蛋白AB","结果"},new String[] { "17", "甲状腺球蛋白AB","单位"},new String[] { "18", "甲状腺球蛋白AB","基准值"},
		new String[] { "19", "便-血红蛋白（2）","结果"},new String[] { "20", "便-血红蛋白（2）","单位"},new String[] { "21", "便-血红蛋白（2）","基准值"},
		new String[] { "22", "TPO抗体","结果"},new String[] { "23", "TPO抗体","单位"},new String[] { "24", "TPO抗体","基准值"},
		new String[] { "25", "胃蛋白酶原","结果"},new String[] { "26", "胃蛋白酶原","单位"},new String[] { "27", "胃蛋白酶原","基准值"},
		new String[] { "28", "CEA","结果"},new String[] { "29", "CEA","单位"},new String[] { "30", "CEA","基准值"},
		new String[] { "31", "PG1浓度","结果"},new String[] { "32", "PG1浓度","单位"},new String[] { "33", "PG1浓度","基准值"},
		new String[] { "34", "AFP","结果"},new String[] { "35", "AFP","单位"},new String[] { "36", "AFP","基准值"},
		new String[] { "37", "PG2浓度","结果"},new String[] { "38", "PG2浓度","单位"},new String[] { "39", "PG2浓度","基准值"},
		new String[] { "40", "PIVKA-2","结果"},new String[] { "41", "PIVKA-2","单位"},new String[] { "42", "PIVKA-2","基准值"},
		new String[] { "43", "PG1/PG2 比","结果"},new String[] { "44", "PG1/PG2 比","单位"},new String[] { "45", "PG1/PG2 比","基准值"},
		new String[] { "46", "CA15-3","结果"},new String[] { "47", "CA15-3","单位"},new String[] { "48", "CA15-3","基准值"},
		new String[] { "49", "判定","结果"},new String[] { "50", "判定","单位"},new String[] { "51", "判定","基准值"},
		new String[] { "52", "CA125","结果"},new String[] { "53", "CA125","单位"},new String[] { "54", "CA125","基准值"},
		new String[] { "55", "胃癌风险","结果"},new String[] { "56", "胃癌风险","单位"},new String[] { "57", "胃癌风险","基准值"},
		new String[] { "58", "CYFRA","结果"},new String[] { "59", "CYFRA","单位"},new String[] { "60", "CYFRA","基准值"},
		new String[] { "61", "幽门螺旋杆菌","结果"},new String[] { "62", "幽门螺旋杆菌","单位"},new String[] { "63", "幽门螺旋杆菌","基准值"},
		new String[] { "64", "CRP定量","结果"},new String[] { "65", "CRP定量","单位"},new String[] { "66", "CRP定量","基准值"},
		new String[] { "67", "判定","结果"},new String[] { "68", "判定","单位"},new String[] { "69", "判定","基准值"},
		new String[] { "70", "CRP测定值","结果"},new String[] { "71", "CRP测定值","单位"},new String[] { "72", "CRP测定值","基准值"},
		new String[] { "73", "结果","结果"},new String[] { "74", "结果","单位"},new String[] { "75", "结果","基准值"},
		new String[] { "76", "CRP判定","结果"},new String[] { "77", "CRP判定","单位"},new String[] { "78", "CRP判定","基准值"},
		new String[] { "79", "HPV-DNA-H","结果"},new String[] { "80", "HPV-DNA-H","单位"},new String[] { "81", "HPV-DNA-H","基准值"},
		new String[] { "82", "类风湿因子定量","结果"},new String[] { "83", "类风湿因子定量","单位"},new String[] { "84", "类风湿因子定量","基准值"},
		new String[] { "85", "血沉","结果"},new String[] { "86", "血沉","单位"},new String[] { "87", "血沉","基准值"},
		new String[] { "88", "TPLA定性","结果"},new String[] { "89", "TPLA定性","单位"},new String[] { "90", "TPLA定性","基准值"},
		new String[] { "91", "TP(总蛋白)","结果"},new String[] { "92", "TP(总蛋白)","单位"},new String[] { "93", "TP(总蛋白)","基准值"},
		new String[] { "94", "RPR定性","结果"},new String[] { "95", "RPR定性","单位"},new String[] { "96", "RPR定性","基准值"},
		new String[] { "97", "白蛋白","结果"},new String[] { "98", "白蛋白","单位"},new String[] { "99", "白蛋白","基准值"},
		new String[] { "100", "HBS抗原(精密)","结果"},new String[] { "101", "HBS抗原(精密)","单位"},new String[] { "102", "HBS抗原(精密)","基准值"},
		new String[] { "103", "A/G","结果"},new String[] { "104", "A/G","单位"},new String[] { "105", "A/G","基准值"},
		new String[] { "106", "判定","结果"},new String[] { "107", "判定","单位"},new String[] { "108", "判定","基准值"},
		new String[] { "109", "T-bil","结果"},new String[] { "110", "T-bil","单位"},new String[] { "111", "T-bil","基准值"},
		new String[] { "112", "浓度","结果"},new String[] { "113", "浓度","单位"},new String[] { "114", "浓度","基准值"},
		new String[] { "115", "TTT","结果"},new String[] { "116", "TTT","单位"},new String[] { "117", "TTT","基准值"},
		new String[] { "118", "HBS抗体(精密)","结果"},new String[] { "119", "HBS抗体(精密)","单位"},new String[] { "120", "HBS抗体(精密)","基准值"},
		new String[] { "121", "ZTT","结果"},new String[] { "122", "ZTT","单位"},new String[] { "123", "ZTT","基准值"},
		new String[] { "124", "判定","结果"},new String[] { "125", "判定","单位"},new String[] { "126", "判定","基准值"},
		new String[] { "127", "AST（GOT）","结果"},new String[] { "128", "AST（GOT）","单位"},new String[] { "129", "AST（GOT）","基准值"},
		new String[] { "130", "浓度","结果"},new String[] { "131", "浓度","单位"},new String[] { "132", "浓度","基准值"},
		new String[] { "133", "ALT（GPT）","结果"},new String[] { "134", "ALT（GPT）","单位"},new String[] { "135", "ALT（GPT）","基准值"},
		new String[] { "136", "HCV抗体","结果"},new String[] { "137", "HCV抗体","单位"},new String[] { "138", "HCV抗体","基准值"},
		new String[] { "139", "LDH","结果"},new String[] { "140", "LDH","单位"},new String[] { "141", "LDH","基准值"},
		new String[] { "142", "判定","结果"},new String[] { "143", "判定","单位"},new String[] { "144", "判定","基准值"},
		new String[] { "145", "ALP","结果"},new String[] { "146", "ALP","单位"},new String[] { "147", "ALP","基准值"},
		new String[] { "148", "C-IDX","结果"},new String[] { "149", "C-IDX","单位"},new String[] { "150", "C-IDX","基准值"},
		new String[] { "151", "GGTP","结果"},new String[] { "152", "GGTP","单位"},new String[] { "153", "GGTP","基准值"},
		new String[] { "154", "HIV-AG.AB","结果"},new String[] { "155", "HIV-AG.AB","单位"},new String[] { "156", "HIV-AG.AB","基准值"},
		new String[] { "157", "LAP","结果"},new String[] { "158", "LAP","单位"},new String[] { "159", "LAP","基准值"},
		new String[] { "160", "血型（ABO）","结果"},new String[] { "161", "血型（ABO）","单位"},new String[] { "162", "血型（ABO）","基准值"},
		new String[] { "163", "ChE","结果"},new String[] { "164", "ChE","单位"},new String[] { "165", "ChE","基准值"},
		new String[] { "166", "血型（Rh）","结果"},new String[] { "167", "血型（Rh）","单位"},new String[] { "168", "血型（Rh）","基准值"},
		new String[] { "169", "CK（CPK）","结果"},new String[] { "170", "CK（CPK）","单位"},new String[] { "171", "CK（CPK）","基准值"},
		new String[] { "172", "WBC","结果"},new String[] { "173", "WBC","单位"},new String[] { "174", "WBC","基准值"},
		new String[] { "175", "BNP","结果"},new String[] { "176", "BNP","单位"},new String[] { "177", "BNP","基准值"},
		new String[] { "178", "RBC","结果"},new String[] { "179", "RBC","单位"},new String[] { "180", "RBC","基准值"},
		new String[] { "181", "淀粉酶（血清）","结果"},new String[] { "182", "淀粉酶（血清）","单位"},new String[] { "183", "淀粉酶（血清）","基准值"},
		new String[] { "184", "血红蛋白","结果"},new String[] { "185", "血红蛋白","单位"},new String[] { "186", "血红蛋白","基准值"},
		new String[] { "187", "BUN","结果"},new String[] { "188", "BUN","单位"},new String[] { "189", "BUN","基准值"},
		new String[] { "190", "红细胞压积","结果"},new String[] { "191", "红细胞压积","单位"},new String[] { "192", "红细胞压积","基准值"},
		new String[] { "193", "肌酐","结果"},new String[] { "194", "肌酐","单位"},new String[] { "195", "肌酐","基准值"},
		new String[] { "196", "MCV","结果"},new String[] { "197", "MCV","单位"},new String[] { "198", "MCV","基准值"},
		new String[] { "199", "推算GFR","结果"},new String[] { "200", "推算GFR","单位"},new String[] { "201", "推算GFR","基准值"},
		new String[] { "202", "MCH","结果"},new String[] { "203", "MCH","单位"},new String[] { "204", "MCH","基准值"},
		new String[] { "205", "UA（尿酸）","结果"},new String[] { "206", "UA（尿酸）","单位"},new String[] { "207", "UA（尿酸）","基准值"},
		new String[] { "208", "MCHC","结果"},new String[] { "209", "MCHC","单位"},new String[] { "210", "MCHC","基准值"},
		new String[] { "211", "Na","结果"},new String[] { "212", "Na","单位"},new String[] { "213", "Na","基准值"},
		new String[] { "214", "血小板","结果"},new String[] { "215", "血小板","单位"},new String[] { "216", "血小板","基准值"},
		new String[] { "217", "K","结果"},new String[] { "218", "K","单位"},new String[] { "219", "K","基准值"},
		new String[] { "220", "血沉30分","结果"},new String[] { "221", "血沉30分","单位"},new String[] { "222", "血沉30分","基准值"},
		new String[] { "223", "Cl","结果"},new String[] { "224", "Cl","单位"},new String[] { "225", "Cl","基准值"},
		new String[] { "226", "血沉60分","结果"},new String[] { "227", "血沉60分","单位"},new String[] { "228", "血沉60分","基准值"},
		new String[] { "229", "Ca","结果"},new String[] { "230", "Ca","单位"},new String[] { "231", "Ca","基准值"},
		new String[] { "232", "血沉120分","结果"},new String[] { "233", "血沉120分","单位"},new String[] { "234", "血沉120分","基准值"},
		new String[] { "235", "MGS（镁）","结果"},new String[] { "236", "MGS（镁）","单位"},new String[] { "237", "MGS（镁）","基准值"},
		new String[] { "238", "尿蛋白（定性）","结果"},new String[] { "239", "尿蛋白（定性）","单位"},new String[] { "240", "尿蛋白（定性）","基准值"},
		new String[] { "241", "T-胆固醇","结果"},new String[] { "242", "T-胆固醇","单位"},new String[] { "243", "T-胆固醇","基准值"},
		new String[] { "244", "尿糖（定性）","结果"},new String[] { "245", "尿糖（定性）","单位"},new String[] { "246", "尿糖（定性）","基准值"},
		new String[] { "247", "TG","结果"},new String[] { "248", "TG","单位"},new String[] { "249", "TG","基准值"},
		new String[] { "250", "尿胆原","结果"},new String[] { "251", "尿胆原","单位"},new String[] { "252", "尿胆原","基准值"},
		new String[] { "253", "HDL胆固醇","结果"},new String[] { "254", "HDL胆固醇","单位"},new String[] { "255", "HDL胆固醇","基准值"},
		new String[] { "256", "尿PH","结果"},new String[] { "257", "尿PH","单位"},new String[] { "258", "尿PH","基准值"},
		new String[] { "259", "LDL胆固醇","结果"},new String[] { "260", "LDL胆固醇","单位"},new String[] { "261", "LDL胆固醇","基准值"},
		new String[] { "262", "尿潜血","结果"},new String[] { "263", "尿潜血","单位"},new String[] { "264", "尿潜血","基准值"},
		new String[] { "265", "HBA1C（NGSP）","结果"},new String[] { "266", "HBA1C（NGSP）","单位"},new String[] { "267", "HBA1C（NGSP）","基准值"},
		new String[] { "268", "尿比重","结果"},new String[] { "269", "尿比重","单位"},new String[] { "270", "尿比重","基准值"},
		new String[] { "271", "血糖（BS）","结果"},new String[] { "272", "血糖（BS）","单位"},new String[] { "273", "血糖（BS）","基准值"},
		new String[] { "274", "尿沉渣","结果"},new String[] { "275", "尿沉渣","单位"},new String[] { "276", "尿沉渣","基准值"},
		new String[] { "277", "胰岛素（IRI）","结果"},new String[] { "278", "胰岛素（IRI）","单位"},new String[] { "279", "胰岛素（IRI）","基准值"},
		new String[] { "280", "RBC","结果"},new String[] { "281", "RBC","单位"},new String[] { "282", "RBC","基准值"},
		new String[] { "283", "TSH","结果"},new String[] { "284", "TSH","单位"},new String[] { "285", "TSH","基准值"},
		new String[] { "286", "WBC","结果"},new String[] { "287", "WBC","单位"},new String[] { "288", "WBC","基准值"},
		new String[] { "289", "鳞状上皮","结果"},new String[] { "290", "鳞状上皮","单位"},new String[] { "291", "鳞状上皮","基准值"}
		);

	/*
	 * 数据导入用构造函数
	 */
	public BKDetailData_13(Sheet sheet, String userid, String date, String histno) {
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
		String insertSql = "insert into cdata_detail_13 value(?,?,?,?,?,?,?)";
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

		String dataSql = "select context from cdata_detail_13 where userid = ? and examdate= ? and historyno= ? order by dispindex";
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
		String insertsql = "insert into cdata_detail_13 value(?,?,?,?,?,?,?)";
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
