package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import data.UserInfoBean;
import service.MemberListService;

/**
 * Servlet implementation class MemberListController
 */
@WebServlet("/MemberListController")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListController() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html; charset=UTF-8");
    
    	MemberListService MemberListsvc = new MemberListService();
    	ArrayList<UserInfoBean> BrrList = new ArrayList<UserInfoBean>();
    	BrrList=MemberListsvc.memberView();
    	
    	
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("MemberList.jsp");
    	request.setAttribute("memberLists", BrrList);//첫번째memberView는 jsp에서 사용할꺼 두번째는 우리가 넘겨준는 변수이름
    	    	    	
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
