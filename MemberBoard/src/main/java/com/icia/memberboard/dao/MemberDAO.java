package com.icia.memberboard.dao;

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


	

}
