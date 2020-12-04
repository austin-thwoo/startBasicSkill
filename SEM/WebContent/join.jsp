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
<!-- script 선언 -->
<script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="js/script.js"></script>
<title>플리즈 ~ 플리마켓</title>
</head>
<body>
	<header>
		<div class="header_container">
			<div class="logo_container">
				<a href="index.jsp">플리즈~ 플리마켓</a>
			</div>

			<div class="login_container"></div>
		</div>
	</header>
	<div class="join_container">
		<h2>회원 가입</h2>
		<form method="post" action="MemberJoin">
			<h3>아이디</h3>
			<div class="joinID">


				<input type="text" class="input" style="ime-mode: disabled;"
					placeholder="아이디" name="userID" id="check" title="아이디"
					maxlength="20" value="${userId}">
				<button type="button" value="userID" name="overlap"
					onclick="overlapg()" style="WIDTH: 100pt; HEIGHT: 25pt">overlapconr</button>

		<c:if test="${check eq 2}">
		 <script> alert("사용가능한 아이디입니다");</script>
		 <h3>사용 가능한 아이디입니다.</h3>
		 </c:if>
				


			</div>
			<h3>비밀번호</h3>
			<div class="joinPassword">
				<input type="password" class="input" placeholder="비밀번호"
					name="userPassword" title="비밀번호" maxlength="20">
			</div>
			<h3>이름</h3>
			<div class="joinName">
				<input type="text" class="input" placeholder="이름" name="userName"
					title="이름" maxlength="20">
			</div>
			<h3>생년월일</h3>
			<div class="joinDate">
				<input type="date" class="input" placeholder="생년월일" name="userDate">
			</div>
			<h3>전화번호</h3>
			<div class="joinPhone">
				<input type="text" class="input" placeholder="'-'없이 입력해 주세요."
					name="userPhone">
			</div>
			<h3>성별</h3>
			<div class="joinGender">
				<input type="radio" name="userGender" value="M" title="성별">
				남자 <input type="radio" name="userGender" value="F" title="성별">
				여자
			</div>
			<input type="submit" class="bt_join" value="회원가입">
		</form>

	</div>
	
</body>
<script>
	function overlapg() {
		alert('아이디 체크');
		var userId = document.getElementById("check").value;
		location.href = "overlap?ident=" + userId;

	}
</script>


</html>
