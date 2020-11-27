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
import service.ProcessService;

/**
 * Servlet implementation class ModiProcessController
 */
@WebServlet("/ModiProcessController")
public class ModiProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModiProcessController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		
		
		MemberDTO MemberDTO =new MemberDTO();
		MemberDTO.setUserNum(request.getParameter("userNum"));
		MemberDTO.setUserId(request.getParameter("userId"));
		MemberDTO.setUserName(request.getParameter("userName"));
		MemberDTO.setUserPass(request.getParameter("userPass"));
		MemberDTO.setBirthDay(request.getParameter("birthDay"));
		MemberDTO.setUserEmail(request.getParameter("userEmail"));
		MemberDTO.setUserDigit(request.getParameter("userDigit"));
		
		
		
		
		
		
		MemberDTO MemberModify=new MemberDTO();	
		ProcessService Processsvc = new ProcessService();
		int ModiResult=Processsvc.Modify(MemberModify);
		
		


		
		if(ModiResult==1) {
			response.sendRedirect("MemberList.jsp");
		} else {
			response.sendRedirect("ModiFail.jsp");
		}
		
		
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
