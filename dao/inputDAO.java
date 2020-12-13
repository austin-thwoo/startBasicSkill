package dao;

import java.sql.*;
import java.util.ArrayList;

import static db.JdbcUtil.*;

import data.BoardInfoBean;
import data.GoodsInfoBean;
import data.UserInfoBean;
import data.pageDTO;

import data.BoardInfoBean;
import service.BoardListService;


public class inputDAO {

	private static inputDAO dao;

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// getInstance메소드
	public static inputDAO getInstance() {

		if(dao == null) {
			dao = new inputDAO();
		}

		return dao;
	}

	// setConnection 메소드
	public void setConnection(Connection con) {
		this.con = con;
	}

	public int Join(UserInfoBean uib) {
		String sql = "INSERT INTO MEMBERS VALUES(?,?,?,TO_DATE(?,'YYYY-MM-DD'),?,?, DEFAULT)";
		int daoResult = 0;

		try {
			// sql문 작성
			pstmt = con.prepareStatement(sql);

			// ?에 값 입력

			pstmt.setString(1, uib.getUserID());
			pstmt.setString(2, uib.getUserPWD());
			pstmt.setString(3, uib.getUsername());
			pstmt.setString(4, uib.getUserbirth());
			pstmt.setString(5, uib.getUsergender());
			pstmt.setString(6, uib.getUserphone());		

			//db실행 => 결과를 daoResult에 담기
			daoResult = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return daoResult;
	}
	public int LogIn(UserInfoBean uib) {
		int result = 0;

		String sql = "SELECT MB_CODE, MB_PASS, MB_NAME, MB_BI, MB_GENDER, MB_DIGIT, LV_NAME, MB_CODE\r\n" + 
				"FROM MEMBERS\r\n" + 
				"INNER JOIN LEVELS ON MB_LEVEL = LV_CODE\r\n" + 
				"WHERE MB_CODE = ? AND MB_PASS = ?";



		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, uib.getUserID());
			pstmt.setString(2, uib.getUserPWD());

			rs = pstmt.executeQuery();

			if(rs.next()) {
				uib.setUserID(rs.getString(1));
				uib.setUsername(rs.getString(3));
				uib.setUserbirth(rs.getString(4));
				uib.setUsergender(rs.getString(5));
				uib.setUserphone(rs.getString(6));
				uib.setUserlevel(rs.getString(7));
				uib.setStoreCode(rs.getString(8));

				result = 1;
			} else {
				result = 0;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return result;

	}
	public int Modify(UserInfoBean uib) {
		int result = 0;

		String sql = "UPDATE MEMBERS SET MB_PASS = ?, MB_DIGIT = ? WHERE MB_CODE = ?";



		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, uib.getUserPWD());
			pstmt.setString(2, uib.getUserphone());
			pstmt.setString(3, uib.getUserID());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return result;

	}
	public int Delete(UserInfoBean uib) {
		int result = 0;

		String sql = "DELETE MEMBERS WHERE MB_CODE = ?";



		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, uib.getUserID());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return result;

	}

	public void overlap(UserInfoBean uib) {
		String result=null;
		String sql = "SELECT MB_CODE FROM MEMBERS WHERE MB_CODE =?";



		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, uib.getUserID());
		

			rs = pstmt.executeQuery();

			if(rs.next()) {
				
				
			result=rs.getString(1);
			uib.setOverlapCheckedId(result);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		System.out.println("inputDAO" + result);
	}

	public ArrayList<GoodsInfoBean> getGoList(UserInfoBean uib) {
		String sql="SELECT * FROM GOODS WHERE GO_STMBCODE = ?";
		ArrayList<GoodsInfoBean> GoList = new ArrayList<GoodsInfoBean>();
		GoodsInfoBean gib = null;
		System.out.println(uib.getUserID());
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, uib.getUserID());
			rs = pstmt.executeQuery();
			if(rs.next()) {
			uib.setStoreCode(rs.getString(2));
			}
			while(rs.next()) {
				gib = new GoodsInfoBean();
				
				gib.setGoCode(rs.getString(3));
				gib.setGoName(rs.getString(4));
				gib.setGoPrice(rs.getInt(5));
				gib.setGoComment(rs.getString(6));
				
				GoList.add(gib);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return GoList;
	}


public ArrayList<UserInfoBean> MemberList() {
	ArrayList<UserInfoBean> memberList = new ArrayList<UserInfoBean>();
	String sql = "SELECT * FROM MEMBERS";

	try {
		pstmt = con.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			
			UserInfoBean uib= new UserInfoBean();
			uib.setUserID(rs.getString(1));
			uib.setUserPWD(rs.getString(2));
			uib.setUsername(rs.getString(3));
			uib.setUserbirth(rs.getString(4));
			uib.setUsergender(rs.getString(5));
			uib.setUserphone(rs.getString(6));
			uib.setUserlevel(rs.getString(7));
			
			memberList.add(uib);
		
			
		}
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return memberList;
}

public UserInfoBean MemberDetail(String userID) {
	 
	String sql = "SELECT * FROM MEMBERS WHERE MB_CODE=?";
	UserInfoBean uib = new UserInfoBean();
	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userID);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			
			
			uib.setUserID(rs.getString(1));
			uib.setUserPWD(rs.getString(2));
			uib.setUsername(rs.getString(3));
			uib.setUserbirth(rs.getString(4));
			uib.setUsergender(rs.getString(5));
			uib.setUserphone(rs.getString(6));
			uib.setUserlevel(rs.getString(7));
			
		}
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return uib;
}

public ArrayList<BoardInfoBean> BoardList() {
	String sql = "SELECT * FROM BOARD";

	ArrayList<BoardInfoBean> boardlist = new ArrayList<BoardInfoBean>();
	BoardInfoBean board = null;

	try {
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			board = new BoardInfoBean();

			board.setBdMbcode(rs.getString(1));
			board.setBdNum(rs.getInt(2));
			board.setBdDate(rs.getString(3));
			board.setBdTitle(rs.getString(4));
			board.setBdText(rs.getString(5));
			board.setBdFile(rs.getString(6));
			board.setBdHit(rs.getInt(7));
			

			boardlist.add(board);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(rs);
		close(pstmt);
	}
	return boardlist;
}

public int BoardWrite(BoardInfoBean board) {
	String sql = "INSERT INTO BOARD VALUES(?,SEQ_BDCODE.NEXTVAL,SYSDATE,?,?,?,SEQ_CLICKFREQUENCY.NEXTVAL)";
	int writeResult = 0;

	try {
		System.out.println("4.DB");
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, board.getBdMbcode());
		pstmt.setString(2, board.getBdTitle());
		pstmt.setString(3, board.getBdText());
		pstmt.setString(4, board.getBdFile());
		
		writeResult = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
	}
	System.out.println("5.dao : " + writeResult);
	return writeResult;
}

public int ListCount() {
	String sql = "SELECT COUNT(*) FROM BOARD";
	int listCount = 0;

	try {
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			listCount = rs.getInt(1);
		}

	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		close(rs);
	}

	return listCount;
}

public ArrayList<BoardInfoBean> BoardList(int startRow, int endRow) {
	String sql = "SELECT * FROM BOARD WHERE RN BETWEEN ? AND ?";
	ArrayList<BoardInfoBean> boardList = new ArrayList<BoardInfoBean>();
	BoardInfoBean board= null;

	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			board = new BoardInfoBean();

			board.setBdMbcode(rs.getString(1));
			board.setBdNum(rs.getInt(2));
			board.setBdDate(rs.getString(3));
			board.setBdTitle(rs.getString(4));
			board.setBdText(rs.getString(5));
			board.setBdFile(rs.getString(6));
			board.setBdHit(rs.getInt(7));
			

			boardList.add(board);

		}

	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		close(rs);
	}
	System.out.println(boardList.toString());
	return boardList;
}

public BoardInfoBean BoardView(int bdNum) {
	BoardInfoBean board = new BoardInfoBean();
	String sql = "SELECT * FROM BOARD WHERE BD_NUM = ?";

	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, bdNum);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			board.setBdMbcode(rs.getString(1));
			board.setBdNum(rs.getInt(2));
			board.setBdDate(rs.getString(3));
			board.setBdTitle(rs.getString(4));
			board.setBdText(rs.getString(5));
			board.setBdFile(rs.getString(6));
			board.setBdHit(rs.getInt(7));
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		close(rs);
	}
	
	return board;
}
//public int BoardBhit(int bNum) {
//	String sql = "UPDATE BOARD SET SEQ_CLICKFREQUENCY = SEQ_CLICKFREQUENCY+1 WHERE BNUM=?";
//	int hitResult = 0;
//
//	try {
//		pstmt = con.prepareStatement(sql);
//		pstmt.setInt(1, bNum);
//		hitResult = pstmt.executeUpdate();
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	} finally {
//		close(pstmt);
//	}
//
//	return hitResult;
//
//
//
//}

public int UpdateBoard(BoardInfoBean board) {
	String sql = "UPDATE BOARD SET BD_MBCODE=?, BD_TITLE=?, BD_TEXT=? WHERE BD_NUM=?";
	int UpdateResult = 0;

	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, board.getBdMbcode());
		pstmt.setString(2, board.getBdTitle());
		pstmt.setString(3, board.getBdText());
		pstmt.setInt(4, board.getBdNum());
		UpdateResult = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
	}
	return UpdateResult;
}
}

