package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.userInfobean;
import service.joinservice;

/**
 * Servlet implementation class Join
 */
@WebServlet("/memberJoinController")
public class memberJoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberJoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		userInfobean uib = new userInfobean();
		
		uib.setUserId(request.getParameter("userId"));
		uib.setUserPass(request.getParameter("userPass"));
		uib.setUserName(request.getParameter("userName"));
		uib.setUserGender(request.getParameter("userGender"));
		
		

		joinservice jsvc = new joinservice();
		int result = jsvc.memberjoin(uib);
		if (result==1) {
			RequestDispatcher rd = request.getRequestDispatcher("inputSuccess.jsp");
			rd.forward(request, response);
		}else {RequestDispatcher rd = request.getRequestDispatcher("inputFail.jsp");
		rd.forward(request, response);}
	}
}
