package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MemberDTO;
import service.DetailService;
import service.ModifyService;

/**
 * Servlet implementation class ModifyFormController
 */
@WebServlet("/ModifyFormController")
public class ModifyFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyFormController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String userId=request.getParameter("userId");
		
		
		MemberDTO MemberModify=new MemberDTO();	
		ModifyService Modifysvc = new ModifyService();
		MemberModify=Modifysvc.Modify(userId);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("MemberModify.jsp");
		request.setAttribute("MemberModify", MemberModify);
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
