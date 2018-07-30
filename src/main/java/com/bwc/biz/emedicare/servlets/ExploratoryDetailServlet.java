package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_03;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_04;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_05;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_06;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_07;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_08;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_09;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_10;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_11;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_12;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_13;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_14;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_15;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_16;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_17;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_18;
import com.bwc.biz.emedicare.form.User;

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
		String sheetid = request.getParameter("sheetid");
		sheetid = sheetid ==null || sheetid.length() ==0 ? "01" : sheetid;
		String expid = request.getParameter("expid");
		String historydate = request.getParameter("historydate");
		String name = request.getParameter("name");
		String jspname = String.format("exploratorydetail%s.jsp", sheetid);
		request.setAttribute("historydate", historydate);
		request.setAttribute("expid", expid);
		request.setAttribute("name", name);
		
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		this.getDispData(request, userinfo.getUserId(), historydate);
		request.getRequestDispatcher(jspname).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void getDispData(HttpServletRequest request,String userid,String historydate){
		String sheetid = request.getParameter("sheetid");
		sheetid = sheetid ==null || sheetid.length() ==0 ? "01" : sheetid;
		if("01".equals(sheetid)){
			// 健診結果報告書１数据取得
			BKDetailData_01 detaildata01 = new BKDetailData_01();
			request.setAttribute("detailDataList01", detaildata01.getDateValue(userid, historydate));
		}else if("02".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList02", detaildata02.getDateValue(userid, historydate));
		}else if("03".equals(sheetid)){
			// 健診結果報告書3数据取得
			BKDetailData_03 detaildata03 = new BKDetailData_03();
			request.setAttribute("detailDataList03", detaildata03.getDateValue(userid, historydate));
		}else if("04".equals(sheetid)){
			// 健診結果報告書4数据取得
			BKDetailData_04 detaildata04 = new BKDetailData_04();
			request.setAttribute("detailDataList04", detaildata04.getDateValue(userid, historydate));
		}else if("05".equals(sheetid)){
			// 健診結果報告書5数据取得
			BKDetailData_05 detaildata05 = new BKDetailData_05();
			request.setAttribute("detailDataList05", detaildata05.getDateValue(userid, historydate));
		}else if("06".equals(sheetid)){
			// 健診結果報告書6数据取得
			BKDetailData_06 detaildata06 = new BKDetailData_06();
			request.setAttribute("detailDataList06", detaildata06.getDateValue(userid, historydate));
		}else if("07".equals(sheetid)){
			// 健診結果報告書7数据取得
			BKDetailData_07 detaildata07 = new BKDetailData_07();
			request.setAttribute("detailDataList07", detaildata07.getDateValue(userid, historydate));
		}else if("08".equals(sheetid)){
			// 健診結果報告書8数据取得
			BKDetailData_08 detaildata08 = new BKDetailData_08();
			request.setAttribute("detailDataList08", detaildata08.getDateValue(userid, historydate));
		}else if("09".equals(sheetid)){
			// 健診結果報告書9数据取得
			BKDetailData_09 detaildata09 = new BKDetailData_09();
			request.setAttribute("detailDataList09", detaildata09.getDateValue(userid, historydate));
		}else if("10".equals(sheetid)){
			// 健診結果報告書10数据取得
			BKDetailData_10 detaildata10 = new BKDetailData_10();
			request.setAttribute("detailDataList10", detaildata10.getDateValue(userid, historydate));
		}else if("11".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_11 detaildata11 = new BKDetailData_11();
			request.setAttribute("detailDataList11", detaildata11.getDateValue(userid, historydate));
		}else if("12".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_12 detaildata12 = new BKDetailData_12();
			request.setAttribute("detailDataList12", detaildata12.getDateValue(userid, historydate));
		}else if("13".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata13 = new BKDetailData_13();
			request.setAttribute("detailDataList13", detaildata13.getDateValue(userid, historydate));
		}else if("14".equals(sheetid)){
			// 健診結果報告書14数据取得
			BKDetailData_14 detaildata14 = new BKDetailData_14();
			request.setAttribute("detailDataList14", detaildata14.getDateValue(userid, historydate));
		}else if("15".equals(sheetid)){
			// 健診結果報告書15数据取得
			BKDetailData_15 detaildata15 = new BKDetailData_15();
			request.setAttribute("detailDataList15", detaildata15.getDateValue(userid, historydate));
		}else if("16".equals(sheetid)){
			// 健診結果報告書16数据取得
			BKDetailData_16 detaildata16 = new BKDetailData_16();
			request.setAttribute("detailDataList16", detaildata16.getDateValue(userid, historydate));
		}else if("17".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_17 detaildata17 = new BKDetailData_17();
			request.setAttribute("detailDataList17", detaildata17.getDateValue(userid, historydate));
		}else if("18".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_18 detaildata18 = new BKDetailData_18();
			request.setAttribute("detailDataList18", detaildata18.getDateValue(userid, historydate));
		}else if("19".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata19 = new BKDetailData_13();
			request.setAttribute("detailDataList19", detaildata19.getDateValue(userid, historydate));
		}else if("20".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata20 = new BKDetailData_13();
			request.setAttribute("detailDataList20", detaildata20.getDateValue(userid, historydate));
		}else if("21".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata21 = new BKDetailData_13();
			request.setAttribute("detailDataList21", detaildata21.getDateValue(userid, historydate));
		}else if("22".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata22 = new BKDetailData_13();
			request.setAttribute("detailDataList22", detaildata22.getDateValue(userid, historydate));
		}else if("23".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata23 = new BKDetailData_13();
			request.setAttribute("detailDataList23", detaildata23.getDateValue(userid, historydate));
		}
	}
}
