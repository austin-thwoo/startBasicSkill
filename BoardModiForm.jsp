<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

td, th {
	padding: 5px;
}
</style>
</head>
<body>
	<h1>글작성(BoardWrite.jsp) 페이지</h1>
	<form action="BoardUpdateController" name="boardModiForm">
	
		<table>
			<tr>
				<th>글번호</th>
				<td>${bdNum}</td>
				<input type="hidden" value="${bdNum}" name="bdNum">
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text"name="bdTitle" size="40"></td>
				
			</tr>
			<tr>
				<th>아이디</th>
				<td>${userID}</td>
				<input type="hidden" value="${userID}" name="userID">
				
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="bdPass" size="40"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="20" cols="40" name="bdText"></textarea></td>
			</tr>

			<tr style="text-align: center;">
				<td colspan="2"><button onclick="bmodify()">Modification</button> 
				<input type="button" onclick="location.href='bList'" value="목록보기"> 
					
			</tr>
		</table>
	</form>

</body>
<script>
	function bmodify() {
		boardModiForm.submit();
	}

</script>
</html>








