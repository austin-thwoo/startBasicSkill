package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.inputDAO;
import data.userInfobean;

public class joinservice {

	public int memberjoin(userInfobean uib) {
		int result=0;
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		result = dao.Join(uib);
		if (result>0) {
			commit(con);
			close(con);

		}else {rollback(con);}
		return result;
	}

}
