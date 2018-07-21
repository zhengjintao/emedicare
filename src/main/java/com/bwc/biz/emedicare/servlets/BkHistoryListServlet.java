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
 * Servlet implementation class BkHistoryListServlet
 */
public class BkHistoryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BkHistoryListServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		
		if("list".equals(mode)){
			// 診査履歴
			JSONArray explist = this.explist(request, response);
			// 通院履歴
			JSONArray visitlist = this.visitlist(request, response);
			// 最終結果
			JSONObject result = new JSONObject();
			result.put("explist", explist);
			result.put("visitlist", visitlist);
			response.getWriter().write(result.toString());
		}else{
			String userid = request.getParameter("userid");

			String sql = "select * from mstr_user where userid=? and delflg='0'";
     		Object[] params = new Object[1];
     		params[0] = userid;
     		List<Object> userinfolist = JdbcUtil.getInstance().excuteQuery(sql, params);
     		Map<String, Object> info = (Map<String, Object>)userinfolist.get(0);
     		
     		request.setAttribute("userid", userid);
     		request.setAttribute("username", (String)info.get("username"));
     		request.setAttribute("sex", "M".equals((String)info.get("sex")) ? "男" : "女");
     		request.setAttribute("telnum", (String)info.get("telnum"));
     		request.setAttribute("address", (String)info.get("address"));
     		request.setAttribute("birthday", info.get("birthday").toString());
     		
			request.getRequestDispatcher("bkhistorylist.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private JSONArray explist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String userid = request.getParameter("userid");
		JSONArray jsonArray = new JSONArray();
		String sql = "select * from cdata_history where userid=? and deleteflg='0' order by historyno";
		Object[] params = new Object[1];
 		params[0] = userid;
 		List<Object> explinfodata = JdbcUtil.getInstance().excuteQuery(sql, params);
 		int i=0;
		for (Object data : explinfodata) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", String.valueOf(row.get("userid")));
			jsonObject.put("username", String.valueOf(row.get("username")));
			jsonObject.put("historyno", String.valueOf(row.get("historyno")));
			jsonObject.put("historyname", String.valueOf(row.get("historyname")));
			jsonObject.put("historydate", String.valueOf(row.get("historydate")));
			jsonArray.put(i, jsonObject);
			i++;
		}
		
		return jsonArray;
	}
	
	private JSONArray visitlist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String userid = request.getParameter("userid");
		JSONArray jsonArray = new JSONArray();
		String sql = "select * from cdata_visithistory where userid=? and delflg='0' order by visitdate desc";
		Object[] params = new Object[1];
 		params[0] = userid;
 		List<Object> datalist = JdbcUtil.getInstance().excuteQuery(sql, params);
 		int i=0;
		for (Object data : datalist) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", String.valueOf(row.get("no")));
			jsonObject.put("name", String.valueOf(i+1));
			jsonObject.put("date", row.get("visitdate").toString());
			jsonArray.put(i, jsonObject);
			i++;
		}
		
		return jsonArray;
	}
}
