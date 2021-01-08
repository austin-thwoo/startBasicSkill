package com.icia.memberboard;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView signup(@ModelAttribute MemberDTO dto) throws IllegalStateException, IOException {
		mav=memberService.signuptry(dto);

		return mav;

	}
	//로그인 셀렉트하러가는 메소드
	@RequestMapping(value = "/signintry")
	public ModelAndView signin(@ModelAttribute MemberDTO dto) {
		System.out.println("이곳은 멤버컨트롤러입니다1."+dto.toString());
		mav = memberService.signintry(dto);
		System.out.println("이곳은 멤버컨트롤러입니다2."+dto.toString());
		
		return mav;
	}


	//멤버리스트 보러가는 메소드
	@RequestMapping(value = "/memberlist")
	public ModelAndView vml() {
		mav=new ModelAndView();
		mav=memberService.memberlist();



		return mav;
	}


	//멤버상세 보기ajax	
	@RequestMapping(value = "/memberviewajax")
	public @ResponseBody MemberDTO memberviewajax(@RequestParam("mb_code") String mb_code) {
		MemberDTO memberview = memberService.memberviewajax(mb_code);


		return memberview;

	}
	
	

	//아이디 중복확인


	@RequestMapping(value = "/idoverlap")
	public @ResponseBody String idOverlap(@RequestParam("mb_code") String mb_code) {
		System.out.println( "ajax로 넘어온값" + mb_code);
		String resultMsg=memberService.idOverlap(mb_code);
		
		
		return resultMsg;
		
	}
	//vml에서 멤버 삭제
	@RequestMapping(value = "/memberdel")
	public ModelAndView memberdel(@RequestParam("mb_code") String mb_code) {
		mav = new ModelAndView();
		
		mav=memberService.viewdel(mb_code);

		return mav;
		}	
}
