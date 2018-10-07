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
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_19;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_20;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_21;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_22;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_23;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_24;
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
		String historydate = request.getParameter("historydate");
		String name = request.getParameter("name");
		String jspname = String.format("exploratorydetail%s.jsp", sheetid);
		String historyno = request.getParameter("historyno");
		request.setAttribute("historydate", historydate);
		request.setAttribute("historyno", historyno);
		request.setAttribute("name", name);
		
		HttpSession session = request.getSession();
		User userinfo = (User)session.getAttribute("userinfo");
		this.getDispData(request, userinfo.getUserId(), historydate, historyno);
		request.getRequestDispatcher(jspname).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void getDispData(HttpServletRequest request,String userid,String historydate, String historyno){
		String sheetid = request.getParameter("sheetid");
		sheetid = sheetid ==null || sheetid.length() ==0 ? "01" : sheetid;
		if("01".equals(sheetid)){
			// 健診結果報告書１数据取得
			BKDetailData_01 detaildata01 = new BKDetailData_01(null, userid, historydate, historyno);
			request.setAttribute("detailDataList01", detaildata01.getDateValue());
		}else if("02".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02(null, userid, historydate, historyno);
			request.setAttribute("detailDataList02", detaildata02.getDateValue());
		}else if("03".equals(sheetid)){
			// 健診結果報告書3数据取得
			BKDetailData_03 detaildata03 = new BKDetailData_03(null, userid, historydate, historyno);
			request.setAttribute("detailDataList03", detaildata03.getDateValue());
		}else if("04".equals(sheetid)){
			// 健診結果報告書4数据取得
			BKDetailData_04 detaildata04 = new BKDetailData_04(null, userid, historydate, historyno);
			request.setAttribute("detailDataList04", detaildata04.getDateValue());
		}else if("05".equals(sheetid)){
			// 健診結果報告書5数据取得
			BKDetailData_05 detaildata05 = new BKDetailData_05(null, userid, historydate, historyno);
			request.setAttribute("detailDataList05", detaildata05.getDateValue());
		}else if("06".equals(sheetid)){
			// 健診結果報告書6数据取得
			BKDetailData_06 detaildata06 = new BKDetailData_06(null, userid, historydate, historyno);
			request.setAttribute("detailDataList06", detaildata06.getDateValue());
		}else if("07".equals(sheetid)){
			// 健診結果報告書7数据取得
			BKDetailData_07 detaildata07 = new BKDetailData_07(null, userid, historydate, historyno);
			request.setAttribute("detailDataList07", detaildata07.getDateValue());
		}else if("08".equals(sheetid)){
			// 健診結果報告書8数据取得
			BKDetailData_08 detaildata08 = new BKDetailData_08(null, userid, historydate, historyno);
			request.setAttribute("detailDataList08", detaildata08.getDateValue());
		}else if("09".equals(sheetid)){
			// 健診結果報告書9数据取得
			BKDetailData_09 detaildata09 = new BKDetailData_09(null, userid, historydate, historyno);
			request.setAttribute("detailDataList09", detaildata09.getDateValue());
		}else if("10".equals(sheetid)){
			// 健診結果報告書10数据取得
			BKDetailData_10 detaildata10 = new BKDetailData_10(null, userid, historydate, historyno);
			request.setAttribute("detailDataList10", detaildata10.getDateValue());
		}else if("11".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_11 detaildata11 = new BKDetailData_11(null, userid, historydate, historyno);
			request.setAttribute("detailDataList11", detaildata11.getDateValue());
		}else if("12".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_12 detaildata12 = new BKDetailData_12(null, userid, historydate, historyno);
			request.setAttribute("detailDataList12", detaildata12.getDateValue());
		}else if("13".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_13 detaildata13 = new BKDetailData_13(null, userid, historydate, historyno);
			request.setAttribute("detailDataList13", detaildata13.getDateValue());
		}else if("14".equals(sheetid)){
			// 健診結果報告書14数据取得
			BKDetailData_14 detaildata14 = new BKDetailData_14(null, userid, historydate, historyno);
			request.setAttribute("detailDataList14", detaildata14.getDateValue());
		}else if("15".equals(sheetid)){
			// 健診結果報告書15数据取得
			BKDetailData_15 detaildata15 = new BKDetailData_15(null, userid, historydate, historyno);
			request.setAttribute("detailDataList15", detaildata15.getDateValue());
		}else if("16".equals(sheetid)){
			// 健診結果報告書16数据取得
			BKDetailData_16 detaildata16 = new BKDetailData_16(null, userid, historydate, historyno);
			request.setAttribute("detailDataList16", detaildata16.getDateValue());
		}else if("17".equals(sheetid)){
			// 健診結果報告書17数据取得
			BKDetailData_17 detaildata17 = new BKDetailData_17(null, userid, historydate, historyno);
			request.setAttribute("detailDataList17", detaildata17.getDateValue());
		}else if("18".equals(sheetid)){
			// 健診結果報告書18数据取得
			BKDetailData_18 detaildata18 = new BKDetailData_18(null, userid, historydate, historyno);
			request.setAttribute("detailDataList18", detaildata18.getDateValue());
		}else if("19".equals(sheetid)){
			// 健診結果報告書19数据取得
			BKDetailData_19 detaildata19 = new BKDetailData_19(null, userid, historydate, historyno);
			request.setAttribute("detailDataList19", detaildata19.getDateValue());
		}else if("20".equals(sheetid)){
			// 健診結果報告書20数据取得
			BKDetailData_20 detaildata20 = new BKDetailData_20(null, userid, historydate, historyno);
			request.setAttribute("detailDataList20", detaildata20.getDateValue());
		}else if("21".equals(sheetid)){
			// 健診結果報告書21数据取得
			BKDetailData_21 detaildata21 = new BKDetailData_21(null, userid, historydate, historyno);
			request.setAttribute("detailDataList21", detaildata21.getDateValue());
		}else if("22".equals(sheetid)){
			// 健診結果報告書22数据取得
			BKDetailData_22 detaildata22 = new BKDetailData_22(null, userid, historydate, historyno);
			request.setAttribute("detailDataList22", detaildata22.getDateValue());
		}else if("23".equals(sheetid)){
			// 健診結果報告書23数据取得
			BKDetailData_23 detaildata23 = new BKDetailData_23(null, userid, historydate, historyno);
			request.setAttribute("detailDataList23", detaildata23.getDateValue());
		}else if("24".equals(sheetid)){
			// 健診結果報告書23数据取得
			BKDetailData_24 detaildata24 = new BKDetailData_24(userid, historydate, historyno, null, null);
			request.setAttribute("detailDataList24", detaildata24.getPathValue());
		}
	}
}
