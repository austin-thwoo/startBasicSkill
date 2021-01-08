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
	<div class="container-first">
		<div class="container">
			<h2 class="text-center" id="title"><a href="./">hello ani world</a></h2></h2>
			<p class="text-center">
				 집에가고싶다구..?
				
				</small>
			</p>
			<hr>
			<c:if test = "${signinAlert eq 'fail'}">
   			
   		<script>alert("로그인 실패입니다.다시 시도하세욧")</script>
   </c:if>
			<div class="row">
				<div class="col-md-5">
					<form role="form" method="post" action="signintry">
						<fieldset>
							<p class="text-uppercase pull-center">SIGN UP.</p>
							<h6>--What's your ID?--</h6>
							<div class="form-group">
								<input type="text" name="mb_code" id="usernaid"
									class="form-control input-lg" placeholder="ID">
							</div>
							<h6>--What's your PWD?--</h6>
							<div class="form-group">
								<input type="password" name="mb_pass" id="userpass"
									class="form-control input-lg" placeholder="Password">
							</div>
							


							<div>
								<input type="submit" class="btn btn-lg btn-primary"  value="signinTry!">
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
							<img src="resources/img/sao.jpg" width="500" height="500">
									
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