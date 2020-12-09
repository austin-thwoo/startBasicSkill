<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

td, th {
	padding: 5px;
}
</style>
</head>
<body>
	<!--<h1>memberView.jsp</h1>  -->
	<table>
		<tr style="text-align: center;">
			
			<th>회원아이디</th>
			<th>회원명</th>
			<th>회원생년월일</th>
			<th>회원성별</th>
			
			
			<th>상세정보</th>
			<th>수정(지수정아님ㅋ_ㅋ)</th>
			<th>삭제</th>	
			
		</tr>
		
			
			
			<c:forEach items="${memberLists}" var="mem">
			<tr style="text-align: center;">
				<td>${mem.userID}</td>
				<td>${mem.username}</td>
				<td>${mem.userbirth}</td>
				<td>${mem.usergender}</td>
				
				
 				<td><a href="MemberDetailController?userID=${mem.userID}">상세보기</a></td>
				<td><a href="ModifyFormController?userID=${mem.userID}">정보수정(진짜아님ㅋㅁㅋ)</a></td>
				<td><a href="modifyForm?userID=${mem.getUserID()}">정보삭제</a></td>

				
			</tr>
			</c:forEach>	
			
			

	</table>
</body>
</html>



