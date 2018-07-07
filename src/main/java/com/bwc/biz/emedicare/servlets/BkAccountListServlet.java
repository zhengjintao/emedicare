package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.form.User;

/**
 * Servlet implementation class BkAccountListServlet
 */
public class BkAccountListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BkAccountListServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		
		if("list".equals(mode)){
			this.list(request, response);
		}else{
			request.getRequestDispatcher("bkaccountlist.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		JSONArray userinfolist = new JSONArray();
		String sql = "select u.userid userid, u.username username, count(v.no) vcount from mstr_user u left join cdata_visithistory v on u.userid =v.userid where u.authflg='2' and u.delflg='0' group by u.userid, u.username";
 		List<Object> userinfodata = JdbcUtil.getInstance().excuteQuery(sql, null);
 		int i=0;
		for (Object data : userinfodata) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", row.get("userid").toString());
			jsonObject.put("username", row.get("username").toString());
			jsonObject.put("expcount", String.valueOf(row.get("vcount")));
			jsonObject.put("visitcount", String.valueOf(row.get("vcount")));
			userinfolist.put(i, jsonObject);
			i++;
		}
		
		// 最終結果
		JSONObject result = new JSONObject();
		result.put("userinfolist", userinfolist);

		response.getWriter().write(result.toString());
	}
}
