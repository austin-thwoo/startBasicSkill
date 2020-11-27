package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.MemberDTO;


public class MemberDAO {
	private static MemberDAO dao;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// getInstance메소드
	public static MemberDAO getInstance() {
		if (dao == null) {
			dao = new MemberDAO();
		}
		return dao;
	}

	// setConnection 메소드
	public void setConnection(Connection con) {
		this.con = con;
	}

	// 회원가입 dao
	public int memberJoin(MemberDTO member) {
		
		String sql = "INSERT INTO MEMBER VALUES(MEMBER_NUMBER.NEXTVAL,?,?,?,?,?,?)";
		int result = 0;
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserName());
			pstmt.setString(3, member.getUserPass());
			pstmt.setString(4, member.getBirthDay());
			pstmt.setString(5, member.getUserEmail());
			pstmt.setString(6, member.getUserDigit());
				
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public String memberLogin(MemberDTO member) {
		System.out.println("3");
		String sql = "SELECT USERID FROM MEMBER WHERE USERID=? AND USERPASS=?";
		String loginId=null;
		try {
			System.out.println(member.toString());
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPass());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				loginId = rs.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
		close(pstmt);
		}
		System.out.println("dao :  " +loginId); 
		return loginId;
		
	
	}

	public ArrayList<MemberDTO> MemberList() {
		
		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
		String sql = "SELECT * FROM MEMBER";

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("db들어감");
			while(rs.next()) {
				MemberDTO MemberDTO= new MemberDTO();
				MemberDTO.setUserNum(rs.getString(1));
				MemberDTO.setUserId(rs.getString(2));
				MemberDTO.setUserName(rs.getString(3));
				MemberDTO.setUserPass(rs.getString(4));
				MemberDTO.setBirthDay(rs.getString(5));
				MemberDTO.setUserEmail(rs.getString(6));
				MemberDTO.setUserDigit(rs.getString(7));
				
				memberList.add(MemberDTO);
			
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return memberList;
	}

	public MemberDTO memberView(String userId) {
		
		MemberDTO memberView = new MemberDTO();
		String sql = "SELECT * FROM MEMBER WHERE USERID = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			
			

			if (rs.next()) {
				
				
				
				memberView.setUserNum(rs.getString(1));
				memberView.setUserId(rs.getString(2));
				memberView.setUserName(rs.getString(3));
				memberView.setUserPass(rs.getString(4));
				memberView.setBirthDay(rs.getString(5));
				memberView.setUserEmail(rs.getString(6));
				memberView.setUserDigit(rs.getString(7));
				
				
			}
			
		} catch (SQLException e) {


		}
		
		return memberView;
	}

	public int memberModify(MemberDTO memberDTO) {
		String sql = "UPDATE MEMBER SET USERNAME=?, USERPASS=?, USERBIRTHDAY=?, USEREMAIL=?, USERDIGIT=? WHERE USERID = ? ";
		int ModiResult=0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getUserName());
			pstmt.setString(2, memberDTO.getUserPass());
			pstmt.setString(3, memberDTO.getBirthDay());
			pstmt.setString(4, memberDTO.getUserEmail());
			pstmt.setString(5, memberDTO.getUserDigit());
			pstmt.setString(6, memberDTO.getUserId());
			ModiResult=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ModiResult;
	}
}
