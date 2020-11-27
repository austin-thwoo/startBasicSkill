<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, tr, td, th {
	border: 2px solid black;
	border-collapse: collapse;
}

td, th {
	padding: 5px;
}
</style>
<body>
	<form action="boardWrite"></form>
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>

		<tr>
			<th>작성자</th>
			<td><input type="text" name="name"></td>
		</tr>

		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pass"></td>
		</tr>

		<tr>
			<th>내용</th>
			<td><textarea rows="20" cols="30" name="text"></textarea></td>
		</tr>

		<tr>
			<th>파일</th>
			<td><input type="file" name="file"></td>
		</tr>

		<tr text align="center">
			
			<td colspan="2">
			<input type="submit" value="글쓰기" name="write">
			<input type="button" value="취소하기" name="cancel">
			</td>
		</tr>


	</table>



</body>
</html>