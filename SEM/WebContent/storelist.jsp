<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<title>플리즈~ 플리마켓</title>
</head>
<style>
table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
  th:nth-child(2n), td:nth-child(2n) {
    background-color: #bbdefb;
  }
  th:nth-child(2n+1), td:nth-child(2n+1) {
    background-color: #e3f2fd;
  }

</style>

<body>
	<header>
	
			<div class="logo_container">
				<a href="./index.jsp">플리즈~ 플리마켓</a>
			</div>

			<div class="nav_container" id="nav_menu">
				<div class="menu_container">


				</div>
				<div class="login_container">
					<ul class="login">
						<li class="menu_logout"><a class="menu_title" href="#">로그아웃</a></li>
					</ul>
				</div>
			</div>
	</header>
 <table>
      <thead>
        <tr>
          <th>사진</th><th>설명</th><th>가격</th><th>수량?</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>img1</th><td>설명1</td><td>50,000</td><td>1</td>
        </tr>
        <tr>
          <th>img2</th><td>설명2</td><td>25,000</td><td>4</td>
        </tr>
        <tr>
          <th>img3</th><td>설명3</td><td>7,000</td><td>2</td>
        </tr>
        <tr>
          <th>img4</th><td>설명4</td><td>20,000</td><td>4</td>
        </tr>
        <tr>
          <th>img5</th><td>설명5</td><td>8,500</td><td>5</td>
        </tr>
      </tbody>
    </table>
	
	<footer>
		<div class="footer_container">
			<div class="footA">류하윤구</div>
			<div class="footB">qwer12@naver.com</div>
		</div>
	</footer>
</body>
</html>