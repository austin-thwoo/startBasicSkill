package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.inputDAO;
import data.BoardInfoBean;

public class BoardUpdateService {

	public int BoardUpdate(BoardInfoBean board) {
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		
		int UpdateResult = dao.UpdateBoard(board);

		if(UpdateResult>0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return UpdateResult;
		
	}

}
