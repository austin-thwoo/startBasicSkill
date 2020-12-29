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
	Hello Login world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<form action="select">
아이디	: <input type="text" name=mid> <br>
비밀번호: <input type="text" name=mpass> <br>
<input type="submit" value="LoginTry!">
</form>
<a href="./">go to home</a>


</body>
</html>
