package com.icia.memberboard.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.memberboard.dao.MemberDAO;
import com.icia.memberboard.dto.MemberDTO;
@Service
public class MemberService {
	@Autowired
	MemberDAO dao;

	ModelAndView mav;

	@Autowired
	private HttpSession session;
	
	public ModelAndView signuptry(MemberDTO dto) {
	mav= new ModelAndView();
		int signupResult=dao.signuptry(dto);
				 if (signupResult>0) {
					//회원가입 성공

					 String alert="success";
					 mav.addObject("alert", alert);
					 
					 mav.setViewName("home");
				}else {
					//회원가입 실패
					String alert="fail";
					mav.setViewName("signupForm");
					
				}
		return mav;
	}

	public ModelAndView signintry(@ModelAttribute MemberDTO dto) {
		MemberDTO loginResult=dao.signintry(dto);
		mav= new ModelAndView();
		String signinAlert;
		if (loginResult!=null) {
			signinAlert="success";
			mav.addObject("mb_name", loginResult.getMb_name());
			mav.addObject("userlevel", loginResult.getMb_level());
			mav.addObject("signinAlert", signinAlert);
			mav.setViewName("home");	
		}else {
			signinAlert="fail";
			mav.addObject("signinAlert", signinAlert);
			mav.setViewName("signinForm");
		}
		
		
		return mav;
	}



}
