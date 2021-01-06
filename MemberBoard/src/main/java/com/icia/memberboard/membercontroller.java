package com.icia.memberboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icia.memberboard.dto.MemberDTO;
import com.icia.memberboard.service.MemberService;

@Controller

public class membercontroller {
	public ModelAndView mav;
	
	@Autowired
	private MemberService memberService;
	//회원가입 인서트하러가는 메소드
	@RequestMapping(value = "/signuptry")
	public ModelAndView signup(@ModelAttribute MemberDTO dto) {
		mav=memberService.signuptry(dto);
	
	return mav;
	
	}
	//로그인 셀렉트하러가는 메소드
	@RequestMapping(value = "/signintry")
	public ModelAndView signin(@ModelAttribute MemberDTO dto) {
		mav=new ModelAndView();
		mav=memberService.signintry(dto);
		
	return mav;
	}
	
	
	//멤버리스트 보러가는 메소드
	@RequestMapping(value = "/memberlist")
	public ModelAndView vml() {
		mav=new ModelAndView();
		
		
		mav.setViewName("vmlForm");
		
	return mav;
	}
	
}
