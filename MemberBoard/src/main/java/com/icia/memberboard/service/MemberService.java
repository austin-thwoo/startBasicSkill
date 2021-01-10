package com.icia.memberboard.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	
	public ModelAndView signuptry(MemberDTO dto) throws IllegalStateException, IOException {
	mav= new ModelAndView();
	
	MultipartFile memberfile=dto.getMb_file();
	String filename = memberfile.getOriginalFilename();
	filename = System.currentTimeMillis()+"_"+ filename;	
	String savePath= "D:\\eclip\\MemberBoard\\src\\main\\webapp\\resources\\memberIMG"+filename;
	if (!memberfile.isEmpty()) {
		memberfile.transferTo(new File(savePath));

		}

		dto.setMb_filename(filename);
	int signupResult=dao.signuptry(dto);
		
				 if (signupResult>0) {
					//회원가입 성공
					 
					 String alert="success";
					 mav.addObject("alert", alert);
					 
					 mav.setViewName("home");
				}else {
					//회원가입 실패
					String alert="fail";
					 mav.addObject("alert", alert);
					mav.setViewName("signupForm");
					
				}
		return mav;
	}

	public ModelAndView signintry(@ModelAttribute MemberDTO dto) {
		MemberDTO loginResult = dao.signintry(dto);
		mav= new ModelAndView();
		
		String signinAlert;
		if (loginResult!=null) {
			signinAlert="success";
			System.out.println("여기는 멤버서비스 입니다"+dto.getMb_code()+dto.toString());
			session.setAttribute("mb_code", loginResult.getMb_code());
			session.setAttribute("mb_name", loginResult.getMb_name());
			session.setAttribute("userlevel", loginResult.getMb_level());
		//	 System.out.println(session.getAttribute("mb_code"));
			mav.addObject("signinAlert", signinAlert);
			mav.setViewName("home");	
		}else {}
		
		
		return mav;
	}

	public ModelAndView memberlist() {
		mav= new ModelAndView();
		List<MemberDTO> memberlist= dao.memberlist();
		mav.addObject("memberlist", memberlist);
		mav.setViewName("vmlForm");
		return mav;
	}

	public MemberDTO memberviewajax(String mb_code) {
	
		
		MemberDTO memberView= dao.memberdetail(mb_code);
		
		return memberView;
	}

	public String idOverlap(String mb_code) {
		String checkResult = dao.idOverlap(mb_code);
		String resultMsg= null;
		if (checkResult==null) {
		resultMsg= "ok";	
		}else {
			resultMsg ="no";	
		}
		return resultMsg;
	}

	public ModelAndView viewdel(String mb_code) {
		int result=dao.memberdel(mb_code);
		if (result>=1) {
			mav.setViewName("redirect:/memberlist");//주소를 써야함
		}else {
			mav.setViewName("memberdelFail");
		}
		return mav;
	}

	public ModelAndView memberinfo(String mb_code) {
		mav= new ModelAndView();
		
		MemberDTO dto =dao.memberinfo(mb_code);
		System.out.println("씨발"+dto.toString());
		mav.addObject("memberinfo", dto);
		
		mav.setViewName("myPage");
		
		return mav;
	}



}
