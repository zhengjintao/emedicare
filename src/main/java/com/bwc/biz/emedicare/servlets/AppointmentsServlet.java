package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.Date;
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
 * Servlet implementation class AppointmentsServlet
 */
public class AppointmentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentsServlet() {
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
			this.submit(request, response);
		}else if("list".equals(mode)){
			this.list(request, response);
		}else{
			request.setAttribute("langinx", userinfo.getLanginx());
			request.getRequestDispatcher("appointments.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		
		String userid=userinfo.getUserId();
		String sql = "select * from cdata_appointments where userid=? order by appointdate desc";
 		Object[] params = new Object[1];
 		params[0] = userid;
 		List<Object> appiontmentlist = JdbcUtil.getInstance().excuteQuery(sql, params);
 		
 		JSONArray recentList = new JSONArray();
 		JSONArray historyList = new JSONArray();
 		Date now = new Date();
 		int i = 0,j = 0;
 		for(Object item : appiontmentlist){
 			Map<String, Object> row = (Map<String, Object>) item;
 			String appointdate = ((Date)row.get("appointdate")).toString();
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", row.get("no").toString());
			jsonObject.put("header", row.get("header").toString());
			jsonObject.put("date", appointdate);
			jsonObject.put("description", String.valueOf(row.get("content")));
			jsonObject.put("status", String.valueOf(row.get("status")));
			
			if(now.before((Date)row.get("appointdate"))){
				recentList.put(i, jsonObject);
				i++;
			}else{
				historyList.put(j, jsonObject);
				j++;
			}
 		}
 		
 		JSONObject result = new JSONObject();
		result.put("recentList", recentList);
		result.put("historyList", historyList);
		response.getWriter().write(result.toString());
	}
	
	private void submit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String id = request.getParameter("id");
		
		String sql = "update cdata_appointments set status='1' where no=?";
 		Object[] params = new Object[1];
 		params[0] = id;
 		JdbcUtil.getInstance().executeUpdate(sql, params);
 		
 		list(request, response);
	}
}
