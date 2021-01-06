<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!---*************welcome this is my simple empty strap by John Niro Yumang ******************* -->

<!DOCTYPE html>
<html lang="en">

<title>Sign up facundo farm & resort</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<head>
<script src="jquery/jquery.min.js"></script>
<!---- jquery link local dont forget to place this in first than other script or link or may not work ---->

<link rel="stylesheet" href="css/bootstrap.min.css">
<!---- boostrap.min link local ----->

<link rel="stylesheet" href="css/style.css">
<!---- boostrap.min link local ----->

<script src="js/bootstrap.min.js"></script>
<!---- Boostrap js link local ----->

<link rel="icon" href="images/icon.png" type="image/x-icon" />
<!---- Icon link local ----->

<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<!---- Font awesom link local ----->
</head>
<body>
	<div class="container-fluid">
		<div class="container">
			<h2 class="text-center" id="title">Facundo farm and Resort</h2>
			<p class="text-center">
				<small id="passwordHelpInline" class="text-muted">
					Developer: follow me on facebook <a
					href="https://www.facebook.com/JheanYu"> John niro yumang</a>
					inspired from <a href="https://p.w3layouts.com/">https://p.w3layouts.com/</a>.
				</small>
			</p>
			<hr>
			 <c:if test = "${alert eq 'fail'}">
   			
   		<script>alert("회원가입 실패입니다.다시 시도하세욧")</script>
   </c:if>
			<div class="row">
				<div class="col-md-5">
					<form role="form" method="post" action="signuptry">
						<fieldset>
				
				
							<p class="text-uppercase pull-center">SIGN UP.</p>
							<h6>--user_ID--</h6>
							<div class="form-group">
								<input type="text" name="mb_code" id="usernaid"
									class="form-control input-lg" placeholder="ID">
							</div>
							<h6>--user_PWD--</h6>
							<div class="form-group">
								<input type="password" name="mb_pass" id="userpass"
									class="form-control input-lg" placeholder="Password">
							</div>
							<h6>--user_Name--</h6>
							<div class="form-group">
								<input type="text" name="mb_name" id="password"
									class="form-control input-lg" placeholder="Name">
							</div>
							<h6>--user_DIGIT--</h6>
							<div class="form-group">
								<input type="text" name="mb_digit" id="Digit"
									class="form-control input-lg" placeholder="Digit">
							</div>
							<h6>--user_EMAIL--</h6>
							<div class="form-group">
								<input type="email" name="mb_email" id="Email"
									class="form-control input-lg" placeholder="Email Address">
							</div>
							<h6>--user_BIRTH--</h6>
							<div class="form-group">
								<input type="date" name="mb_birth" id="Birth"
									class="form-control input-lg">
							</div>
							<h6>--user_GENDER--</h6>
							<div class="form-group">
								MAN <input type="radio" name="mb_gender" id="gender" value="M">
								
								WOMEN <input type="radio" name="mb_gender" id="gender" value="W">
							</div>


							<div>
								<input type="submit" class="btn btn-lg btn-primary"  value="signupTry!">
							</div>
						</fieldset>
					</form>
				</div>

				<div class="col-md-2">
					<!-------null------>
				</div>

				<div class="col-md-5">
					<form role="form">
						<fieldset>
							<img src="\D:\\eclip\\MemberBoard\\src\\main\\webapp\\resources\\img\\sao.jpg" width="500" height="500">
									
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<p class="text-center">
			<small id="passwordHelpInline" class="text-muted"> Developer:<a
				href="http://www.psau.edu.ph/"> Pampanga state agricultural
					university ?</a> BS. Information and technology students @2017 Credits:
				<a href="https://v4-alpha.getbootstrap.com/">boostrap v4.</a></small>
		</p>
	</div>
</body>


</html>