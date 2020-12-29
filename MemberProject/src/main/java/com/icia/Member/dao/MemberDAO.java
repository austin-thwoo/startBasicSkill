package com.icia.Member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.Member.dto.MemberDTO;
@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public int insertDB(MemberDTO dto) {
		
		int result=sql.insert("Member.insertDB", dto);
		//
		
		return result;
	}

}
