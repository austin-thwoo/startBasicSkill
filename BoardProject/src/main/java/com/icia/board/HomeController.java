package com.icia.board;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	ModelAndView mav;
	
	
	@Autowired
	private BoardService boardservice;



	@RequestMapping(value = "/")
	public String home() {

		//home.jsp로 가는거다
		return "home";
	}

	//글쓰러간다
	@RequestMapping(value = "/bwrite")
	public String bwrite() {

	
		return "bwrite";
	}
	//글목록보러간다
	@RequestMapping(value = "/blist")
	public ModelAndView blist(Locale locale, Model model) {
		ModelAndView mav = boardservice.boardList();

		return mav;
	}

	
	///글작성옮겨준다
	@RequestMapping(value = "/boardWrite")
	public ModelAndView boardWrite(@ModelAttribute BoardDTO dto) {
		mav=boardservice.write(dto);
			
		return mav;
	}
	
//상세보기 간다
	@RequestMapping(value = "/boarddetailForm")
	public ModelAndView boardModiForm(@RequestParam("bnumber") int bnum) {
		mav=boardservice.boardDetail(bnum);
		
		return mav;
	}

	

	///글수정폼페이지로 간다
		@RequestMapping(value = "/boardmodiForm")
		public ModelAndView boardmodiForm(@RequestParam("bnumber") int bnum) {
			mav=boardservice.boardModiForm(bnum);
			
			
			return mav;
		}

// 글 수정하기 프로세스
			@RequestMapping(value = "/modi")
			public ModelAndView modiForm(@ModelAttribute BoardDTO dto) {
				mav=boardservice.boardModi(dto);
				
				
				return mav;
			}
	@RequestMapping(value = "/boarddel")
			public ModelAndView boardDel(@RequestParam("bnumber") int bnum) {
				mav=boardservice.boarddel(bnum);
				
				
				return mav;
			}
	
	//파일첨부글쓰러간다
		@RequestMapping(value = "/bwriteFile")
		public String bwritfile() {

		return "bwriteFile";
	}
	
	//파일첨부
	@RequestMapping(value = "/boardWritefile")
	public ModelAndView bwritefile(@ModelAttribute BoardDTO dto) throws IllegalStateException, IOException {
		mav=boardservice.boardWriteFile(dto);
		
		return mav;
	}
	//페이징처리
	@RequestMapping(value = "/blistpaging")
	public ModelAndView blistPaging(
@RequestParam(value="page", required=false, defaultValue="1")int page) {
		mav = boardservice.boardlistPaging(page);
		
		return mav;
	}
	
	
	// 글조회 처리 (페이징 처리 추가)
		@RequestMapping(value="/boardview")
		public ModelAndView boardView(@RequestParam("bnumber") int bnumber,
				@RequestParam(value="page", required=false, defaultValue="1") int page) {
			mav = boardservice.boardDetail2(bnumber, page);
			return mav;
		}
}
