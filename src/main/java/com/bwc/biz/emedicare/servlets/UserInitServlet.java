package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.common.StringUtil;


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
		String username = request.getParameter("username");
		String sex = request.getParameter("sex");
		String openid = request.getParameter("openid");
		String langinx = request.getParameter("langinx");
		
		
		String sql = "select * from mstr_user where openid=?";
		Object[] params = new Object[1];
		params[0] = openid;
		List<Object> userinfo = JdbcUtil.getInstance().excuteQuery(sql, params);
		
		// 已申请
		if(userinfo != null && userinfo.size() >0){
			response.sendRedirect("wait.do");
			return;
		}
		
		String sql2 = "select count(*) as num from mstr_user where userid like 'U0%'";
		List<Object> usercount = JdbcUtil.getInstance().excuteQuery(sql2, null);
		Map<String, Object> row = (Map<String, Object>) usercount.get(0);
		int uid = new Integer(row.get("num").toString());
		
		String euserid = "U0" + StringUtil.padLeft(String.valueOf(++uid), 6, '0');
		String password = "changeme";
		sql2 = "insert into mstr_user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params2 = new Object[15];
		
		params2[0] = euserid;
		params2[1] = username;
		params2[2] = password;
		params2[3] = "1";
		params2[4] = "09:30:00.0000";
		params2[5] = "18:30:00.0000";
		params2[6] = sex;
		params2[7] = "2";
		params2[8] = "1900-01-01";
		params2[9] = "";
		params2[10] = openid;
		params2[11] = "1";
		params2[12] = langinx;
		params2[13] = "";
		params2[14] = "";
		
		JdbcUtil.getInstance().executeUpdate(sql2, params2);
		response.sendRedirect("wait.do");
	}
	
    private void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setAttribute("username", request.getParameter("username"));
    	request.setAttribute("sex", request.getParameter("sex"));
    	request.setAttribute("openid", request.getParameter("openid"));
    	request.getRequestDispatcher("userinit.jsp").forward(request, response);
	}

}
