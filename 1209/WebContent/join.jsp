<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
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
<script src="js/script.js"></script>
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
		<h2>회원 가입</h2>
		<form method="post" action="MemberJoin">
			<div class="joinID">
				아이디 : <input type="text" class="input" style="ime-mode: disabled;"
					placeholder="아이디" name="userID" id="check" title="아이디"
					maxlength="20" value="${userId}">
				<button type="button" value="userID" name="overlap"
					onclick="overlapg()" style="WIDTH: 100pt; HEIGHT: 25pt">overlapconr</button>
			
			<c:if test="${check eq 2}">
		 <script> alert("사용가능한 아이디입니다");</script>
		 <h3>사용 가능한 아이디입니다.</h3>
		 </c:if>
			
			</div>
			<div class="joinPassword">
				패스워드 : <input type="password" class="input" placeholder="비밀번호를 입력하세요."
					name="userPassword" title="비밀번호" maxlength="20">
			</div>
			<div class="joinName">
				이름 : <input type="text" class="input" placeholder="이름을 입력하세요." name="userName"
					title="이름" maxlength="20">
			</div>
			<div class="joinDate">
				생년월일 : <input type="date" class="input" name="userDate">
			</div>
			<div class="joinPhone">
				전화번호 : <input type="text" class="input" placeholder="전화번호를 입력하세요." name="userPhone">
			</div>
			<div class="joinGender">
				성별 : <input type="radio" name="userGender" value="M" title="성별">
				남자 <input type="radio" name="userGender" value="F" title="성별">
				여자
			</div>
			<c:if test="${check eq 2}">
			<input type="submit" class="bt_join" value="회원가입">
			</c:if>
			<c:if test="${empty check}">
			<h3>overlap button click plz~</h3>
			</c:if>
		</form>
	</div>
</body>
<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>
<script>
	function overlapg() {
		alert('아이디 체크');
		var userId = document.getElementById("check").value;
		location.href = "overlap?ident=" + userId;

	}
</script>

</html>
