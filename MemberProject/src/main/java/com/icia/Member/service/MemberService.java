package com.icia.Member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.Member.dao.MemberDAO;
import com.icia.Member.dto.MemberDTO;

@Service
public class MemberService {
	@Autowired
	MemberDAO memberdao;
	int result;
	private ModelAndView mav;

	public int insertMember(MemberDTO dto) {

		result =memberdao.insertDB(dto);
		return result;
	}
	
	


}
