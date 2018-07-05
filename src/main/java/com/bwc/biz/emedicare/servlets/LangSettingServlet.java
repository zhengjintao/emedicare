package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.form.User;

/**
 * Servlet implementation class LangSettingServlet
 */
public class LangSettingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LangSettingServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		
		if("submit".equals(mode)){
			String langinx = request.getParameter("langinx");
			// 言語区分DBへ保存
			String userid= userinfo.getUserId();
			String sql = "update mstr_user set lang=? where userid=? and delflg='0'";
     		Object[] params = new Object[2];
     		params[0] = langinx;
     		params[1] = userid;
     		JdbcUtil.getInstance().executeUpdate(sql, params);
     		
     		userinfo.setLanginx(new Integer(langinx));
			session.setAttribute("userinfo", userinfo);
			
			request.getRequestDispatcher("home.do").forward(request, response);
		}else{
			// DBから言語区分取得
			String langinx = String.valueOf(userinfo.getLanginx());
			request.setAttribute("langinx", langinx);
			request.getRequestDispatcher("langsetting.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
