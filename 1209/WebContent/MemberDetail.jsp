<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

td, th {
	padding: 5px;
}
</style>
<body>
	<!--<h1>memberView.jsp</h1>  -->
	<table>
		<tr style="text-align: center;">
			
			<th>회원아이디</th>
			<th>회원비밀번호</th>
			<th>회원명</th>
			<th>회원생년월일</th>
			<th>회원성별</th>
			<th>회원전화번호</th>
			<th>회원등급</th>
			
			
				
			
		</tr>
		
			


				<tr style="text-align: center;">
				<td>${memberDetail.userID}</td>
				<td>${memberDetail.userPWD}</td>
				<td>${memberDetail.username}</td>
				<td>${memberDetail.userbirth}</td>
				<td>${memberDetail.usergender}</td>
				<td>${memberDetail.userphone}</td>
				<td>${memberDetail.userlevel}</td>
							

				
				
				
			</tr>
			
				
			
			

	</table>
	<h1>이전화면 버튼넣을꺼임</h1>
</body>
</html>

<%-- 			<c:forEach items="${memberDetail}" var="mem">  </c:forEach> --%>
