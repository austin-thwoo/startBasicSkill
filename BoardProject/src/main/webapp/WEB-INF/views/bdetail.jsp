<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<h1>
	Hello BoardList world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
 <a href="./">go to home</a>
 <a href="bwrite">글쓰기</a><br>
 <a href="blist">글목록</a><br>
 
 <table>
		<tr style="text-align: center;">
			
			<th>글번호</th>
			<th>작성자</th>
			<th>글제목</th>
			<th>글내용</th>
			<th>작성일</th>
			<th>첨부파일</th>
			<th>조회수</th>	
			
			
		</tr>
		
		<tr style="text-align: center;">
			
			
			<th>${boardDetail.bnumber}</th>
			<th>${boardDetail.bwriter}</th>
			<th>${boardDetail.btitle}</th>
			<th>${boardDetail.bcontent}</th>
			<th>${boardDetail.bdate}</th>
			<th><img src = "resources/uploadfile/${boardDetail.bfilename}" height="50" width="50">  </th>	
			<th>${boardDetail.bhit}</th>
			<!-- 아직안고침 밑에 ㅋㅋ -->
				
		
		</tr>
		
			
</table>
</body>
</html>
