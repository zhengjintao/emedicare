package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwc.biz.emedicare.common.Consts;
import com.bwc.biz.emedicare.common.JdbcUtil;
import com.bwc.biz.emedicare.common.wechat.URLProducer;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String callbackUrl=Consts.DomainURL + request.getContextPath() + "/callback.do";
        response.sendRedirect(URLProducer.GetAuthUrl(callbackUrl));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private List<String[]> getLoginuserinfo(String openid){
		String sql = "select * from mstr_user usr left join mstr_user_comp ump on usr.userid=ump.userid  left join mstr_company cmp on ump.companyid=cmp.companyid where usr.openid=? and usr.delflg='0'";
		Object[] params = new Object[1];
		params[0] = openid;
		List<Object> userinfo = JdbcUtil.getInstance().excuteQuery(sql, params);
		
		List<String[]> userinfolist = new ArrayList<String[]>();
		for (Object data : userinfo) {
			Map<String, Object> row = (Map<String, Object>) data;
			String[] each = new String[3];
			each[0] = row.get("userid").toString();
			each[1] = row.get("password").toString();
			each[2] = row.get("username").toString() + "(" +row.get("companynm").toString() +")";
			
			userinfolist.add(each);
		}
		
		return userinfolist;
	}
}
