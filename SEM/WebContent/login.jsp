<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- meta 선언 -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- link 선언 -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/stylelogin.css">
<!-- script 선언 -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="js/script.js"></script>
<title>Jo's</title>
</head>
<body>
	<header>
		<div class="header_container">
			<div class="logo_container">
				<a href="index.jsp">플리즈~ 플리마켓</a>
			</div>

			
	</header>
	<div class="login_containers">
		<h2>로그인</h2>
		<form method="post" action="LogIn">
			<h3>아이디</h3>
			<div class="loginID">
				<input type="text" class="input" placeholder="아이디" name="userID"
					maxlength="20">
			</div>
			<h3>비밀번호</h3>
			<div class="loginPassword">
				<input type="password" class="input" placeholder="비밀번호"
					name="userPassword" maxlength="20">
			</div>
			<input type="submit" class="bt_login" value="로그인">
		</form>
	</div>
</body>
</html>
