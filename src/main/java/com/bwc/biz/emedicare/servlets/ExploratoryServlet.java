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
 * Servlet implementation class ExploratoryServlet
 */
public class ExploratoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExploratoryServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		if("list".equals(mode)){
			list(request, response);
		}else{
			request.getRequestDispatcher("exploratory.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		Object[] params = new Object[1];
		params[0]= userinfo.getUserId();
		
		String checksql = "select * from cdata_history where userid = ? and deleteflg = '0'";
		
		List<Object> list = JdbcUtil.getInstance().excuteQuery(checksql, params);
		
		JSONArray array = new JSONArray();
		int i=0;
		for (Object data : list) {
			Map<String, Object> row = (Map<String, Object>) data;
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("userid", row.get("userid").toString());
			jsonObject.put("historydate", row.get("historydate").toString());
			jsonObject.put("historyno", String.valueOf(row.get("historyno")));
			jsonObject.put("historyname", row.get("historyname").toString());
			array.put(i, jsonObject);
			i++;
		}
		
		// 最終結果
		JSONObject result = new JSONObject();
		result.put("records", array);
		response.getWriter().write(result.toString());
	}

}
