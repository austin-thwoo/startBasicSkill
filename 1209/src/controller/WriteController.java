package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import data.BoardInfoBean;
import service.WriteService;


@WebServlet("/boardWriteController")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WriteController() {
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
		System.out.println("1.controller");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 파일업로드 설정부분
		int size = 10 * 1024 * 1024; // 파일 용량 10MB
		String savePath = "C:/Download/이클립스/1209/WebContent/kuk"; // 저장경로
		
							
		MultipartRequest multi = new MultipartRequest(request, savePath, size, "UTF-8",	new DefaultFileRenamePolicy());
		
		
		BoardInfoBean board = new BoardInfoBean();
		
		board.setBdMbcode(multi.getParameter("BdWriter"));
		board.setBdPass(multi.getParameter("BdPass"));
		board.setBdTitle(multi.getParameter("BdTitle"));
		board.setBdText(multi.getParameter("BdText"));
		board.setBdFile(multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		
		
		System.out.println("1-1." +board.toString());
		
		WriteService writesvc = new WriteService();
		int writeResult = writesvc.bWrite(board);
		System.out.println("7.controller : " + writeResult);
		
		if(writeResult>0) {
			response.sendRedirect("pagingsList");
		} else {
			response.sendRedirect("WriteFail.jsp");
		}
	}

}
