package com.bwc.biz.emedicare.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;

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
	}
	
	private void savedata(HttpServletRequest request){
		String[] detaildata01 =  request.getParameterValues("json[]");
		BKDetailData_01 data01 = new BKDetailData_01();
		data01.saveDataDispToDb(detaildata01);
		
	}
	
	private void deletedata(HttpServletRequest request){
		String[] detaildata01 =  request.getParameterValues("json[]");
		BKDetailData_01 data01 = new BKDetailData_01();
		data01.deleteData(detaildata01);
		
	}
}
