package service;

import static dao.MemberDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.MemberDAO;
import dto.MemberDTO;

public class DetailService {

	public MemberDTO memberview(String userId) {
		

		
		// 공통부분
		MemberDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		// 여기까지

		MemberDTO memberView = dao.memberView(userId);
		close(con);

		return memberView;

	}

}
