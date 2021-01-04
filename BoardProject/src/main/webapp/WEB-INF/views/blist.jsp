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
			<th>조회수</th>	
			<th>상세정보</th>
			<th>상세정보(AJAX)</th>
			<th>수정(지수정아님ㅋ_ㅋ)</th>
			<th>삭제</th>	
			
		</tr>
		<c:forEach var="bod" items ="${boardlist}">
		<tr style="text-align: center;">
			
			
			<th>${bod.bnumber}</th>
			<th>${bod.bwriter}</th>
			<th>${bod.btitle}</th>
			<th>${bod.bcontent}</th>
			<th>${bod.bdate}</th>	
			<th>${bod.bhit}</th>
			
			<th><a href="boarddetailForm?bnumber=${bod.bnumber}">상세보기</th>
			<th><button onclick="memberviewAjax('${bod.bnumber}')">Ajax//미완</th>
			<th><a href="boardmodiForm?bnumber=${bod.bnumber}">수정(진짜아님ㅋ_ㅋ)</th>
			<th><a href="boarddel?bnumber=${bod.bnumber}">삭제</th>	
		
		</tr>
			</c:forEach>
			
</table>
</body>
</html>
