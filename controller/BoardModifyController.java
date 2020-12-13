package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.UserInfoBean;

/**
 * Servlet implementation class modifyController
 */
@WebServlet("/BoardModifyController")
public class BoardModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInfoBean uib =new UserInfoBean();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int bdNum = Integer.parseInt(request.getParameter("bdNum"));
		RequestDispatcher dispatcher = request.getRequestDispatcher("BoardModiForm.jsp");
		request.setAttribute("bdNum", bdNum);
		request.setAttribute("userID", uib.getUserID());
		dispatcher.forward(request, response);
		
	}

}
