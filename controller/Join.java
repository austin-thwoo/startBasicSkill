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
 * Servlet implementation class Join
 */
@WebServlet("/MemberJoin")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
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
		int serviceCode = 1;
		uib.setUsername(request.getParameter("userName"));
		uib.setUserID(request.getParameter("userID"));
		uib.setUserPWD(request.getParameter("userPassword"));
		uib.setUserbirth(request.getParameter("userDate"));
		uib.setUsergender(request.getParameter("userGender"));
		uib.setUserphone(request.getParameter("userPhone"));

		joinservice jsvc = new joinservice();
		int result = jsvc.memberjoin(uib, serviceCode);
		if (result==1) {
			RequestDispatcher rd = request.getRequestDispatcher("inputSuccess.jsp");
			
			rd.forward(request, response);
		}else {RequestDispatcher rd = request.getRequestDispatcher("inputFail.jsp");
		
		rd.forward(request, response);}
	}
}
