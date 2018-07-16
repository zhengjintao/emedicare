package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.detailget.GetDetailData_01;

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
		String userid = request.getParameter("userid");
		String historydate = request.getParameter("historydate");
		String historyname = request.getParameter("historyname");

		// 健診結果報告書１数据取得
		GetDetailData_01 getdetaildata01 = new GetDetailData_01();
		request.setAttribute("historyname", historyname);
		request.setAttribute("detailDataList01", getdetaildata01.getDateValue(userid, historydate));
		
		request.getRequestDispatcher("bkdetailinfo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
