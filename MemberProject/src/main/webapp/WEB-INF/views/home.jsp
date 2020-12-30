<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>	
	
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>


<c:choose>
	<c:when test="${sessionScope.mid eq null}">
		<a href="join">go to join page</a><br><br>
		<a href="login">go to login page</a><br>
	</c:when>
	<c:otherwise>
		<h3>${sessionScope.mid}ㅎㅇ</h3>
		<input type="button" value="logout">
		<c:if test="${sessionScope.mid eq 'master'}"> 
		<a href="viewmemberList">viewmemberList</a><br>
		
		</c:if>
	</c:otherwise>
 </c:choose> 
 <a href="./">go to home</a>
</body>
<scripe>

</scripe>
</html>
