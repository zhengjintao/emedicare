package com.bwc.biz.emedicare.common;

public class StringUtil {
	public static String padLeft(String src, int len, char ch) {
	    int diff = len - src.length();
        if (diff <= 0) {
            return src;
        }

        char[] charr = new char[len];
        System.arraycopy(src.toCharArray(), 0, charr, diff, src.length());
        for (int i = 0; i < diff; i++) {
            charr[i] = ch;
        }
        return new String(charr);
    }
	
	public static String valueOf(Object val){
		if(val == null){
			return "";
		}else{
			return val.toString();
		}
	}
}
