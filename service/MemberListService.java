package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.inputDAO;

import data.UserInfoBean;

public class MemberListService {

	public ArrayList<UserInfoBean> memberView() {
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		ArrayList<UserInfoBean> MemberList;
		
		MemberList = dao.MemberList();
		
		close(con);
		return MemberList;
	}

	public UserInfoBean memberDetail(String userID) {
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		UserInfoBean uib = dao.MemberDetail(userID);
		
		close(con);
		
		
		return uib;
	}

}
