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
import com.bwc.biz.emedicare.common.StringUtil;
import com.bwc.biz.emedicare.common.wechat.HttpRequestor;
import com.bwc.biz.emedicare.common.wechat.URLProducer;

/**
 * Servlet implementation class CallBackServlet
 */
public class CallBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CallBackServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		if (code == null) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}

		String errmsg = null;
		try {
			errmsg = "－－开始获取openid－－<br>";
			String url = URLProducer.GetUserAuthUrl(code);
			JSONObject jsonObject = HttpRequestor.httpGetProc(url);
			
			if(!jsonObject.has("openid")){
				errmsg = errmsg + "－－获取openid失败－－<br>";
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;
			}
			
			String openid = jsonObject.getString("openid");
			errmsg = errmsg + "－－成功获取openid: " + openid+" －－<br>";
			
			String sql = "select * from mstr_user where openid=?";
			Object[] params = new Object[1];
			params[0] = openid;
			List<Object> userinfo = JdbcUtil.getInstance().excuteQuery(sql, params);
			
			String kbn = "2"; // 新规用户
			if(userinfo != null && userinfo.size() >0){
				Map<String, Object> row = (Map<String, Object>) userinfo.get(0);
				kbn = "0".equals((String)row.get("delflg")) ? "0" : "1"; // "0":用户已通过申请 "1":用户申请中
			}
			if("0".equals(kbn)){
				errmsg = errmsg + "－－已存在，单账号登录－－<br>";
				Map<String, Object> info = (Map<String, Object>)userinfo.get(0);
				if("0".equals((String)info.get("delflg"))){
					String ueserid = (String)info.get("userid");
					String password = (String)info.get("password");
					request.getRequestDispatcher("login.do?rembpwd=1&userid="+ ueserid + "&password=" + password).forward(request, response);
				}else{
					response.sendRedirect("login.do");
				}
				
				return;
			}else if("2".equals(kbn)){
				String accessToken = jsonObject.getString("access_token");
				errmsg = errmsg + "－－开始获取用户微信信息－－<br>";
				String infoUrl = URLProducer.GetUserInfoUrl(accessToken, openid);
				JSONObject userInfo = HttpRequestor.httpGetProc(infoUrl);
				
				if(!userInfo.has("openid")){
					errmsg = errmsg + "－－获取userInfo失败－－<br>";
					request.getRequestDispatcher("login.jsp").forward(request, response);
					return;
				}
				
				String username = filterEmoji(userInfo.getString("nickname"));
				String sex = "1".equals(userInfo.get("sex").toString()) ? "M" : "F";
				errmsg = errmsg + "－－成功获取用户昵称: " + username +" －－<br>";
				errmsg = errmsg + "－－成功获取用户性别: " + sex +" －－<br>";
				
				response.sendRedirect("userinit.do?username=" + username +"&sex="+sex +"&openid="+openid);
				return;
			}else{
				request.getRequestDispatcher("wait.do").forward(request, response);
				return;
			}

		} catch (Exception e) {
			request.setAttribute("errmsg", errmsg + "<br><br>" + e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
			return;
		}
	}
	
	private static boolean isNotEmojiCharacter(char codePoint) {
		return (codePoint == 0x0) || (codePoint == 0x9) || (codePoint == 0xA) || (codePoint == 0xD)
				|| ((codePoint >= 0x20) && (codePoint <= 0xD7FF)) || ((codePoint >= 0xE000) && (codePoint <= 0xFFFD))
				|| ((codePoint >= 0x10000) && (codePoint <= 0x10FFFF));
	}

	/** 
	* 过滤emoji 或者 其他非文字类型的字符 
	* @param source 
	* @return 
	*/ 
	public static String filterEmoji(String source) {
		int len = source.length();
		StringBuilder buf = new StringBuilder(len);
		for (int i = 0; i < len; i++) {
			char codePoint = source.charAt(i);
			if (isNotEmojiCharacter(codePoint)) {
				buf.append(codePoint);
			} else {

				buf.append("*");

			}
		}
		return buf.toString();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
