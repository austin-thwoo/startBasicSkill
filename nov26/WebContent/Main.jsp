<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<h1>로그인 상태 : ${loginId}</h1>
	<h1>메인창(던지는창아님ㅋ_ㅋ)이라눙!!</h1>
	<form action="LoginController" method="GET">
		<table>
			<c:choose>
				<c:when test="${loginId eq null}">
					<tr>
						<td>userIdentity:</td>
						<td><input type="text" name="userId"></td>
					</tr>
					<tr>
						<td>userPassword:</td>
						<td><input type="password" name="userPw"></td>
					</tr>

					<tr style="text-align: center;">
						<td colspan="2"><input type="submit" name="login"
							value="Login"> <input type="button" name="join"
							value="MemberJoin" onclick="MemberJoinWeb()">
				</c:when>

				<c:otherwise>
					<tr>
						<td><input type="button" name="MemberList"
							value="ViewMemberList" onclick="MemberListWeb()"></td>
						<td><input type="button" name="logout" value="logout"
							onclick="logOutWeb()"></td>
					</tr>
				</c:otherwise>

			</c:choose>
			</td>
			</tr>


		</table>
	</form>
</body>
<script>
	function MemberJoinWeb() {
		location.href = "MemberJoin.jsp"
	}
	function logOutWeb
	() {
		location.href = "LogoutController"

	}
	function MemberListWeb() {
		location.href = "MemberListController"
	}
	
	
</script>


</html>