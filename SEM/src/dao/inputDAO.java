package dao;

import java.sql.*;
import static db.JdbcUtil.*;
import data.UserInfoBean;


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

			// db실행 => 결과를 daoResult에 담기
			daoResult = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return daoResult;
	}
	public int LogIn(UserInfoBean uib) {
		int result = 0;

		String sql = "SELECT * FROM MEMBERS WHERE MB_CODE = ? AND MB_PASS = ?";



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

}
