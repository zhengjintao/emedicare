package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

import com.bwc.biz.emedicare.common.JdbcUtil;

/**
 * Servlet implementation class ExploratoryDetailServlet
 */
public class ExploratoryDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExploratoryDetailServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		String sheetid = request.getParameter("sheetid");
		sheetid = sheetid ==null || sheetid.length() ==0 ? "01" : sheetid;
		if("list".equals(mode)){
			this.list(request, response);
		}else{
			String expid = request.getParameter("expid");
			String name = request.getParameter("name");
			String jspname = String.format("exploratorydetail%s.jsp", sheetid);
			request.setAttribute("expid", expid);
			request.setAttribute("name", name);
			request.getRequestDispatcher(jspname).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String expid = request.getParameter("expid");
		String sheetid = request.getParameter("sheetid");
		sheetid = sheetid ==null || sheetid.length() ==0 ? "01" : sheetid;
		String sql = "select * from cdata_expdetail where expid=? and sheetid=?";
		Object[] params = new Object[2];
		params[0] = expid;
		params[1] = sheetid;
		List<Object> hisotrydata = JdbcUtil.getInstance().excuteQuery(sql, params);
		JSONObject jsonObject = new JSONObject();
		for (Object data : hisotrydata) {
			Map<String, Object> row = (Map<String, Object>) data;
			jsonObject.put(String.valueOf(row.get("name")), row.get("value"));
		}

		// 最終結果
		JSONObject result = new JSONObject();
		result.put("record", jsonObject);

		response.getWriter().write(result.toString());
	}
}
