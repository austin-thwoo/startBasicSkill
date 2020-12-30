<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>	
	Hello viewmemberForm world!  
</h1>
<table>
		<tr style="text-align: center;">
			
			<th>회원아이디</th>
			<th>회원비번</th>
			<th>회원이름</th>
			<th>회원번호</th>
			<th>회원메일</th>
			<th>회원생일</th>	

			
		</tr>
		
		<tr style="text-align: center;">
		
		
			<th>${member.mid}</th>
			<th>${member.mpass}</th>
			<th>${member.mname}</th>
			<th>${member.mphon}</th>
			<th>${member.memail}</th>	
			<th>${member.mbirth}</th>
			
	
			
				
		
		</tr>
</table>


</body>
</html>