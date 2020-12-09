<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h2>My Page</h2>
			<div class="joinID">아이디 : ${uib.userID }</div>
			<div class="joinPassword">비밀번호 : ${uib.userPWD }</div>
			<div class="joinName">이름 : ${uib.username }</div>
			<div class="joinDate">생년월일 : ${uib.userbirth }</div>
			<div class="joinPhone">전화번호 : ${uib.userphone }</div>
			<div class="joinGender">성별 : ${uib.usergender }</div>
			<c:if test="${uib.userlevel eq '판매 회원'}">
			<div class="joinGender">상점코드 : ${uib.storeCode }</div>
			</c:if>
			
			<input type="button" class="bt_join" value="정보 수정" onclick = "modify()">
			<input type="button" class="bt_join" value="회원 탈퇴" onclick = "del()">
			
			<c:if test="${uib.userlevel eq '판매 회원'}">
			<input type="button" class="bt_join" value="상품관리" onclick = "store()">
			</c:if>
			
			
	</div>
</body>
<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>
<script>
function modify(){
	location.href = "MemberMod.jsp? userid = ${uib.userID}"
}
function del(){
	location.href = "MemberDelete.jsp? userid = ${uib.userID}"
}
function store(){
	location.href = "StoreManagement?userId=${uib.userID }"
}
</script>
</html>
