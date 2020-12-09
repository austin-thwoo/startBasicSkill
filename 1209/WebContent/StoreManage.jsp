<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/style_index.css">

<title>상점관리 페이지</title>
<style>
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

tr, td, th {
	padding: 5px;
}
</style>
</head>
<body>
	<header id="header" style="height: 50px;">
		<div class="inner">
			<h1 class="logo">
				<a href="./index.jsp">Free? Flea!</a>
			</h1>
			<h2 class="name">Free? Flea!</h2>

			<hr />

			<div class="info">
				<ul class="login">
					<c:choose>
						<c:when test="${name eq null}">
							<li class="menu_login"><a class="menu_title"
								href="login.jsp">로그인</a></li>
							<li class="menu_join"><a class="menu_title" href="join.jsp">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="menu_login">${name}님환영합니다!</li>
							<li class="menu_login"><a class="menu_title"
								href="mypage.jsp? uib = ${uib}">마이페이지</a></li>
							<li class="menu_join"><a class="menu_title" href="LogOut">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</header>

<body>
	<h1>상점관리</h1>
	<table>
		<tr>
			<th>상품명</th>
			<th>가격</th>
			<th>설명</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${GoList}" var="goods">
			<tr>
				<td>${goods.goName}</td>
				<td>${goods.goPrice}</td>
				<td>${goods.goComment}</td>
				<td><input type="button" class="bt_join" value="수정" onclick = "modify()"></td>
				<td><input type="button" class="bt_join" value="삭제" onclick = "del()"></td>
			</tr>
		</c:forEach>

	</table>
	${Stcode }
	<button onclick="location.href='StoreRegGoods.jsp?bNum=${view.bNum}'">상품등록</button>
</body>
<script>
function modify(){
	location.href = "GoodsModi.jsp?goCode=${goods.goCode }"
}
function del(){
	location.href = "goodsDel.jsp?goCode=${goods.goCode }"
}</script>
</html>