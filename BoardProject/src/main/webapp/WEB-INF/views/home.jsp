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
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
 <a href="./">go to home</a>
 <a href="bwrite">글쓰기</a><br>
 <a href="blist">글목록</a><br>
 <a href="bwriteFile">파일첨부글쓰기</a><br>
 <a href="blistpaging">글목록페이징</a><br>
</body>
</html>
