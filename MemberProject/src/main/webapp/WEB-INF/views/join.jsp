<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello Join world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<form action="insert">
아이디	: <input type="text" name=mid> <br>
비밀번호: <input type="text" name=mpass> <br>
이름	: <input type="text" name=mname> <br>
전화번호: <input type="text" name=mphon> <br>
이메일	: <input type="text" name=memail> <br>
생년월일: <input type="text" name=mbirth> <br>



<input type="submit" value="JoinTry!">
</form>

<a href="./">go to home</a>
</body>
</html>
