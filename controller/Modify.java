package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.UserInfoBean;
import service.joinservice;

/**
 * Servlet implementation class Modify
 */
@WebServlet("/Modify")
public class Modify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Modify() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		UserInfoBean uib = new UserInfoBean();
		int serviceCode = 3;
		
		uib.setUserID(request.getParameter("userid"));
		uib.setUserPWD(request.getParameter("modPwd"));
		uib.setUserphone(request.getParameter("modphone"));
		
		System.out.println(request.getParameter("userid"));
		System.out.println(request.getParameter("modPwd"));
		System.out.println(request.getParameter("modphone"));

		joinservice jsvc = new joinservice();
		jsvc.memberjoin(uib, serviceCode);

		RequestDispatcher rd = request.getRequestDispatcher("modifySuccess.jsp");

		rd.forward(request, response);

	}
}


