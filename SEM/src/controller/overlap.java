package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.UserInfoBean;
import service.joinservice;

/**
 * Servlet implementation class test
 */
@WebServlet("/overlap")
public class overlap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public overlap() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("overlap.java");
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		UserInfoBean uib = new UserInfoBean();
		uib.setUserID(request.getParameter("ident"));
		
		int serviceCode = 3;
		joinservice osvc = new joinservice();
		osvc.memberjoin(uib, serviceCode);
		String result;
		result= uib.getOverlapCheckedId();
		
		PrintWriter out = response.getWriter();
		if (result!=null) {
			out.println("<script>alert('사용불가');</script>");
			System.out.println("오버랩자바 1 아이디 중복임");

			System.out.println("오버랩자바 2");
			System.out.println(result);
			RequestDispatcher rd = request.getRequestDispatcher("join2.jsp");
			request.setAttribute("overlap",result );// result = 중복된 아이디
			request.setAttribute("check", 1);
			rd.forward(request, response);	
			System.out.println("오버랩 자바 222");
			out.close();
		}else if(result==null) {
			out.println("<script>alert('사용가능');</script>");
			
			//1
			
		System.out.println("오버랩자바 3");		
		RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
		request.setAttribute("overlap",result ); //result = null값
		request.setAttribute("check", 2);
		request.setAttribute("userId", uib.getUserID()); // input으로 입력된 아이디값 userId로 저장
		rd.forward(request, response); // 2
		System.out.println("오버랩자바 4");
		System.out.println(result);
		out.close();
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
