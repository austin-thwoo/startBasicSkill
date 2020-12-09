package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.GoodsInfoBean;
import data.UserInfoBean;
import service.joinservice;
import service.storeService;

/**
 * Servlet implementation class StoreManagement
 */
@WebServlet("/StoreManagement")
public class StoreManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreManagement() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html;charset=UTF-8");
		
		UserInfoBean uib = new UserInfoBean();
		storeService stService = new storeService();
		ArrayList<GoodsInfoBean> GoList;
		RequestDispatcher dispatcher = request.getRequestDispatcher("StoreManage.jsp");
		
		
		uib.setUserID(request.getParameter("userId"));
		
		GoList = stService.getGoodsList(uib);
		
		//System.out.println("go코드"+GoList.get(0).getGoCode());
		//stcode필요
		request.setAttribute("GoList", GoList);
		request.setAttribute("userId", request.getParameter("userId"));
		request.setAttribute("Stcode", uib.getStoreCode());
		dispatcher.forward(request, response);
		
		
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}

}
