package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MemberDTO;
import service.memberService;

/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MemberDTO MemberDTO =new MemberDTO();
		
		MemberDTO.setUserId(request.getParameter("userId"));
		MemberDTO.setUserName(request.getParameter("userName"));
		MemberDTO.setUserPass(request.getParameter("userPass"));
		MemberDTO.setBirthDay(request.getParameter("birthDay"));
		MemberDTO.setUserEmail(request.getParameter("userEmail"));
		MemberDTO.setUserDigit(request.getParameter("userDigit"));
		System.out.println(MemberDTO.getBirthDay() +"조인컨트롤러");
		memberService joinsvc = new memberService();
		int result=joinsvc.memberJoin(MemberDTO);
		if (result==1) {
			response.sendRedirect("joinSuccess.jsp");
		}else {
			response.sendRedirect("joinFail.jsp");
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
