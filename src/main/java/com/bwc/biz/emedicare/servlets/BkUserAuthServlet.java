package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.bwc.biz.emedicare.common.JdbcUtil;

/**
 * Servlet implementation class BkUserAuthServlet
 */
public class BkUserAuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BkUserAuthServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		
		if("list".equals(mode)){
			this.list(request, response);
		}else if("submit".equals(mode)){
			this.auth(request, response);
		}else{
			request.getRequestDispatcher("bkuserauth.jsp").forward(request, response);
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
		JSONArray normaluserlist = new JSONArray();
		String sql ="select * from mstr_user where authflg='2'";
		
 		List<Object> userinfodata = JdbcUtil.getInstance().excuteQuery(sql, null);
 		int i=0,j=0;
		for (Object data : userinfodata) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", row.get("userid").toString());
			jsonObject.put("username", row.get("username").toString());
			String sex = "F".equals(row.get("sex").toString()) ? "女" : "男";
			jsonObject.put("sex", sex);
			jsonObject.put("birthday", String.valueOf(row.get("birthday")));
			
			if("1".equals(row.get("delflg").toString())){
				userinfolist.put(i, jsonObject);
				i++;
			}else{
				normaluserlist.put(j, jsonObject);
				j++;
			}
		}
		
		// 最終結果
		JSONObject result = new JSONObject();
		result.put("userinfolist", userinfolist);
		result.put("normaluserlist", normaluserlist);
		response.getWriter().write(result.toString());
	}
	
	private void auth(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String userid = request.getParameter("userid");
		String sql ="update mstr_user set delflg='0' where userid=?";
		Object[] params = new Object[1];
		params[0] = userid;
 		JdbcUtil.getInstance().executeUpdate(sql, params);
		list(request, response);
	}
}
