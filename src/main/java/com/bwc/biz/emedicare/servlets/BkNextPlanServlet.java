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
		String userid = request.getParameter("userid");
		String date = request.getParameter("date");
		String content = request.getParameter("content");
		String sql = "select no from cdata_appointments order by no desc";
		List<Object> idinfo = JdbcUtil.getInstance().excuteQuery(sql, null);
 		String maxidstr="0";
 		if(idinfo.size() >0){
 			Map<String, Object> info = (Map<String, Object>)idinfo.get(0);
 			maxidstr = String.valueOf(info.get("no"));
 		}
 		int maxid= new Integer(maxidstr);
 		maxid++;
		sql = "insert into cdata_appointments values(?,?,?,?,?,?)";
		Object[] params = new Object[6];
		
		params[0] = maxid;
		params[1] = userid;
		params[2] = date;
		params[3] = "体检通知";
		params[4] = content;
		params[5] = "0";
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
		JSONArray jsonArray = new JSONArray();
		String sql = "select * from cdata_appointments c left join mstr_user u on c.userid=u.userid where c.appointdate < now() order by appointdate desc";
 		List<Object> explinfodata = JdbcUtil.getInstance().excuteQuery(sql, null);
 		int i=0;
		for (Object data : explinfodata) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", String.valueOf(row.get("userid")));
			jsonObject.put("username", String.valueOf(row.get("username")));
			jsonObject.put("date", String.valueOf(row.get("appointdate")));
			jsonObject.put("content", String.valueOf(row.get("content")));
			jsonObject.put("status", String.valueOf(row.get("status")));
			jsonArray.put(i, jsonObject);
			i++;
		}
		
		return jsonArray;
	}
	
	private JSONArray appointlist(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		JSONArray jsonArray = new JSONArray();
		String sql = "select * from cdata_appointments c left join mstr_user u on c.userid=u.userid where c.appointdate >= now() order by appointdate desc";
 		List<Object> datalist = JdbcUtil.getInstance().excuteQuery(sql, null);
 		int i=0;
		for (Object data : datalist) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", String.valueOf(row.get("userid")));
			jsonObject.put("username", String.valueOf(row.get("username")));
			jsonObject.put("date", String.valueOf(row.get("appointdate")));
			jsonObject.put("content", String.valueOf(row.get("content")));
			jsonObject.put("status", String.valueOf(row.get("status")));
			jsonArray.put(i, jsonObject);
			i++;
		}
		
		return jsonArray;
	}
}
