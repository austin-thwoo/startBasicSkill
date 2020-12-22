package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import data.userInfobean;

public class inputDAO {private static inputDAO dao;

Connection con;
PreparedStatement pstmt;
ResultSet rs;

public static inputDAO getInstance() {

	if(dao == null) {
		dao = new inputDAO();
	}

	return dao;
}
public void setConnection(Connection con) {
	this.con = con;
}




public int Join(userInfobean uib) {
	String sql = "INSERT INTO MEMBERT VALUES(?,?,?,?)";
	int daoResult = 0;

	try {
		// sql문 작성
		pstmt = con.prepareStatement(sql);

		// ?에 값 입력

		pstmt.setString(1, uib.getUserId());
		pstmt.setString(2, uib.getUserPass());
		pstmt.setString(3, uib.getUserName());
		pstmt.setString(4, uib.getUserGender());

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
public String IdCheck(String userId) {
	String sql = "SELECT USERID FROM MEMBERT WHERE USERID=?";
	String checkResult = null;
	
	try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			checkResult = rs.getString(1);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
	}
	System.out.println("checkResult DAO : " + checkResult);
	return checkResult;
}

}
