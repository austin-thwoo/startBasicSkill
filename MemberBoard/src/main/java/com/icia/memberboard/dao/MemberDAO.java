package com.icia.memberboard.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.memberboard.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	
	public int signuptry(MemberDTO dto) {
			
		return sql.insert("Member.signup", dto);
	}


	public MemberDTO signintry(MemberDTO dto) {
		return sql.selectOne("Member.signin", dto);
		
	}


	public List<MemberDTO> memberlist() {

		return sql.selectList("Member.list");
	}


	public MemberDTO memberdetail(String mb_code) {
		
		return sql.selectOne("Member.Detail", mb_code);
	}


	public String idOverlap(String mb_code) {
	
		return sql.selectOne("Member.idOverlap", mb_code);
	}


	public int memberdel(String mb_code) {
		return 	sql.delete("Member.Delete", mb_code);
		
	}


	

}
