package com.bwc.biz.emedicare.servlets;

import java.io.IOException;

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
		String historyname = request.getParameter("historyname");
		String historyno = request.getParameter("historyno");
		
		if (mode.equals("init")) {
			request.setAttribute("historyname", historyname);
			// 画面表示用数据取得
			this.getDispData(request, userid, historydate,historyno);
			request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
		} else if (mode.equals("save")) {
			this.savedata(request);
			// 画面表示用数据取得
			this.getDispData(request, userid, historydate, historyno);
			request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
		} else if (mode.equals("delete")) {
			this.deletedata(request);
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
		BKDetailData_01 detaildata01 = new BKDetailData_01();
		request.setAttribute("detailDataList01", detaildata01.getDateValue(userid, historydate, historyno));
		// 健診結果報告書2数据取得
		BKDetailData_02 detaildata02 = new BKDetailData_02();
		request.setAttribute("detailDataList02", detaildata02.getDateValue(userid, historydate, historyno));
		// 健診結果報告書3数据取得
		BKDetailData_03 detaildata03 = new BKDetailData_03();
		request.setAttribute("detailDataList03", detaildata03.getDateValue(userid, historydate, historyno));
		// 健診結果報告書4数据取得
		BKDetailData_04 detaildata04 = new BKDetailData_04();
		request.setAttribute("detailDataList04", detaildata04.getDateValue(userid, historydate, historyno));
		// 健診結果報告書5数据取得
		BKDetailData_05 detaildata05 = new BKDetailData_05();
		request.setAttribute("detailDataList05", detaildata05.getDateValue(userid, historydate, historyno));
		// 健診結果報告書6数据取得
		BKDetailData_06 detaildata06 = new BKDetailData_06();
		request.setAttribute("detailDataList06", detaildata06.getDateValue(userid, historydate, historyno));
		// 健診結果報告書7数据取得
		BKDetailData_07 detaildata07 = new BKDetailData_07();
		request.setAttribute("detailDataList07", detaildata07.getDateValue(userid, historydate, historyno));
		// 健診結果報告書8数据取得
		BKDetailData_08 detaildata08 = new BKDetailData_08();
		request.setAttribute("detailDataList08", detaildata08.getDateValue(userid, historydate, historyno));
		// 健診結果報告書9数据取得
		BKDetailData_09 detaildata09 = new BKDetailData_09();
		request.setAttribute("detailDataList09", detaildata09.getDateValue(userid, historydate, historyno));
		// 健診結果報告書10数据取得
		BKDetailData_10 detaildata10 = new BKDetailData_10();
		request.setAttribute("detailDataList10", detaildata10.getDateValue(userid, historydate, historyno));
		// 健診結果報告書11数据取得
		BKDetailData_11 detaildata11 = new BKDetailData_11();
		request.setAttribute("detailDataList11", detaildata11.getDateValue(userid, historydate, historyno));
		// 健診結果報告書12数据取得
		BKDetailData_12 detaildata12 = new BKDetailData_12();
		request.setAttribute("detailDataList12", detaildata12.getDateValue(userid, historydate, historyno));
		// 健診結果報告書13数据取得
		BKDetailData_13 detaildata13 = new BKDetailData_13();
		request.setAttribute("detailDataList13", detaildata13.getDateValue(userid, historydate, historyno));
		// 健診結果報告書14数据取得
		BKDetailData_14 detaildata14 = new BKDetailData_14();
		request.setAttribute("detailDataList14", detaildata14.getDateValue(userid, historydate, historyno));
		// 健診結果報告書15数据取得
		BKDetailData_15 detaildata15 = new BKDetailData_15();
		request.setAttribute("detailDataList15", detaildata15.getDateValue(userid, historydate, historyno));
		// 健診結果報告書16数据取得
		BKDetailData_16 detaildata16 = new BKDetailData_16();
		request.setAttribute("detailDataList16", detaildata16.getDateValue(userid, historydate, historyno));
		// 健診結果報告書17数据取得
		BKDetailData_17 detaildata17 = new BKDetailData_17();
		request.setAttribute("detailDataList17", detaildata17.getDateValue(userid, historydate, historyno));
		// 健診結果報告書18数据取得
		BKDetailData_18 detaildata18 = new BKDetailData_18();
		request.setAttribute("detailDataList18", detaildata18.getDateValue(userid, historydate, historyno));
		// 健診結果報告書19数据取得
		BKDetailData_19 detaildata19 = new BKDetailData_19();
		request.setAttribute("detailDataList19", detaildata19.getDateValue(userid, historydate, historyno));
		// 健診結果報告書20数据取得
		BKDetailData_20 detaildata20 = new BKDetailData_20();
		request.setAttribute("detailDataList20", detaildata20.getDateValue(userid, historydate, historyno));
		// 健診結果報告書21数据取得
		BKDetailData_21 detaildata21 = new BKDetailData_21();
		request.setAttribute("detailDataList21", detaildata21.getDateValue(userid, historydate, historyno));
		// 健診結果報告書22数据取得
		BKDetailData_22 detaildata22 = new BKDetailData_22();
		request.setAttribute("detailDataList22", detaildata22.getDateValue(userid, historydate, historyno));
		// 健診結果報告書23数据取得
		BKDetailData_23 detaildata23 = new BKDetailData_23();
		request.setAttribute("detailDataList23", detaildata23.getDateValue(userid, historydate, historyno));
	}

	private void savedata(HttpServletRequest request) {
		// sheet01
		BKDetailData_01 data01 = new BKDetailData_01();
		data01.saveDataDispToDb(request.getParameterValues("dt_01[]"));

		// 基本情报取得
		String userid = request.getParameterValues("dt_01[]")[2];
		String historydate = request.getParameterValues("dt_01[]")[1];
		String username = request.getParameterValues("dt_01[]")[0];

		// sheet02
		BKDetailData_02 data02 = new BKDetailData_02();
		data02.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_02[]"));
		// sheet03
		BKDetailData_03 data03 = new BKDetailData_03();
		data03.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_03[]"));
		// sheet04
		BKDetailData_04 data04 = new BKDetailData_04();
		data04.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_04[]"));
		// sheet05
		BKDetailData_05 data05 = new BKDetailData_05();
		data05.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_05[]"));
		// sheet06
		BKDetailData_06 data06 = new BKDetailData_06();
		data06.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_06[]"));
		// sheet07
		BKDetailData_07 data07 = new BKDetailData_07();
		data07.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_07[]"));
		// sheet08
		BKDetailData_08 data08 = new BKDetailData_08();
		data08.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_08[]"));
		// sheet09
		BKDetailData_09 data09 = new BKDetailData_09();
		data09.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_09[]"));
		// sheet10
		BKDetailData_10 data10 = new BKDetailData_10();
		data10.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_10[]"));
		// sheet11
		BKDetailData_11 data11 = new BKDetailData_11();
		data11.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_11[]"));
		// sheet12
		BKDetailData_12 data12 = new BKDetailData_12();
		data12.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_12[]"));
		// sheet13
		BKDetailData_13 data13 = new BKDetailData_13();
		data13.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_13[]"));
		// sheet14
		BKDetailData_14 data14 = new BKDetailData_14();
		data14.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_14[]"));
		// sheet15
		BKDetailData_15 data15 = new BKDetailData_15();
		data15.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_15[]"));
		// sheet16
		BKDetailData_16 data16 = new BKDetailData_16();
		data16.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_16[]"));
		// sheet17
		BKDetailData_17 data17 = new BKDetailData_17();
		data17.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_17[]"));
		// sheet18
		BKDetailData_18 data18 = new BKDetailData_18();
		data18.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_18[]"));
		// sheet19
		BKDetailData_19 data19 = new BKDetailData_19();
		data19.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_19[]"));
		// sheet20
		BKDetailData_20 data20 = new BKDetailData_20();
		data20.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_20[]"));
		// sheet21
		BKDetailData_21 data21 = new BKDetailData_21();
		data21.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_21[]"));
		// sheet22
		BKDetailData_22 data22 = new BKDetailData_22();
		data22.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_22[]"));
		// sheet23
		BKDetailData_23 data23 = new BKDetailData_23();
		data23.saveDataDispToDb(userid, username, historydate, request.getParameterValues("dt_23[]"));
	}

	private void deletedata(HttpServletRequest request) {
		String[] detailData = request.getParameterValues("dt_01[]");
		String userid = detailData[2];
		String historydate = detailData[1];

		// 健診結果報告書1数据删除
		BKDetailData_01 data01 = new BKDetailData_01();
		data01.deleteData(userid, historydate);
		// 健診結果報告書2数据删除
		BKDetailData_02 data02 = new BKDetailData_02();
		data02.deleteData(userid, historydate);
		// 健診結果報告書3数据删除
		BKDetailData_03 data03 = new BKDetailData_03();
		data03.deleteData(userid, historydate);
		// 健診結果報告書4数据删除
		BKDetailData_04 data04 = new BKDetailData_04();
		data04.deleteData(userid, historydate);
		// 健診結果報告書5数据删除
		BKDetailData_05 data05 = new BKDetailData_05();
		data05.deleteData(userid, historydate);
		// 健診結果報告書6数据删除
		BKDetailData_06 data06 = new BKDetailData_06();
		data06.deleteData(userid, historydate);
		// 健診結果報告書7数据删除
		BKDetailData_07 data07 = new BKDetailData_07();
		data07.deleteData(userid, historydate);
		// 健診結果報告書8数据删除
		BKDetailData_08 data08 = new BKDetailData_08();
		data08.deleteData(userid, historydate);
		// 健診結果報告書9数据删除
		BKDetailData_09 data09 = new BKDetailData_09();
		data09.deleteData(userid, historydate);
		// 健診結果報告書10数据删除
		BKDetailData_10 data10 = new BKDetailData_10();
		data10.deleteData(userid, historydate);
		// 健診結果報告書11数据删除
		BKDetailData_11 data11 = new BKDetailData_11();
		data11.deleteData(userid, historydate);
		// 健診結果報告書12数据删除
		BKDetailData_12 data12 = new BKDetailData_12();
		data12.deleteData(userid, historydate);
		// 健診結果報告書13数据删除
		BKDetailData_13 data13 = new BKDetailData_13();
		data13.deleteData(userid, historydate);
		// 健診結果報告書14数据删除
		BKDetailData_14 data14 = new BKDetailData_14();
		data14.deleteData(userid, historydate);
		// 健診結果報告書15数据删除
		BKDetailData_15 data15 = new BKDetailData_15();
		data15.deleteData(userid, historydate);
		// 健診結果報告書16数据删除
		BKDetailData_16 data16 = new BKDetailData_16();
		data16.deleteData(userid, historydate);
		// 健診結果報告書17数据删除
		BKDetailData_17 data17 = new BKDetailData_17();
		data17.deleteData(userid, historydate);
		// 健診結果報告書18数据删除
		BKDetailData_18 data18 = new BKDetailData_18();
		data18.deleteData(userid, historydate);
		// 健診結果報告書19数据删除
		BKDetailData_19 data19 = new BKDetailData_19();
		data19.deleteData(userid, historydate);
		// 健診結果報告書20数据删除
		BKDetailData_20 data20 = new BKDetailData_20();
		data20.deleteData(userid, historydate);
		// 健診結果報告書21数据删除
		BKDetailData_21 data21 = new BKDetailData_21();
		data21.deleteData(userid, historydate);
		// 健診結果報告書22数据删除
		BKDetailData_22 data22 = new BKDetailData_22();
		data22.deleteData(userid, historydate);
		// 健診結果報告書23数据删除
		BKDetailData_23 data23 = new BKDetailData_23();
		data23.deleteData(userid, historydate);
	}
}
