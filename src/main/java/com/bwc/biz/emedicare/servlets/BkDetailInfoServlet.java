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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		String userid = request.getParameter("userid");
		String historydate = request.getParameter("historydate");
		String historyname = request.getParameter("historyname");
		
		if(mode.equals("init")){
			request.setAttribute("historyname", new String(historyname.getBytes("ISO8859-1"),"UTF-8"));
			// 画面表示用数据取得
			this.getDispData(request,userid,historydate);
			request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
		}else if(mode.equals("save")){
			this.savedata(request);
			// 画面表示用数据取得
			this.getDispData(request,userid,historydate);
			request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
		}
		else if(mode.equals("delete")){
			this.deletedata(request);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	/*
	 * 画面表示用数据取得
	 */
	private void getDispData(HttpServletRequest request,String userid,String historydate){
		// 健診結果報告書１数据取得
		BKDetailData_01 detaildata01 = new BKDetailData_01();
		request.setAttribute("detailDataList01", detaildata01.getDateValue(userid, historydate));
		// 健診結果報告書2数据取得
		BKDetailData_02 detaildata02 = new BKDetailData_02();
		request.setAttribute("detailDataList02", detaildata02.getDateValue(userid, historydate));
		// 健診結果報告書3数据取得
		BKDetailData_03 detaildata03 = new BKDetailData_03();
		request.setAttribute("detailDataList03", detaildata03.getDateValue(userid, historydate));
		// 健診結果報告書4数据取得
		BKDetailData_04 detaildata04 = new BKDetailData_04();
		request.setAttribute("detailDataList04", detaildata04.getDateValue(userid, historydate));
		// 健診結果報告書5数据取得
		BKDetailData_05 detaildata05 = new BKDetailData_05();
		request.setAttribute("detailDataList05", detaildata05.getDateValue(userid, historydate));
		// 健診結果報告書6数据取得
		BKDetailData_06 detaildata06 = new BKDetailData_06();
		request.setAttribute("detailDataList06", detaildata06.getDateValue(userid, historydate));
		// 健診結果報告書7数据取得
		BKDetailData_07 detaildata07 = new BKDetailData_07();
		request.setAttribute("detailDataList07", detaildata07.getDateValue(userid, historydate));
		// 健診結果報告書8数据取得
		BKDetailData_08 detaildata08 = new BKDetailData_08();
		request.setAttribute("detailDataList08", detaildata08.getDateValue(userid, historydate));
		
		// 健診結果報告書9数据取得
		BKDetailData_09 detaildata09 = new BKDetailData_09();
		request.setAttribute("detailDataList09", detaildata09.getDateValue(userid, historydate));
		// 健診結果報告書10数据取得
		BKDetailData_10 detaildata10 = new BKDetailData_10();
		request.setAttribute("detailDataList10", detaildata10.getDateValue(userid, historydate));
		// 健診結果報告書11数据取得
		BKDetailData_11 detaildata11 = new BKDetailData_11();
		request.setAttribute("detailDataList11", detaildata11.getDateValue(userid, historydate));
	}
	
	private void savedata(HttpServletRequest request){
		// sheet01
		BKDetailData_01 data01 = new BKDetailData_01();
		data01.saveDataDispToDb(request.getParameterValues("dt_01[]"));
		
		// 基本情报取得
		String userid = request.getParameterValues("dt_01[]")[2];
		String historydate = request.getParameterValues("dt_01[]")[1];
		String username = request.getParameterValues("dt_01[]")[0];
		
		// sheet02
		BKDetailData_02 data02 = new BKDetailData_02();
		data02.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_02[]"));
		// sheet03
		BKDetailData_03 data03 = new BKDetailData_03();
		data03.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_03[]"));
		// sheet04
		BKDetailData_04 data04 = new BKDetailData_04();
		data04.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_04[]"));
		// sheet05
		BKDetailData_05 data05 = new BKDetailData_05();
		data05.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_05[]"));
		// sheet06
		BKDetailData_06 data06 = new BKDetailData_06();
		data06.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_06[]"));
		// sheet07
		BKDetailData_07 data07 = new BKDetailData_07();
		data07.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_07[]"));
		// sheet08
		BKDetailData_08 data08 = new BKDetailData_08();
		//data08.saveDataDispToDb(userid,username,historydate,request.getParameterValues("dt_08[]"));

		// sheet09
		String[] detaildata09 =  request.getParameterValues("json[]");
		BKDetailData_09 data09 = new BKDetailData_09();
		//data09.saveDataDispToDb(detaildata09);
		
		// sheet10
		String[] detaildata10 =  request.getParameterValues("json[]");
		BKDetailData_10 data10 = new BKDetailData_10();
		//data10.saveDataDispToDb(detaildata10);
		
		// sheet11
		String[] detaildata11 =  request.getParameterValues("json[]");
		BKDetailData_11 data11 = new BKDetailData_11();
		//data11.saveDataDispToDb(detaildata11);	
	}
	
	private void deletedata(HttpServletRequest request){
		String[] detailData = request.getParameterValues("dt_01[]");
		String userid = detailData[2];
		String historydate = detailData[1];
		
		// 健診結果報告書1数据删除
		BKDetailData_01 data01 = new BKDetailData_01();
		data01.deleteData(userid,historydate);
		// 健診結果報告書2数据删除
		BKDetailData_02 data02 = new BKDetailData_02();
		data02.deleteData(userid,historydate);
		// 健診結果報告書3数据删除
		BKDetailData_03 data03 = new BKDetailData_03();
		data03.deleteData(userid,historydate);
		// 健診結果報告書4数据删除
		BKDetailData_04 data04 = new BKDetailData_04();
		data04.deleteData(userid,historydate);
		// 健診結果報告書5数据删除
		BKDetailData_05 data05 = new BKDetailData_05();
		data05.deleteData(userid,historydate);
		// 健診結果報告書6数据删除
		BKDetailData_06 data06 = new BKDetailData_06();
		data06.deleteData(userid,historydate);
		// 健診結果報告書7数据删除
		BKDetailData_07 data07 = new BKDetailData_07();
		data07.deleteData(userid,historydate);
		// 健診結果報告書8数据删除
		BKDetailData_08 data08 = new BKDetailData_08();
		data08.deleteData(userid,historydate);
//		// sheet09
//		String[] detaildata09 =  request.getParameterValues("json[]");
//		BKDetailData_09 data09 = new BKDetailData_09();
//		data09.deleteData(detaildata09);
//		
//		// sheet10
//		String[] detaildata10 =  request.getParameterValues("json[]");
//		BKDetailData_10 data10 = new BKDetailData_10();
//		data10.deleteData(detaildata10);
//		
//		// sheet11
//		String[] detaildata11 =  request.getParameterValues("json[]");
//		BKDetailData_11 data11 = new BKDetailData_11();
//		data11.deleteData(detaildata11);
	}
}
