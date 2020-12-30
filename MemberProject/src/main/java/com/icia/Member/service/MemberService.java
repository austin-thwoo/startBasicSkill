package com.icia.Member.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	
	@Autowired
	private HttpSession session;
	public int insertMember(MemberDTO dto) {

		result =memberdao.insertDB(dto);
		return result;
	}

	public ModelAndView login(MemberDTO dto) {
	
		mav= new ModelAndView();
		
			MemberDTO result = memberdao.selectDB(dto);
		if (result!=null) {
			//로긴가능(세션에 아이디 저장, memberMAin.jsp출력)
			session.setAttribute("mid", result.getMid());
			mav.addObject(result);
			mav.setViewName("home");
		}else {
			//로긴불가
			mav.setViewName("loginFail");
		}
			
		return mav; 
	}

	public ModelAndView viewmemberlist() {
		mav= new ModelAndView();
		List<MemberDTO> memeberList=memberdao.memberList();
		mav.addObject("memeberList", memeberList);
		mav.setViewName("viewmemberForm");
		return mav;
	}

	public MemberDTO viewdetail(String mid) {
		
		return memberdao.memberdetail(mid);
		
	}

	public ModelAndView viewdel(String mid) {
		int result=memberdao.memberdel(mid);
		if (result>=1) {
			mav.setViewName("redirect:/viewmemberList");//주소를 써야함
		}else {
			mav.setViewName("memberdelFail");
		}
		return mav;
	}

	public ModelAndView updatemember(MemberDTO dto) {
		int result=memberdao.updatememberinfo(dto);
		
		if (result>=1) {
			mav.setViewName("redirect:/viewmemberList");
		}else {
			mav.setViewName("membermodiFail");
		}
		
		return mav;
	}


	


}
