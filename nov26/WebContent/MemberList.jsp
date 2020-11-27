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
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>생년월일</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>상세정보</th>
			<th>수정(지수정아님ㅋ_ㅋ)</th>
			<th>삭제</th>	
			
		</tr>
		
			
			
			<c:forEach items="${memberListsvc}" var="mem">
			<tr style="text-align: center;">
				<td>${mem.userNum}</td>
				<td>${mem.userId}</td>
				<td>${mem.userName}</td>
				<td>${mem.userPass}</td>
				<td>${mem.birthDay}</td>
				<td>${mem.userEmail}</td>
				<td>${mem.userDigit}</td>
				<td><a href="MemberDetailController?userId=${mem.userId}">상세보기</a></td>
				<td><a href="ModifyFormController?userId=${mem.userId}">정보수정(진짜아님ㅋㅁㅋ)</a></td>
				<td><a href="modifyForm?userId=${mem.getUserId()}">정보삭제</a></td>
			</tr>
			</c:forEach>	
			
			

	</table>
</body>
</html>

