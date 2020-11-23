package service;

import java.sql.Connection;

import dao.memberDAO;
import dto.memberDTO;

import static dao.memberDAO.*;
import static db.JdbcUtil.*;

public class LoginService {

	public String memberLogin(memberDTO member) {
		memberDAO dao = getInstance();
		Connection con = getConnection();
		System.out.println("login2.service");
		dao.setConnection(con);
		
		String loginId = dao.memberLogin(member);
		close(con);
		System.out.println("login4.loginservice loginId :" +loginId );
		return loginId;
	}

}
