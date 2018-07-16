package com.bwc.biz.emedicare.detailget;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bwc.biz.emedicare.common.JdbcUtil;

public class GetDetailData_01 {	
	/*
	 * 详细数据取得
	 */
	public List<String> getDateValue(String userid,String historydate){
		List<String> detailDataList = new ArrayList<String>();
		
		String dataSql = "select context from cdata_detail_01 where userid = ? and examdate= ? order by dispindex";
		Object[] params = new Object[2];
		params[0]= userid;
		params[1]= historydate;
		
		List<Object> dataList = JdbcUtil.getInstance().excuteQuery(dataSql, params);
		
		if(dataList.size()>0){
			for (Object data : dataList) {
				Map<String, Object> row = (Map<String, Object>) data;
				detailDataList.add(row.get("context").toString());
			}
		}
		
		return detailDataList;
	} 
}
