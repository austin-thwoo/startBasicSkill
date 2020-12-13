package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;


import dao.inputDAO;
import data.BoardInfoBean;

public class BoardListService {

	public ArrayList<BoardInfoBean> BoardList() {
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		
		ArrayList<BoardInfoBean> boardlist = dao.BoardList();
		close(con);
		
		
		return boardlist;
	}

}
