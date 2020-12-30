package com.icia.Member;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.accept.ServletPathExtensionContentNegotiationStrategy;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
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
	private HttpSession session;
	
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
	
	@RequestMapping(value = "/logintry", method = RequestMethod.GET)
	public ModelAndView logintry(@ModelAttribute MemberDTO dto) {
		
		mav=memberService.login(dto);
		
		
		return mav;
	
}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		// 여기서 login.jsp이동한다.
		return "login";

	
}
	
	
@RequestMapping(value = "/viewmemberList", method = RequestMethod.GET)
	public ModelAndView viewmemberForm(Locale locale, Model model) {
	MemberDTO member = new MemberDTO();
	mav= new ModelAndView();
		
	mav =memberService.viewmemberlist();
	
	
	
	// 여기서 viewmemberForm.jsp이동한다.
		return mav;
		}	



@RequestMapping(value = "/memberdetail", method = RequestMethod.GET)
public ModelAndView viewmemberdetail(@RequestParam("mid") String mid) {
	mav = new ModelAndView();
	MemberDTO member = new MemberDTO();

	member = memberService.viewdetail(mid);
	
	mav.addObject("member",member);
	mav.setViewName("memberDetailForm");
	
	return mav;
	}		

@RequestMapping(value = "/memberdel", method = RequestMethod.GET)
public ModelAndView memberdel(@RequestParam("mid") String mid) {
	mav = new ModelAndView();
	
	mav=memberService.viewdel(mid);

	return mav;
	}		
@RequestMapping(value = "/membermodi", method = RequestMethod.GET)
public ModelAndView membermodi(@RequestParam("mid") String mid) {
	mav = new ModelAndView();
	MemberDTO member = new MemberDTO();

	member = memberService.viewdetail(mid);
	
	mav.addObject("member",member);
	mav.setViewName("membermodiForm");
	
	return mav;
	}	

@RequestMapping(value = "/updatemember", method = RequestMethod.GET)
public ModelAndView updatemember(@ModelAttribute MemberDTO dto)  {
	System.out.println("homcontroller : " + dto.toString());
	mav = new ModelAndView();
	
	mav=memberService.updatemember(dto);

	return mav;
	}



}