package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.BoardInfoBean;
import data.UserInfoBean;
import service.BoardListService;



@WebServlet("/bList")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListController() {
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
		
		
		BoardListService listsvc = new BoardListService();
		ArrayList<BoardInfoBean> boardlist = listsvc.BoardList();
		UserInfoBean uib= new UserInfoBean();
		if(boardlist != null) {
			request.setAttribute("board", boardlist);
			request.setAttribute("userID", uib.getUserID());
			
			
			RequestDispatcher dispatcher 
			= request.getRequestDispatcher("BoardList.jsp");
			
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("BoardWrite.jsp");
		}
    }

}
