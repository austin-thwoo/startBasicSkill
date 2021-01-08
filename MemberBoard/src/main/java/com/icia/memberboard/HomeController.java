package com.icia.memberboard;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icia.memberboard.dto.MemberDTO;
import com.icia.memberboard.service.MemberService;


@Controller
public class HomeController {
ModelAndView mav;

@Autowired
private HttpSession session;


	@RequestMapping(value = "/")
	public String home() {

		
		return "home";
	}
	//로그인 창으로 이동하기
	@RequestMapping(value = "/signin")
	public String loginForm() {

		
		return "signinForm";
	}
	//회원가입 창으로 간다
	@RequestMapping(value = "/signup")
	public String joinForm() {

		
		return "signupForm";
	}
	//입문자한테 추천해줄 내용
	@RequestMapping(value = "/recommendation")
	public String recommendation() {

		
		return "recommendationpage";
	}
	
	
	
	//로그아웃할거냐 물어본다

	@RequestMapping(value = "/logout")
	public String memberLogout() {
		session.invalidate();
		return "home";
		
	}
	
	
}
