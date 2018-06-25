package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserInitServlet
 */
public class UserInitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInitServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		if("submit".equals(mode)){
			this.submit(request, response);
		}else{
			this.init(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void submit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String langkbn = request.getParameter("langkbn");
		String name = request.getParameter("name");
		
		// ユーザ情報新規作成
		request.getRequestDispatcher("home.do").forward(request, response);
	}
	
    private void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.getRequestDispatcher("userinit.jsp").forward(request, response);
	}

}
