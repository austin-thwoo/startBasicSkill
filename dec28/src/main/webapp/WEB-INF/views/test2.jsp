<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>test2.jsp</h2>
<h2>controller에서 넘어온값</h2>
첫번째 : <p>${pa1}</p>
두번째 : <p>${pa2}</p>

<a href="./">홈으로 가기</a>


<form action="insert">
db에 저장할 데이터 : <input type="text" name="data1"><br>
<input type="submit" value = "db저장">



</form>











</body>
</html>