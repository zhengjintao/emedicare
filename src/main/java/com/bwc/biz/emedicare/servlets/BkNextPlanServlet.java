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
import com.bwc.biz.emedicare.common.StringUtil;

/**
 * Servlet implementation class BkNextPlanServlet
 */
public class BkNextPlanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BkNextPlanServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		
		if("list".equals(mode)){
			// ユーザリスト取得
			JSONArray userlist = this.userlist(request, response);
			// 過去検査予約履歴
			JSONArray historylist = this.historylist(request, response);
			// 通院履歴
			JSONArray appointlist = this.appointlist(request, response);
			// 最終結果
			JSONObject result = new JSONObject();
			result.put("userlist", userlist);
			result.put("historylist", historylist);
			result.put("appointlist", appointlist);
			response.getWriter().write(result.toString());
		}else if("submit".equals(mode)){
			this.saveappoint(request, response);
			
			JSONArray historylist = this.historylist(request, response);
			JSONArray appointlist = this.appointlist(request, response);
			JSONObject result = new JSONObject();
			result.put("historylist", historylist);
			result.put("appointlist", appointlist);
			response.getWriter().write(result.toString());
			
		}else{
			request.getRequestDispatcher("bknextplan.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void saveappoint(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String sql = "insert into cdata_appointments values(?,?,?,?,?,?,?)";
		Object[] params = new Object[6];
		
		params[0] = "";
		params[1] = "";
		params[2] = "";
		params[3] = "0";
		params[4] = "09:30:00.0000";
		params[5] = "18:30:00.0000";
		JdbcUtil.getInstance().executeUpdate(sql, params);
	}
	
	private JSONArray userlist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		JSONArray jsonArray = new JSONArray();
		String sql = "select * from mstr_user where delflg='0' and authflg !='0' order by username";
 		List<Object> explinfodata = JdbcUtil.getInstance().excuteQuery(sql, null);
 		int i=0;
		for (Object data : explinfodata) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", String.valueOf(row.get("userid")));
			jsonObject.put("username", String.valueOf(row.get("username")));
			jsonArray.put(i, jsonObject);
			i++;
		}
		
		return jsonArray;
	}
	private JSONArray historylist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
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
	
	private JSONArray appointlist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String userid = request.getParameter("userid");
		JSONArray jsonArray = new JSONArray();
		String sql = "select * from cdata_visithistory where userid=? and delflg='0' and authflg !='0' order by visitdate desc";
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
