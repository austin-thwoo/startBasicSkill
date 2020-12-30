package com.icia.Member.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

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

	public MemberDTO selectDB(MemberDTO dto){
		
		return sql.selectOne("Member.selectDB", dto);
		  
		
	}



	public List<MemberDTO> memberList() {
		
		return sql.selectList("Member.memberList");
	}

	public MemberDTO memberdetail(String mid) {
		
		return sql.selectOne("Member.memberDetail", mid);
	}

	public int memberdel(String mid) {
		int result=sql.delete("Member.memberDel", mid);
		return result;
	}

	public int updatememberinfo(MemberDTO dto) {
		int updateResult=sql.update("Member.memberModi", dto);
		return updateResult;
	
	}

	



}
