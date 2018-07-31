package com.bwc.biz.emedicare.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;

import com.bwc.biz.emedicare.common.wechat.WechatConsts;
import com.bwc.biz.emedicare.common.wechat.tmpmsg.TemplateMessageUtil;

public class LyzTimerTaskNoticeUser extends TimerTask {

	@Override
	public void run() {
		try {
			Calendar cal = Calendar.getInstance();
			cal.setTime(new Date());
			/*if (cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY
					|| cal.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY) {
				return;
			}*/

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(sdf.format(cal.getTime()));

			String sql = "SELECT * FROM cdata_noticeday";
			List<Object> companyinfo = JdbcUtil.getInstance().excuteQuery(sql, null);
			if(companyinfo.size() == 0){
				return;
			}
			String insql= "SELECT * FROM cdata_appointments a left join mstr_user u on a.userid=u.userid where appointdate in (";
			
			for (int i = 0; i < companyinfo.size(); i++) {
				Map<String, Object> row = (Map<String, Object>) companyinfo.get(i);

				Integer day = (Integer) row.get("days");

				Calendar calSmall = Calendar.getInstance();
				calSmall.setTime(cal.getTime());
				calSmall.set(Calendar.DATE, calSmall.get(Calendar.DATE) + day);
				String noticedate = sdf.format(calSmall.getTime());
				insql = insql + "'" + noticedate + "',";
			}
			insql = insql.substring(0, insql.length() -1) + ")";
			List<Object> userinfo = JdbcUtil.getInstance().excuteQuery(insql, null);

			for (int j = 0; j < userinfo.size(); j++) {
				Map<String, Object> set2 = (Map<String, Object>) userinfo.get(j);

				final String openid = String.valueOf(set2.get("openid"));
				
				if (openid == null || openid.length() < 10) {
					continue;
				}
				
				final String date = String.valueOf(set2.get("appointdate"));
				final String username = String.valueOf(set2.get("username"));
				
				Thread t = new Thread(new Runnable() {
					public void run() {
						String url = Consts.DomainURL + "/emedicare/login.do?from=1";
						TemplateMessageUtil.sendTemplateMessage(openid, WechatConsts.templetid01, username, date, url);
					}
				});
				t.start();
			}

		} catch (Exception e) {
			System.out.println("-------------解析信息发生异常--------------");
		}
	}
}
