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

tr, td, th {
	padding: 5px;
}
</style>
</head>
<body>

	<h1>현재 회원정보</h1>
	
	<br/>현재 회원번호 : ${MemberModify.userNum}
	<br/>현재 아이디    : ${MemberModify.userId}
	<br/>현재 이름       : ${MemberModify.userName}
	<br/>현재 비밀번호 : ${MemberModify.userPass}
	<br/>현재 생년월일 : ${MemberModify.birthDay}
	<br/>현재 이메일    : ${MemberModify.userEmail}
	<br/>현재 전화번호 : ${MemberModify.userDigit}
	   
   
   
    
   <hr/><br/>
   <form action="ModiProcessController">
   <br/>현재 회원번호 : ${MemberModify.userNum}
   <br/>아이디 : ${MemberModify.userId}
   <input type="hidden" value="${MemberModify.userId}" name="userId1">
   <br/>변경할 이름	  : <input type="text" name="userName">  
   <br/>변경할 비밀번호 : <input type="password" name="userPw">
   <br/>변경할 생년월일 : <input type="text" name="userBirth"> 
   <br/>변경할 이메일    : <input type="text" name="userGender">
   <br/>변경할 전화번호 : <input type="text" name="userEmail">
   </form>
   <input type="submit" value="수정(어떤수정생각함 ㅋ_ㅋ)">


</body>
<script>

</script>
	


</html>