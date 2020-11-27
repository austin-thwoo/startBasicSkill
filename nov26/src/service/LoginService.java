package service;

import java.sql.Connection;

import dao.MemberDAO;
import dto.MemberDTO;

import static dao.MemberDAO.*;
import static db.JdbcUtil.*;

public class LoginService {

	public String memberLogin(MemberDTO member) {
		System.out.println("2");
		MemberDAO dao = getInstance();
		Connection con = getConnection();
	
		dao.setConnection(con);
		
		String loginId = dao.memberLogin(member);
		close(con);
		
		return loginId;
	}

}
