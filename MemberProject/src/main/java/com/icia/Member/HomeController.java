package com.icia.Member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.icia.Member.dto.MemberDTO;
import com.icia.Member.service.MemberService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	ModelAndView mav;
	
	@Autowired
	private MemberService memberService;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		//home.jsp
		return "home";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		
		// 여기서 join.jsp이동한다.
		return "join";
	
}
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(@ModelAttribute MemberDTO dto) {
		String gopage=null;
		int result=memberService.insertMember(dto);
		if (result>=1) {
			gopage="joinSuccess";
		}else {
			gopage="joinFail";
		}
		return gopage;
	
}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		// 여기서 login.jsp이동한다.
		return "login";
	
}
	
	
	
	
	
	
	
	
	
}