<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/stylejoin.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.css.map.css">
<link rel="stylesheet" href="css/bootstrap-theme.css.map.css">
</head>
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
<body>
	<h1>상품 상세 페이지</h1>
	<table border="1">
		<tr>
			<td>
				<img src="img/bobo.png" width="500">
			</td>
			<td>
			<table border="1" style="height: 300px; width:400px;">
			<tr align="center">
			<td>상품명</td>
			
			<!--프론트 못해먹겠습니다 tlqkf -->
			<td>보노보노</td>
			</tr>
			<tr align="center">
			<td>가격</td>
			<td>5,000,000</td>
			</tr>
			<tr align="center">
			<td>상품소개</td>
			<td>분홍색 보노보노 입니다앙</td>
			</tr>
			<tr align="center">
			<td colspan="2">
			맘에들면 010-7777-7777 문자주셈
			</td>
			
			</tr>
			</table>
			</td>
		</tr>
		</table>
		<a href="StoreList.jsp">상품목록</a>

</body>



<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>











</html>