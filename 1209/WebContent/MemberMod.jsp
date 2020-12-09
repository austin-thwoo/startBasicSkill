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
<link rel="stylesheet" href="css/stylejoin.css">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.css.map.css">
<link rel="stylesheet" href="css/bootstrap-theme.css.map.css">


<!-- script 선언 -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="../js/script.js"></script>
<title>Free? Flea!</title>
</head>
<body>
	<header id="header">
	<div class="inner">
			
			<h1 class="logo">
			<a href="./index.jsp">Free? Flea!</a>
			</h1>
			
		
			<h2 class="name">Free? Flea!</h2>

    <hr/>
    
       
			
		<div class="info">
				<ul class="login">
					<c:choose>
						<c:when test="${name eq null}">
							<li class="menu_login"><a class="menu_title"
								href="login.jsp">로그인</a></li>
							<li class="menu_join"><a class="menu_title"
								href="join.jsp">회원가입</a></li>
						</c:when>
						<c:otherwise>
						<li class="menu_login">${name}님 환영합니다!</li>
							<li class="menu_login"><a class="menu_title"
								href="mypage.jsp? uib = ${uib}" >마이페이지</a></li>
							<li class="menu_join"><a class="menu_title"
								href="LogOut">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</header>
	<div class="join_container">
		<h2>Modify</h2>
		<form method="post" action="Modify">
		<input type = "hidden" name = "userid" value ="${uib.userID }">
			<div class="joinPassword">
				비밀번호 : <input type="password" class="input" placeholder="수정할 비밀번호 입력"
					name="modPwd" title="비밀번호" maxlength="20">
			</div>
			<div class="joinPhone">
				전화번호 : <input type="text" class="input" placeholder="전화번호를 입력하세요."
					name="modphone">
			</div>
			<input type="submit" class="bt_join" value="제출">
		</form>
	</div>
</body>
<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>
</html>
