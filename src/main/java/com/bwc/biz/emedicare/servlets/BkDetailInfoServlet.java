package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_03;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_04;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_05;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_06;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_07;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_08;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_09;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_10;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_11;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_12;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_13;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_14;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_15;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_16;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_17;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_18;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_19;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_20;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_21;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_22;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_23;
import com.bwc.biz.emedicare.common.JdbcUtil;

/**
 * Servlet implementation class BkDetailInfoServlet
 */
public class BkDetailInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BkDetailInfoServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mode = request.getParameter("mode");
		
		String userid = request.getParameter("userid");
		String historydate = request.getParameter("historydate");
		String historyno = request.getParameter("historyno");
		String historyname = request.getParameter("historyname");
		
		// 回传画面参数
		request.setAttribute("userid", userid);
		request.setAttribute("historydate", historydate);
		request.setAttribute("historyno", historyno);
		request.setAttribute("historyname", historyname);
		
		if (mode.equals("init")) {
			// 画面表示用数据取得
			this.getDispData(request, userid, historydate,historyno);
			request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
		} else if (mode.equals("save")) {
			this.savedata(request, userid, request.getParameterValues("dt_01[]")[0], historyname, historydate);
			// 画面表示用数据取得
			this.getDispData(request, userid, historydate, historyno);
			request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
		} else if (mode.equals("delete")) {
			this.deletedata(userid, historydate, historyno);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/*
	 * 画面表示用数据取得
	 */
	private void getDispData(HttpServletRequest request, String userid, String historydate, String historyno) {
		// 健診結果報告書１数据取得
		BKDetailData_01 detaildata01 = new BKDetailData_01(null, userid, historydate, historyno);
		request.setAttribute("detailDataList01", detaildata01.getDateValue());
		// 健診結果報告書2数据取得
		BKDetailData_02 detaildata02 = new BKDetailData_02(null, userid, historydate, historyno);
		request.setAttribute("detailDataList02", detaildata02.getDateValue());
		// 健診結果報告書3数据取得
		BKDetailData_03 detaildata03 = new BKDetailData_03(null, userid, historydate, historyno);
		request.setAttribute("detailDataList03", detaildata03.getDateValue());
		// 健診結果報告書4数据取得
		BKDetailData_04 detaildata04 = new BKDetailData_04(null, userid, historydate, historyno);
		request.setAttribute("detailDataList04", detaildata04.getDateValue());
		// 健診結果報告書5数据取得
		BKDetailData_05 detaildata05 = new BKDetailData_05(null, userid, historydate, historyno);
		request.setAttribute("detailDataList05", detaildata05.getDateValue());
		// 健診結果報告書6数据取得
		BKDetailData_06 detaildata06 = new BKDetailData_06(null, userid, historydate, historyno);
		request.setAttribute("detailDataList06", detaildata06.getDateValue());
		// 健診結果報告書7数据取得
		BKDetailData_07 detaildata07 = new BKDetailData_07(null, userid, historydate, historyno);
		request.setAttribute("detailDataList07", detaildata07.getDateValue());
		// 健診結果報告書8数据取得
		BKDetailData_08 detaildata08 = new BKDetailData_08(null, userid, historydate, historyno);
		request.setAttribute("detailDataList08", detaildata08.getDateValue());
		// 健診結果報告書9数据取得
		BKDetailData_09 detaildata09 = new BKDetailData_09(null, userid, historydate, historyno);
		request.setAttribute("detailDataList09", detaildata09.getDateValue());
		// 健診結果報告書10数据取得
		BKDetailData_10 detaildata10 = new BKDetailData_10(null, userid, historydate, historyno);
		request.setAttribute("detailDataList10", detaildata10.getDateValue());
		// 健診結果報告書11数据取得
		BKDetailData_11 detaildata11 = new BKDetailData_11(null, userid, historydate, historyno);
		request.setAttribute("detailDataList11", detaildata11.getDateValue());
		// 健診結果報告書12数据取得
		BKDetailData_12 detaildata12 = new BKDetailData_12(null, userid, historydate, historyno);
		request.setAttribute("detailDataList12", detaildata12.getDateValue());
		// 健診結果報告書13数据取得
		BKDetailData_13 detaildata13 = new BKDetailData_13(null, userid, historydate, historyno);
		request.setAttribute("detailDataList13", detaildata13.getDateValue());
		// 健診結果報告書14数据取得
		BKDetailData_14 detaildata14 = new BKDetailData_14(null, userid, historydate, historyno);
		request.setAttribute("detailDataList14", detaildata14.getDateValue());
		// 健診結果報告書15数据取得
		BKDetailData_15 detaildata15 = new BKDetailData_15(null, userid, historydate, historyno);
		request.setAttribute("detailDataList15", detaildata15.getDateValue());
		// 健診結果報告書16数据取得
		BKDetailData_16 detaildata16 = new BKDetailData_16(null, userid, historydate, historyno);
		request.setAttribute("detailDataList16", detaildata16.getDateValue());
		// 健診結果報告書17数据取得
		BKDetailData_17 detaildata17 = new BKDetailData_17(null, userid, historydate, historyno);
		request.setAttribute("detailDataList17", detaildata17.getDateValue());
		// 健診結果報告書18数据取得
		BKDetailData_18 detaildata18 = new BKDetailData_18(null, userid, historydate, historyno);
		request.setAttribute("detailDataList18", detaildata18.getDateValue());
		// 健診結果報告書19数据取得
		BKDetailData_19 detaildata19 = new BKDetailData_19(null, userid, historydate, historyno);
		request.setAttribute("detailDataList19", detaildata19.getDateValue());
		// 健診結果報告書20数据取得
		BKDetailData_20 detaildata20 = new BKDetailData_20(null, userid, historydate, historyno);
		request.setAttribute("detailDataList20", detaildata20.getDateValue());
		// 健診結果報告書21数据取得
		BKDetailData_21 detaildata21 = new BKDetailData_21(null, userid, historydate, historyno);
		request.setAttribute("detailDataList21", detaildata21.getDateValue());
		// 健診結果報告書22数据取得
		BKDetailData_22 detaildata22 = new BKDetailData_22(null, userid, historydate, historyno);
		request.setAttribute("detailDataList22", detaildata22.getDateValue());
		// 健診結果報告書23数据取得
		BKDetailData_23 detaildata23 = new BKDetailData_23(null, userid, historydate, historyno);
		request.setAttribute("detailDataList23", detaildata23.getDateValue());
	}

	private void savedata(HttpServletRequest request,String userid,String username,String historyname,String historydate) {
		int historyno = this.saveHistoryDate(userid, historyname, historydate);
		// sheet01
		BKDetailData_01 data01 = new BKDetailData_01(null, userid, historydate, String.valueOf(historyno));
		data01.saveDataDispToDb(request.getParameterValues("dt_01[]"));

		// sheet02
		BKDetailData_02 data02 = new BKDetailData_02(null, userid, historydate, String.valueOf(historyno));
		data02.saveDataDispToDb(request.getParameterValues("dt_02[]"));
		// sheet03
		BKDetailData_03 data03 = new BKDetailData_03(null, userid, historydate, String.valueOf(historyno));
		data03.saveDataDispToDb(request.getParameterValues("dt_03[]"));
		// sheet04
		BKDetailData_04 data04 = new BKDetailData_04(null, userid, historydate, String.valueOf(historyno));
		data04.saveDataDispToDb(request.getParameterValues("dt_04[]"));
		// sheet05
		BKDetailData_05 data05 = new BKDetailData_05(null, userid, historydate, String.valueOf(historyno));
		data05.saveDataDispToDb(request.getParameterValues("dt_05[]"));
		// sheet06
		BKDetailData_06 data06 = new BKDetailData_06(null, userid, historydate, String.valueOf(historyno));
		data06.saveDataDispToDb(request.getParameterValues("dt_06[]"));
		// sheet07
		BKDetailData_07 data07 = new BKDetailData_07(null, userid, historydate, String.valueOf(historyno));
		data07.saveDataDispToDb(request.getParameterValues("dt_07[]"));
		// sheet08
		BKDetailData_08 data08 = new BKDetailData_08(null, userid, historydate, String.valueOf(historyno));
		data08.saveDataDispToDb(request.getParameterValues("dt_08[]"));
		// sheet09
		BKDetailData_09 data09 = new BKDetailData_09(null, userid, historydate, String.valueOf(historyno));
		data09.saveDataDispToDb(request.getParameterValues("dt_09[]"));
		// sheet10
		BKDetailData_10 data10 = new BKDetailData_10(null, userid, historydate, String.valueOf(historyno));
		data10.saveDataDispToDb(request.getParameterValues("dt_10[]"));
		// sheet11
		BKDetailData_11 data11 = new BKDetailData_11(null, userid, historydate, String.valueOf(historyno));
		data11.saveDataDispToDb(request.getParameterValues("dt_11[]"));
		// sheet12
		BKDetailData_12 data12 = new BKDetailData_12(null, userid, historydate, String.valueOf(historyno));
		data12.saveDataDispToDb(request.getParameterValues("dt_12[]"));
		// sheet13
		BKDetailData_13 data13 = new BKDetailData_13(null, userid, historydate, String.valueOf(historyno));
		data13.saveDataDispToDb(request.getParameterValues("dt_13[]"));
		// sheet14
		BKDetailData_14 data14 = new BKDetailData_14(null, userid, historydate, String.valueOf(historyno));
		data14.saveDataDispToDb(request.getParameterValues("dt_14[]"));
		// sheet15
		BKDetailData_15 data15 = new BKDetailData_15(null, userid, historydate, String.valueOf(historyno));
		data15.saveDataDispToDb(request.getParameterValues("dt_15[]"));
		// sheet16
		BKDetailData_16 data16 = new BKDetailData_16(null, userid, historydate, String.valueOf(historyno));
		data16.saveDataDispToDb(request.getParameterValues("dt_16[]"));
		// sheet17
		BKDetailData_17 data17 = new BKDetailData_17(null, userid, historydate, String.valueOf(historyno));
		data17.saveDataDispToDb(request.getParameterValues("dt_17[]"));
		// sheet18
		BKDetailData_18 data18 = new BKDetailData_18(null, userid, historydate, String.valueOf(historyno));
		data18.saveDataDispToDb(request.getParameterValues("dt_18[]"));
		// sheet19
		BKDetailData_19 data19 = new BKDetailData_19(null, userid, historydate, String.valueOf(historyno));
		data19.saveDataDispToDb(request.getParameterValues("dt_19[]"));
		// sheet20
		BKDetailData_20 data20 = new BKDetailData_20(null, userid, historydate, String.valueOf(historyno));
		data20.saveDataDispToDb(request.getParameterValues("dt_20[]"));
		// sheet21
		BKDetailData_21 data21 = new BKDetailData_21(null, userid, historydate, String.valueOf(historyno));
		data21.saveDataDispToDb(request.getParameterValues("dt_21[]"));
		// sheet22
		BKDetailData_22 data22 = new BKDetailData_22(null, userid, historydate, String.valueOf(historyno));
		data22.saveDataDispToDb(request.getParameterValues("dt_22[]"));
		// sheet23
		BKDetailData_23 data23 = new BKDetailData_23(null, userid, historydate, String.valueOf(historyno));
		data23.saveDataDispToDb(request.getParameterValues("dt_23[]"));
	}

	private void deletedata(String userid, String historydate, String historyno) {
		Object[] params = new Object[3];
		params[0]= userid;
		params[1]= historydate;
		params[2]= historyno;
		
		String delsql = "update cdata_history set deleteflg='1' where userid = ? and historydate=? and historyno=?";
		JdbcUtil.getInstance().executeUpdate(delsql, params);
	}
	
	private int saveHistoryDate(String userid, String historyname,String historydate){
		int historyno = 0;
		String chksql = "select * from cdata_history where userid=? and historydate=?";
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		
		List<Object> list1 = JdbcUtil.getInstance().excuteQuery(chksql, params);
		// date日的数据已经导入的时候，先删除
		if (list1.size() > 0) {
			String delsql = "update cdata_history set deleteflg='1' where userid = ? and historydate=?";
			JdbcUtil.getInstance().executeUpdate(delsql, params);
		}
		
		// 履历No取得
		String maxnosql = "select max(historyno) as historyno from cdata_history where userid = ? and historydate=?";
		List<Object> list2 = JdbcUtil.getInstance().excuteQuery(maxnosql, params);
		if (list2.size() > 0) {
			Map<String, Object> set = (Map<String, Object>) list2.get(0);
			historyno = Integer.parseInt(set.get("historyno").toString()) + 1;
		}

		String insertSql = "insert into cdata_history value(?,?,?,?,?)";
        Object[] insertparams = new Object[5];
        insertparams[0] = userid;
        insertparams[1] = historydate;
        insertparams[2] = historyno;
        insertparams[3] = historyname;
        insertparams[4] = "0";
        JdbcUtil.getInstance().executeUpdate(insertSql, insertparams);
        
        return historyno;
	}
}
