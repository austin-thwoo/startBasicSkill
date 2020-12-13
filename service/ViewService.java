package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.inputDAO;
import data.BoardInfoBean;


public class ViewService {

	public BoardInfoBean BoardView(int bdNum) {
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		
		
		// (1)조회수 증가
//				int hitResult = dao.BoardBhit(bdNum);
//				if(hitResult>0) {
//					commit(con);
//				} else {
//					rollback(con);
//				}
//		
		BoardInfoBean board = dao.BoardView(bdNum);
		close(con);

		return board;
//	}

}
}