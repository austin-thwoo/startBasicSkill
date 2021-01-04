package com.icia.board.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.dao.BoardDAO;
import com.icia.board.dto.BoardDTO;
import com.icia.board.dto.PageDTO;

@Service
public class BoardService {
	@Autowired
	BoardDAO boarddao;
	
	BoardDTO BoardDTO;
	private ModelAndView mav;
	
	@Autowired
	private HttpSession session;
	
	public ModelAndView write(BoardDTO dto) {
		mav= new ModelAndView();
		int result= boarddao.writeDB(dto);
		if (result==1) {
			
			mav.setViewName("blist");
		}else {
			mav.setViewName("home");
		}
	return mav;
	}

	public ModelAndView boardList() {
		mav = new ModelAndView();
		List<BoardDTO> boardList= boarddao.boardlist();
		mav.addObject("boardlist", boardList);
		mav.setViewName("blist");
		
		return mav;
		
		
	}

	public ModelAndView boardDetail(int bnumber) {
		mav = new ModelAndView();
		//1.조회수 올리기
		//2.글 상세내용 가져오기
		BoardDTO boardDetail=boarddao.boardDetail(bnumber);
	  mav.addObject("boardDetail", boardDetail);
		mav.setViewName("bdetail");
		return mav;
		
		
	}
	public ModelAndView boardDetail2(int bnumber, int page) {
		mav = new ModelAndView();
		//1.조회수 올리기
		//2.글 상세내용 가져오기
		BoardDTO boardDetail=boarddao.boardDetail(bnumber);
	  mav.addObject("boardDetail", boardDetail);
		mav.setViewName("bdetail");
		return mav;
		
		
	}
	public ModelAndView boardModiForm(int bnumber) {
		mav = new ModelAndView();
		//1.조회수 올리기
		//2.글 상세내용 가져오기
		BoardDTO boardDetail=boarddao.boardDetail(bnumber);
	  mav.addObject("boardDetail", boardDetail);
		mav.setViewName("boardmodiForm");
		return mav;
		
		
	}

	public ModelAndView boardModi(BoardDTO dto) {
		mav = new ModelAndView();	
		int result=boarddao.boardmodiprocess(dto);
			if (result>=1) {
		
		mav.setViewName("redirect:blistpaging");
		//mav.setViewName("redirect:boarddetailForm?bumber="+dto.getBnumber());
		
			}else {
		mav.setViewName("boardModiFail");	
			}
		return mav;
	}

	public ModelAndView boarddel(int bnum) {
		int delresult=boarddao.boardDelete(bnum);
		if (delresult>=1) {
			mav.setViewName("redirect:blist");
	
			
		}else {
			mav.setViewName("boardDeleteFail");
		}
		return mav;
	}
	
	public ModelAndView boardWriteFile(BoardDTO board) throws IllegalStateException, IOException {
		mav=new ModelAndView();
		MultipartFile bfile = board.getBfile();//실제 디렉토리에 파일을 저장하기 위해 꺼내오는 과정
		String bfilename = bfile.getOriginalFilename();//디비에 이름을 저장해주깅 위해 파일의 이름을 가져오는 부분
		bfilename = System.currentTimeMillis()+ "_" +bfilename;
		String savePath = "D:\\eclip\\BoardProject\\src\\main\\webapp\\resources\\uploadfile"+bfilename;
		if (!bfile.isEmpty()) {
			bfile.transferTo(new File(savePath));
		}
		board.setBfilename(bfilename);
		int writeResult=boarddao.boardWriteFile(board);
	if (writeResult>0) {
		mav.setViewName("redirect:blistpaging");
	}else {
		mav.setViewName("bWriteFail");
		}
	
	
	return mav;
}

//페이징 처리용 상수 선언
	private static final int PAGE_LIMIT = 3; //한페이지에 보여질 글 갯수
	//전체 글 갯수 : 14개 라면 필요한 페이지 수는ㅇ 몇개? :5개
	private static final int BLOCK_LIMIT= 3; //한 화면에 보여질 페이지 숫자 갯수
	//1~3 페이지에 있다면 하단에는 123만 보임 5페이지에 있다면 하단에는 45만 보임 
	public ModelAndView boardlistPaging(int page) {
	mav = new ModelAndView();
	//전체 글갯수 가져오기
	int listCount = boarddao.listCount();
	//현재 페이지에 보여줘야할 글 범위 지정
	int startRow = (page-1) * PAGE_LIMIT + 1;
	int endRow = page * PAGE_LIMIT;
	//1V페이지 1~2, 2페이지 4~6, 3페이지 7~9, 4페이지 10~12
	
	PageDTO paging = new PageDTO();
	paging.setStartRow(startRow);
	paging.setEndRow(endRow);
	List<BoardDTO> boardList= boarddao.boardListPaging(paging);
	
	int maxPage = (int)(Math.ceil((double)listCount/PAGE_LIMIT));
	int startPage = (((int)(Math.ceil((double)page/BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
	int endPage = startPage + BLOCK_LIMIT -1;
	
	if(endPage > maxPage)
		endPage=maxPage;
	
    paging.setPage(page);
    paging.setStartpage(startPage);
    paging.setEndpage(endPage);
    paging.setMaxpage(maxPage);
    
    mav.addObject("paging", paging);
    mav.addObject("boardList",boardList);
    mav.setViewName("blistpaging");
    
	
	
	
	return mav;
	}
}

















