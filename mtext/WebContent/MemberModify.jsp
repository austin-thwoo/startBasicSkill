<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 페이지</title>
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
	<h1>현재 회원정보</h1>
<br/>현재 아이디 : ${memberModify.userId1} 
<br/>현재 비밀번호: ${memberModify.userPw}
<br/>현재 이름  : ${memberModify.userName}
<br/>현재 생년월일 : ${memberModify.userBirth}
<br/>현재 성별 : ${memberModify.userGender}
<br/>현재 이메일 : ${memberModify.userEmail}
<hr/><br/>

<form actioin="modiProcess">
<br/>현재 아이디 : ${memberModify.userId1} 
<br/>현재 비밀번호: <input type="password" id ="checkPw">
<br/>변경할 비밀번호: <input type="password" id ="userPw">

<br/>변경할 이름  : <input type="text" id ="userName">
<br/>변경할 생년월일 : <input type="text" id ="userBirth">
<br/>변경할 성별 : <input type="text" id ="userGender">
<br/>변경할 이메일 : <input type="text" id ="userEmail">
</form>


</body>
</html>






