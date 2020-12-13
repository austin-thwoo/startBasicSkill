package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.BoardInfoBean;
import service.BoardUpdateService;


/**
 * Servlet implementation class ProcessController
 */
@WebServlet("/BoardUpdateController")
public class BoardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateController() {
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
		
		BoardInfoBean board = new BoardInfoBean();
		
		board.setBdNum(Integer.parseInt(request.getParameter("bdNum")));
		board.setBdMbcode(request.getParameter("userID"));
		board.setBdPass(request.getParameter("bdPass"));
		board.setBdTitle(request.getParameter("bdTitle"));
		board.setBdText(request.getParameter("bdText"));
		
		BoardUpdateService BoardUpdatesvc = new BoardUpdateService();
		int proResult = BoardUpdatesvc.BoardUpdate(board);
		
		if(proResult>0) {
			response.sendRedirect("bList");
		} else {
			response.sendRedirect("BoardModiForm.jsp");
		}
	}

}
