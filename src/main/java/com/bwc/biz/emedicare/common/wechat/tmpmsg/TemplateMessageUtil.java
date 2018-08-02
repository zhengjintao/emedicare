package com.bwc.biz.emedicare.common.wechat.tmpmsg;

import org.json.JSONObject;

import com.bwc.biz.emedicare.common.Consts;
import com.bwc.biz.emedicare.common.wechat.AccessTokenGeter;
import com.bwc.biz.emedicare.common.wechat.HttpRequestor;
import com.bwc.biz.emedicare.common.wechat.URLProducer;

public class TemplateMessageUtil {
	// 发送模板消息
	public static String sendTemplateMessage(String touser, String template_id, String date) {
		String msg = "--Begin set accesstoken--<br>";
		String token = AccessTokenGeter.getStrAccessToken();
		String sendUrl = URLProducer.GetTemplateSendUrl(token);
		String url = Consts.DomainURL + "/emedicare/login.do?from=1";
		 msg = msg+ "--url" + sendUrl +"<br>";
		// data
		JSONObject dataJson = new JSONObject();
		// first
		JSONObject fstJson = new JSONObject();
		fstJson.put("value", "您好，请注意确认您下次体检日期");
		// keyword1 体检日期
		JSONObject k1Json = new JSONObject();
		k1Json.put("value", date);
		// keyword2 体检地点
		JSONObject k2Json = new JSONObject();
		k2Json.put("value", "日本东京");
		// keyword3 体检套餐
		JSONObject k3Json = new JSONObject();
		k3Json.put("value", "BIT精密体检");
		// keyword4 自选项目
		JSONObject k4Json = new JSONObject();
		k4Json.put("value", "BIT精密体检");
		// remark
		JSONObject rmkJson = new JSONObject();
		rmkJson.put("value", "请注意不要错过体检时间，若有任何问题请尽早联系客服。");
		
		dataJson.put("first", fstJson);
		dataJson.put("keyword1", k1Json);
		dataJson.put("keyword2", k2Json);
		dataJson.put("keyword3", k3Json);
		dataJson.put("keyword4", k4Json);
		dataJson.put("remark", rmkJson);
		
		JSONObject jsonmsg = new JSONObject();
		jsonmsg.put("touser", touser);
		jsonmsg.put("template_id", template_id);
		jsonmsg.put("url", url);
		jsonmsg.put("data", dataJson);
		msg = msg + "<br>" + "--begin send temp message" + jsonmsg.toString() + "<br>";
		try {
			String rep = HttpRequestor.httpPostProc(sendUrl, jsonmsg);
			
			msg = msg + "<br>" + "--Success send temp message" + "<br>";
			msg = msg + "<br>" + "--respone data" + rep + "<br>";
		} catch (Exception e) {
			e.printStackTrace();
			msg = msg + "<br>" + "--Failed send temp message" + e.getMessage() + "<br>";
		}
		
		return msg;
	}
}
