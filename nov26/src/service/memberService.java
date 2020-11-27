package service;

import static dao.MemberDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.MemberDAO;
import dto.MemberDTO;

public class memberService {

	MemberDAO dao = getInstance();
	Connection con = getConnection();
	
	public int memberJoin(MemberDTO member) {
		
		System.out.println(con);
		dao.setConnection(con);
		
		int result = dao.memberJoin(member);
		// dao에서 return 받은 값
		
		if(result>0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

}
