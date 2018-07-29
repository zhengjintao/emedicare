package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.common.JdbcUtil;

/**
 * Servlet implementation class BkVistisInfoServlet
 */
public class BkVistisInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BkVistisInfoServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String no = request.getParameter("id");
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		
		String sql = "select * from cdata_visithistory where userid=? and no=?";
 		Object[] params = new Object[2];
 		params[0] = userid;
 		params[1] = no;
 		
 		List<Object> userinfolist = JdbcUtil.getInstance().excuteQuery(sql, params);
 		Map<String, Object> info = (Map<String, Object>)userinfolist.get(0);
 		
 		request.setAttribute("vdate", info.get("visitdate").toString());
 		request.setAttribute("detail", (String)info.get("content"));
 		request.setAttribute("userid", userid);
 		request.setAttribute("username", new String(username.getBytes("ISO8859-1"),"UTF-8"));
 		request.setAttribute("name", new String(name.getBytes("ISO8859-1"),"UTF-8"));
		request.getRequestDispatcher("bkvistisinfo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
