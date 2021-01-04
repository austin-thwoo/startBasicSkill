package com.icia.board.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardDTO {

	private String bnumber;
	private String bwriter;
	private String bpass;
	private String btitle;
	private String bcontent;
	private String bdate;
	private String bhit;
	private MultipartFile bfile;
	private String bfilename;
}
