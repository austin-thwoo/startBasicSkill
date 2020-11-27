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
<h1>MemberDetail.jsp</h1>
<h1>낱낱이 파헤쳐주가써ㅋㅁㅋ</h1>
	<table>
		<tr>
			<th>회원번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>생년월일</th>
			<th>성별</th>
			
			<th>이메일</th>
			
		</tr>
		<tr>
			<td>${MemberDetail.getUserNum()}</td>
			<td>${MemberDetail.userId}</td>
			<td>${MemberDetail.userName}</td>
			<td>${MemberDetail.userPass}</td>
			<td>${MemberDetail.birthDay}</td>
			<td>${MemberDetail.userEmail}</td>
			<td>${MemberDetail.userDigit}</td>
			
		</tr>


	</table>

</body>
</html>