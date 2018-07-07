package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class VisitsServlet
 */
public class VisitsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VisitsServlet() {
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
			String modkbn = request.getParameter("modkbn");
			String id = request.getParameter("id");
			String date = request.getParameter("date");
			String content = request.getParameter("content");
			String userid= userinfo.getUserId();
			
			if("D".equals(modkbn)){
				String sql = "update cdata_visithistory set delflg='1' where userid=? and no=?";
	     		Object[] params = new Object[2];
	     		params[0] = userid;
	     		params[1] = id;
	     		JdbcUtil.getInstance().executeUpdate(sql, params);
			}else{
				if(id!=null && id.length() >0){
					String sql = "update cdata_visithistory set visitdate=?, content=? where userid=? and no=？";
		     		Object[] params = new Object[4];
		     		params[0] = date;
		     		params[1] = content;
		     		params[2] = userid;
		     		params[3] = id;
		     		JdbcUtil.getInstance().executeUpdate(sql, params);
				}else{
					String sql = "select max(no) id from cdata_visithistory";
					List<Object> idinfo = JdbcUtil.getInstance().excuteQuery(sql, null);
		     		String maxidstr="0";
		     		if(idinfo.size() >0){
		     			Map<String, Object> info = (Map<String, Object>)idinfo.get(0);
		     			maxidstr = String.valueOf(info.get("id"));
		     		}
		     		
		     		int maxid= new Integer(maxidstr);
		     		maxid++;
		     		
		     		sql = "insert cdata_visithistory values(?, ?, ?, ?,?)";
		     		Object[] params = new Object[5];
		     		params[0] = maxid;
		     		params[1] = userid;
		     		params[2] = date;
		     		params[3] = content;
		     		params[4] = "0";
		     		JdbcUtil.getInstance().executeUpdate(sql, params);
				}
			}
			
			this.list(request, response);
		}else if("list".equals(mode)){
			this.list(request, response);
		}else{
			request.setAttribute("langinx", userinfo.getLanginx());
			request.getRequestDispatcher("visits.jsp").forward(request, response);
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
		User userinfo = (User) session.getAttribute("userinfo");
		JSONArray historyList = new JSONArray();
		int i = 0;
		String sql = "select * from cdata_visithistory where userid=? and delflg='0'";
		Object[] params = new Object[1];
		params[0] = userinfo.getUserId();
		List<Object> hisotrydata = JdbcUtil.getInstance().excuteQuery(sql, params);
		for (Object data : hisotrydata) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", String.valueOf(row.get("no")));
			jsonObject.put("date", row.get("visitdate").toString());
			jsonObject.put("text", row.get("content").toString());
			historyList.put(i, jsonObject);
			i++;
		}

		// 最終結果
		JSONObject result = new JSONObject();
		result.put("historyList", historyList);

		response.getWriter().write(result.toString());
	}
}
