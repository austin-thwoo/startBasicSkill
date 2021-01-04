package com.icia.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.board.dto.BoardDTO;
import com.icia.board.dto.PageDTO;
@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int writeDB(BoardDTO dto) {
		
		return sql.insert("Board.writeDB", dto);
				
		
	}

	public List<BoardDTO> boardlist() {

		return sql.selectList("Board.boardList"); 
	}

	public BoardDTO boardDetail(int bnumber) {
		return sql.selectOne("Board.boardDetail", bnumber);
		
	}

	public int boardmodiprocess(BoardDTO dto) {
		return sql.update("Board.boardModify", dto);
		
	}

	public int boardDelete(int bnum) {
 
		return sql.delete("Board.boarddelete", bnum);
	}

	public int boardWriteFile(BoardDTO board) {
		return sql.insert("Board.boardWriteFile", board);
		
	}

	public int listCount() {
return sql.selectOne("Board.boardlistCount");
		
	}

	public List<BoardDTO> boardListPaging(PageDTO paging) {
		
		return sql.selectList("Board.boardListPaging", paging);
	}

}
