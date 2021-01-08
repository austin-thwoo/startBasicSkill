package com.icia.memberboard.dto;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberDTO {
	
		private String mb_code;
		private String mb_pass;
		private String mb_name;
		private String mb_digit;
		private String mb_email;
		private String mb_birth;
		private String mb_gender;
		private String mb_level;
		private String mb_add;
		private MultipartFile mb_file;
		private String mb_filename;
	
}
