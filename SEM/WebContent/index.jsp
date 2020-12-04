<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<!-- meta 선언 -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- link 선언 -->
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/style_index.css">

<!-- script 선언 -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>


<title>플리즈 플리마켓</title>
</head>
<body>
	<header>

		<div class="logo_container">
			<a href="./index.jsp">플리즈~ 플리마켓</a>
		</div>

		<div class="nav_container" id="nav_menu">
			<div class="menu_container"></div>
			<div class="login_container">
				<ul class="login">
					<c:choose>
						<c:when test="${name eq null}">
							<li class="menu_login"><a class="menu_title"
								href="login.jsp">로그인</a></li>
							<li class="menu_join"><a class="menu_title"
								href="join.jsp">회원가입</a></li>
						</c:when>
						<c:otherwise>
						<li class="menu_login">${name}님 환영합니다!</li><br/>
							<li class="menu_login"><a class="menu_title"
								href="#">마이페이지</a></li>
							<li class="menu_join"><a class="menu_title"
								href="LogOut">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</header>
	<hr />
	<div>
		<h1>보조 이미지</h1>
		<h1>공백</h1>
		<h1>공백</h1>
		<h1>공백</h1>
		<h1>공백</h1>
	</div>
	<br />
	<hr />
	<br />
	<ul>
		<li><a><img src="img/ss3.jpg" alt="" width="30%"></a></li>
		<li><a><img src="img/ss2.jpg" alt="" width="30%"></a></li>
		<li><a><img src="img/ss3.jpg" alt="" width="30%"></a></li>
	</ul>
	<br />
	<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>
</body>
</html>