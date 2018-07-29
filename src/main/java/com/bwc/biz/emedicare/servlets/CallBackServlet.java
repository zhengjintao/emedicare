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
			
			String sql = "select * from mstr_user where openid=? and delflg='0'";
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
				
				String username = userInfo.getString("nickname");
				String sex = "1".equals(userInfo.get("sex").toString()) ? "M" : "F";
				errmsg = errmsg + "－－成功获取用户昵称: " + username +" －－<br>";
				errmsg = errmsg + "－－成功获取用户性别: " + sex +" －－<br>";
				
				String sql2 = "select count(*) as num from mstr_user where userid like 'U0%'";
				List<Object> usercount = JdbcUtil.getInstance().excuteQuery(sql2, null);
				Map<String, Object> row = (Map<String, Object>) usercount.get(0);
				int uid = new Integer(row.get("num").toString());
				
				String euserid = "U0" + StringUtil.padLeft(String.valueOf(++uid), 6, '0');
				String password = "changeme";
				sql2 = "insert into mstr_user values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				Object[] params2 = new Object[15];
				
				params2[0] = euserid;
				params2[1] = filterEmoji(username);
				params2[2] = password;
				params2[3] = "1";
				params2[4] = "09:30:00.0000";
				params2[5] = "18:30:00.0000";
				params2[6] = sex;
				params2[7] = "2";
				params2[8] = "1900-01-01";
				params2[9] = "";
				params2[10] = openid;
				params2[11] = "1";
				params2[12] = "0";
				params2[13] = "";
				params2[14] = "";
				
				errmsg = errmsg + "－－新规做成用户－－<br>";
				JdbcUtil.getInstance().executeUpdate(sql2, params2);

				request.getRequestDispatcher("login.do?rembpwd=1&userid="+ euserid + "&password=" + password).forward(request, response);
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
