package service;

import static dao.memberDAO.getInstance;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.memberDAO;
import dto.memberDTO;

public class ViewService {

		public memberDTO memberView(String userId1) {
			memberDAO dao = getInstance();
			Connection con = getConnection();
			dao.setConnection(con);
		 
			
			memberDTO memberView = dao.memberView(userId1);
			
			return memberView;
			
	}
	
	
	
}
