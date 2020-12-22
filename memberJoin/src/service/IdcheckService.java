package service;

import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.inputDAO;

public class IdcheckService {

	public String IdCheck(String userId) {
		inputDAO dao= inputDAO.getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		String checkResult = dao.IdCheck(userId);
		
		
		
		return checkResult;
	}

}
