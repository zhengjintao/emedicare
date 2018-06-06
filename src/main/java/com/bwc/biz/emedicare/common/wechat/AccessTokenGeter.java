package com.bwc.biz.emedicare.common.wechat;

import org.json.JSONObject;

import com.bwc.biz.emedicare.common.wechat.meta.AccessToken;

public class AccessTokenGeter {
	private static AccessToken atcache = null;
	
	private static AccessToken getAccessToken(){
		if(atcache == null || System.currentTimeMillis() > atcache.getExpiresin()){
			JSONObject jsonObject= HttpRequestor.httpGetProc(URLProducer.GetAcessTokenUrl());
	        atcache =new AccessToken();
	        if(jsonObject!= null && jsonObject.has("access_token")){
	        	atcache.setToken(jsonObject.getString(AccessToken.AccessToken));
	        	
	        	long exp = System.currentTimeMillis() + Integer.parseInt(jsonObject.get("expires_in").toString());
	        	atcache.setExpiresin(exp);
	        }
		}
		
		return atcache;
	}
	
	public static String getStrAccessToken(){
		return getAccessToken().getToken();
	}
}
