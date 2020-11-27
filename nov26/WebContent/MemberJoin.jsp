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
<h1>현뚜의 소듕한보물상자 가입창이라눙!!</h1>
	<form action="JoinController">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="userId"><input type="button" value="중복확인"></td>
		</tr>

		<tr>
			<th>이름</th>
			<td><input type="text" name="userName">ex)홍길동</td>
		</tr>

		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="userPass">ex)1234</td>
		</tr>

		<tr>
			<th>생년월일</th>
			<td><input type="date" name="birthDay">ex)991231</td>
		</tr>

		<tr>
			<th>이메일</th>
			<td><input type="email" name="userEmail">aa@aa</td>
		</tr>

		<tr>
			<th>전화번호</th>
			<td><input type="text" name="userDigit">ex)02-112</td>
		</tr>

		<tr style="text-align: center;" >
			<td colspan="2">
			<input type="submit" value="회원가입하기" >
			<input type="button" value="홈으로가기" onclick="cancel()">
			</td>
			
			
		</tr>
		




	</table>
</form>
</body>
<script >
function cancel(){
	location.href="Main.jsp"
}




</script>



</html>