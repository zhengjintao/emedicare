package com.bwc.biz.emedicare.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_01;
import com.bwc.biz.emedicare.bkdetaildata.BKDetailData_02;
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
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList03", detaildata02.getDateValue(userid, historydate));
		}else if("04".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList04", detaildata02.getDateValue(userid, historydate));
		}else if("05".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList05", detaildata02.getDateValue(userid, historydate));
		}else if("06".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList06", detaildata02.getDateValue(userid, historydate));
		}else if("07".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList07", detaildata02.getDateValue(userid, historydate));
		}else if("08".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList08", detaildata02.getDateValue(userid, historydate));
		}else if("09".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList09", detaildata02.getDateValue(userid, historydate));
		}else if("10".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList10", detaildata02.getDateValue(userid, historydate));
		}else if("11".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList11", detaildata02.getDateValue(userid, historydate));
		}else if("12".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList12", detaildata02.getDateValue(userid, historydate));
		}else if("13".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList13", detaildata02.getDateValue(userid, historydate));
		}else if("14".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList14", detaildata02.getDateValue(userid, historydate));
		}else if("15".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList15", detaildata02.getDateValue(userid, historydate));
		}else if("16".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList16", detaildata02.getDateValue(userid, historydate));
		}else if("17".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList17", detaildata02.getDateValue(userid, historydate));
		}else if("18".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList18", detaildata02.getDateValue(userid, historydate));
		}else if("19".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList19", detaildata02.getDateValue(userid, historydate));
		}else if("20".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList20", detaildata02.getDateValue(userid, historydate));
		}else if("21".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList21", detaildata02.getDateValue(userid, historydate));
		}else if("22".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList22", detaildata02.getDateValue(userid, historydate));
		}else if("23".equals(sheetid)){
			// 健診結果報告書2数据取得
			BKDetailData_02 detaildata02 = new BKDetailData_02();
			request.setAttribute("detailDataList23", detaildata02.getDateValue(userid, historydate));
		}
	}
}
