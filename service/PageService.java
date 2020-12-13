package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.inputDAO;
import data.BoardInfoBean;


public class PageService {
	
	inputDAO dao = getInstance();
	Connection con = getConnection();
	
	public int ListCount() {
		
		
		
		
		int listCount = dao.ListCount();
		close(con);

		return listCount;
	}
	
	public ArrayList<BoardInfoBean> BoardList(int startRow, int endRow) {
ArrayList<BoardInfoBean> boardList =  dao.BoardList(startRow, endRow);
		
		close(con);
		
		return boardList;
	}

	

	

}
