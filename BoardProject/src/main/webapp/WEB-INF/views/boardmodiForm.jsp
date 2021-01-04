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
	Hello Boardmodification Form world!  
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
			<th>조회수</th>	
			
			
		</tr>
		
		<tr style="text-align: center;">
			
			
			<th>${boardDetail.bnumber}</th>
			<th>${boardDetail.bwriter}</th>
			<th>${boardDetail.btitle}</th>
			<th>${boardDetail.bcontent}</th>
			<th>${boardDetail.bdate}</th>	
			<th>${boardDetail.bhit}</th>
			<!-- 아직안고침 밑에 ㅋㅋ -->
				
		
		</tr>
		
				<tr style="text-align: center;">
			
			<th>글번호</th>
			<th>작성자</th>
			<th>수정할 글제목</th>
			<th>수정할글내용</th>
			<th>작성일</th>
			<th>조회수</th>	
			
			
		</tr>
		
		<tr style="text-align: center;">
			<form action="modi">
			
			<th><input type="text" name="bnumber" value="${boardDetail.bnumber}" readonly> </th>
			<th><input type="text" name="bwriter" value="${boardDetail.bwriter}" readonly></th>
			<th><input type="text" name="btitle"></th>
			<th><input type="text" name="bcontent"></th>
			<th><input type="text" name="bdate" value="${boardDetail.bdate}" readonly></th>	
			<th><input type="text" name="bhit" value="${boardDetail.bhit}" readonly></th>
			<!-- 아직안고침 밑에 ㅋㅋ -->
		<th>		
		<input type="submit" value="domodi"></th>
		</form>
		</tr>
		
		
			
</table>
</body>
</html>
