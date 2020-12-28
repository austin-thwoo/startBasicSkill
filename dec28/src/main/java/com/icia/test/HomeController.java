package com.icia.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.test.service.TestService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	ModelAndView mav;
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		//home.jsp를 출력함.
		return "home";
	}

	@RequestMapping(value = "/testview", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		
		//testview.jsp를 출력함.
		return "test";
	}
	
	
	
	@RequestMapping(value = "/param")
	public ModelAndView paramTest(@RequestParam("param1") String param1, @RequestParam("param2") String param2) {
		System.out.println("controller 에서 전달받은 값");
		System.out.println(param1);
		System.out.println(param2);

		mav= new ModelAndView();
		//mav에 파라미터 담기
		mav.addObject("pa1", param1);
		mav.addObject("pa2", param2);
		//mav에 목적지(출력할jsp) 지정
		mav.setViewName("test2");
		return mav;
	}
	
	
	@RequestMapping(value = "/insert")
	public String insertdb(@RequestParam("data1") String data1) {
		testService.insertdb(data1);
		//
		return "test";
	}
	
	//
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
