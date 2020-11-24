//package service;
//
//
//import java.sql.Connection;
//
//import dao.BoardDAO;
//import db.JdbcUtil;
//import dto.BoardDTO;
//
//public class WirteService {
//	public boolean WirteService(BoardDTO dto) {
//		BoardDAO dao = BoardDAO.getInstance();
//		Connection con = JdbcUtil.getConnection();
//		dao.setConnection(con);
//
//		boolean svcResult = false;
//		boolean aa = false;
//		aa = dao.InputDB(dto);
//		if(aa) {
//			JdbcUtil.commit(con);
//			svcResult = true;
//			JdbcUtil.close(con);
//		}else {
//			JdbcUtil.rollback(con);
//			JdbcUtil.close(con);
//		}
//		return svcResult;
//	}
//
//}