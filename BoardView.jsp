<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

tr, td, th {
	padding: 5px;
}
</style>
</head>
<body>
	<h1>게시판(BoardView.jsp) 상세보기 페이지렁!</h1>
	
	<table>
		<tr>
			<th>글번호</th>
			<td>${view.bdNum}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${view.bdMbcode}</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>${view.bdPass}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${view.bdTitle}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${view.bdText}</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${view.bdDate}</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${view.bdHit}</td>
		</tr>
		<tr>
			<th>파일</th>
			<td><img src="fileUpload/${view.bdFile}" width="200px"><br>${view.bdFile}</td>
		</tr>


	</table>
	<c:if test="${view.bdMbcode eq userID}">
	
	<button onclick="location.href='BoardModifyController?bdNum=${view.bdNum}'">수정하러가기</button>			
	 </c:if>
	
	<button onclick="location.href='bList'">목록보기</button> 
</body>
</html>












