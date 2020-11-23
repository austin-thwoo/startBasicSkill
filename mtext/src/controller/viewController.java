package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.memberDTO;
import dto.memberDTO;
import service.ViewService;

/**
 * Servlet implementation class viewController
 */
@WebServlet("/memberView")
public class viewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewController() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html; charset=UTF-8");
    	
    	String userId1 = request.getParameter("userId1");
    	System.out.println("userId1 : " + userId1);
//    	memberView?userId1=${mem.userId1}
//    	memberView는 controller로 가는 주소
//    	userId1은 input 태그로 볼때 name 속성
//    	${mem.userId1}는 input태그로 볼때 입력한 값 or value값
    	
    	memberDTO memberView = new memberDTO();
    	
    	ViewService viewsvc=new ViewService();
    	memberView = viewsvc.memberView(userId1);
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("memberView.jsp");
    	request.setAttribute("memberView", memberView);//번째memberView는 jsp에서 사용할꺼 두번째는 우리가 넘겨준는 변수이름
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
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

}
