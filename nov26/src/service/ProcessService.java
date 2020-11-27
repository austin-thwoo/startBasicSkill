package service;

import static dao.MemberDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.MemberDAO;
import dto.MemberDTO;
import static db.JdbcUtil.*;
public class ProcessService {

//	public MemberDTO Modify(String userId) {
//
//			// 공통부분
//			MemberDAO dao = getInstance();
//			Connection con = getConnection();
//			dao.setConnection(con);
//			// 여기까지
//
//			MemberDTO memberView = dao.memberModify(userId);
//			close(con);
//
//			return memberView;
//
//
//	}

	public int Modify(MemberDTO memberDTO) {
		// 공통부분
					MemberDAO dao = getInstance();
					Connection con = getConnection();
					dao.setConnection(con);
					// 여기까지

					int ModiResult = dao.memberModify(memberDTO);
					if (ModiResult==1) {
					commit(con);
					}else {
						rollback(con);
					}

					return ModiResult;
	}

}
