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
			<th>상세정보</th>
			<th>수정(지수정아님ㅋ_ㅋ)</th>
			<th>삭제</th>	
			
		</tr>
		<c:forEach var="mem" items ="${memeberList}">
		<tr style="text-align: center;">
			
			
			<th>${mem.mid}</th>
			<th>${mem.mpass}</th>
			<th>${mem.mname}</th>
			<th>${mem.mphon}</th>
			<th>${mem.memail}</th>	
			<th>${mem.mbirth}</th>
			<th><a href="memberdetail?mid=${mem.mid}">상세보기</th>
			<th><a href="membermodi?mid=${mem.mid}">수정(진짜아님ㅋ_ㅋ)</th>
			<th><a href="memberdel?mid=${mem.mid}">삭제</th>	
		
		</tr>
			</c:forEach>
			
</table>
 <a href="./">go to home</a>

</body>
</html>