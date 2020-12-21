package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static db.JdbcUtil.*;

public class DAO {
	
	private static DAO dao;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public static DAO getInstance() {
		if(dao==null) {
			dao = new DAO();
		}
		return dao;
	}
	
	public void setConnection(Connection con) {
		this.con = con;
	}

	
	// �븘�씠�뵒 以묐났 泥댄겕
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








