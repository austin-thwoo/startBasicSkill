package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.BoardInfoBean;
import data.UserInfoBean;
import service.ViewService;

/**
 * Servlet implementation class ViewController
 */
@WebServlet("/boardView")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewController() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		UserInfoBean uib = new UserInfoBean();
		int bdNum = Integer.parseInt(request.getParameter("bdNum"));
		String page = request.getParameter("page");
		
		ViewService viewsvc = new ViewService();
		BoardInfoBean  board = viewsvc.BoardView(bdNum); 
		
		if(board != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("BoardView.jsp");
			request.setAttribute("userID", uib.getUserID());
			
			request.setAttribute("view", board);
			request.setAttribute("page", page);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("BoardWrite.jsp");
		}
		
	}

}


