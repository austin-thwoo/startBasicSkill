package service;

import static dao.MemberDAO.getInstance;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import static db.JdbcUtil.*;
import com.sun.xml.internal.ws.Closeable;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberListService {
	
	public ArrayList<MemberDTO> memberView() {
		MemberDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		ArrayList<MemberDTO> MemberList;
		
		MemberList = dao.MemberList();
		close(con);
		return MemberList;
		
}
}
