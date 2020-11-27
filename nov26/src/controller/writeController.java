//package controller;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//
//import dto.BoardDTO;
//
///**
// * Servlet implementation class writeController
// */
//@WebServlet("/boardWrite")
//public class writeController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public writeController() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//    protected void doprocess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//	
//		int size = 10 * 1024 * 1024; // 파일 용량 10MB
//		String savePath = "D:/Java/boardTes/WebContent/fileUpload"; // 저장경로
//		
//		MultipartRequest multi = new MultipartRequest(
//				request,	// 담아온 정보 사용하기 위해
//				savePath,	// 저장경로
//				size,		// 용량
//				"UTF-8",	// 인코딩방식
//				new DefaultFileRenamePolicy()// 중복된 파일 이름 바꾸기  img, img(1), img2
//				);
//    
//    	BoardDTO board = new BoardDTO();
//    
//    	board.setName(multi.getParameter("name"));
//		board.setPass(multi.getParameter("pass"));
//		board.setTitle(multi.getParameter("title"));
//		board.setText(multi.getParameter("text"));
//		board.setFile(multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
//		
//    	
//    	
//    	
//    	
//    	
//    	
//    	
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doprocess(request, response);
//
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doprocess(request, response);
//	}
//
//}
