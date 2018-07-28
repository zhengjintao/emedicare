package com.bwc.biz.emedicare.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;
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
			request.setAttribute("historyname", historyname);
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
		// sheet02
		BKDetailData_02 data02 = new BKDetailData_02();
		data02.saveDataDispToDb(request.getParameterValues("dt_02[]"));
		// sheet09
		String[] detaildata09 =  request.getParameterValues("json[]");
		BKDetailData_09 data09 = new BKDetailData_09();
		data09.saveDataDispToDb(detaildata09);
		
		// sheet10
		String[] detaildata10 =  request.getParameterValues("json[]");
		BKDetailData_10 data10 = new BKDetailData_10();
		data10.saveDataDispToDb(detaildata10);
		
		// sheet11
		String[] detaildata11 =  request.getParameterValues("json[]");
		BKDetailData_11 data11 = new BKDetailData_11();
		data11.saveDataDispToDb(detaildata11);	
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
		// sheet09
		String[] detaildata09 =  request.getParameterValues("json[]");
		BKDetailData_09 data09 = new BKDetailData_09();
		data09.deleteData(detaildata09);
		
		// sheet10
		String[] detaildata10 =  request.getParameterValues("json[]");
		BKDetailData_10 data10 = new BKDetailData_10();
		data10.deleteData(detaildata10);
		
		// sheet11
		String[] detaildata11 =  request.getParameterValues("json[]");
		BKDetailData_11 data11 = new BKDetailData_11();
		data11.deleteData(detaildata11);
	}
}
