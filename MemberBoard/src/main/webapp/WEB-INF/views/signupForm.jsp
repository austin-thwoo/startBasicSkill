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

<title><a href="">Sign up facundo farm & resort</a>></title>

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
	<div class="container-second">
		<div class="container">
			<h2 class="text-center" id="title"><a href="./">hello ani world</a></h2>
			<p class="text-center">
				<small id="passwordHelpInline" class="text-muted">
				 집에가고싶다구..?
					
				</small>
			</p>
			<hr>
			<c:if test="${alert eq 'fail'}">

				<script>alert("회원가입 실패입니다.다시 시도하세욧")</script>
			</c:if>
			<div class="row">
				<div class="col-md-5">
					<form role="form" method="post" action="signuptry"
						enctype="multipart/form-data">
						<fieldset>


							<p class="text-uppercase pull-center">SIGN UP.</p>
							<h6>--user_ID--</h6>
							<div class="form-group">
								<input type="text" name="mb_code" id="usernaid"
									class="form-control input-lg" placeholder="ID"
									onkeyup="idOverlap()">
								<sapn id="checkResult"></sapn>
							</div>
							<h6>--user_PWD--</h6>
							<div class="form-group">
								<input type="password" name="mb_pass" id="userpass"
									class="form-control input-lg" placeholder="Password"
									onkeyup="chkPW()">
								<sapn id="checkPass"></sapn>
							</div>
							<h6>--user_Name--</h6>
							<div class="form-group">
								<input type="text" name="mb_name" id="password"
									class="form-control input-lg" placeholder="Name">
							</div>
							<h6>--user_DIGIT--</h6>
							<div class="form-group">
								<input type="text" name="mb_digit" id="Digit"
									class="form-control input-lg" placeholder="Digit"
									onkeyup="chkDIG()">
							<sapn id="checkdigit"></sapn>
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
							<h6>--user_ADRESS--</h6>
							<div class="form-group">
								<input type="text" name="mb_add" id="adress"
									class="form-control input-lg">
							</div>
							<h6>--user_FILE--</h6>
							<div class="form-group">
								<input type="file" name="mb_file" id="file"
									class="form-control input-lg">
							</div>

							<div>
							
								<input type="submit" class="btn btn-lg btn-primary"
									value="signupTry!">
							
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
							<img
								src="D:\\eclip\\MemberBoard\\src\\main\\webapp\\resources\\img\\sao.jpg"
								width="500" height="500"> 
 					
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
<script>
function idOverlap(){
	var inputId= $("#usernaid").val();
	//var checkResult = $("#checkResult");
	var checkResult = document.getElementById("checkResult");
	console.log(inputId);
	
	$.ajax({
	//JSON(JavaScript Object Notation)의 방식을 따른다[key와 value값을 쓴다]
		type : "post", //전송방법
		url : "idoverlap", //요청주소
		data : {"mb_code":inputId}, //전송데이터 inputId뒤에 ,를 붙여 값을 더 보낼 수 있다->json타입의 장점
		dataType : "text", //리턴데이터 타입의 형식
		success : function(result){
			if (result=="ok") {
				checkResult.style.color = "green"; //위에서 var로 선언한 checkResult를 가리키고 그checkResul는 영역ID값을 선언한 span영역을 참조한다
				checkResult.innerHTML = "키미노 ID  [가능]이랄까?";
			}else{
				checkResult.style.color = "red";
				checkResult.innerHTML = "키미노 ID  [불가능]이랄까?";
			}
		},
		error: function(){
			alert("오타가 있지 않냐?");
		}
	});
	}
	
function chkPW(){
	
	 var pw = $("#userpass").val();
	 var num = pw.search(/[0-9]/g);
	 var eng = pw.search(/[a-z]/ig);
	 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩';:₩/?]/gi);
	 var checkPass = document.getElementById("checkPass");
	 
	 if(pw.length < 8 || pw.length > 20){
		 checkPass.style.color ="red";
 		checkPass.innerHTML = "5252!!! 8자리 ~ 20자리 이내로 입력 해달라구?!";
	    return false;
	 }else if(pw.search(/\s/) != -1){
		 checkPass.style.color ="red";
	 		checkPass.innerHTML = "비밀번호 공백이 [존재]한다고 킄..킄킄..";
	  return false;
	 }else if(num < 0 || eng < 0 || spe < 0 ){
		 checkPass.style.color ="red";
	 		checkPass.innerHTML = "영문,숫자, 특수문자....모든것이 모여 [세상]을 이룬다.";
	  return false;
	 }else {
		checkPass.style.color ="blue";
	 	checkPass.innerHTML = "히잌!!대다내!!통과라구?!!!";
	    return true;
	 }

	}	
function chkDIG(){
	
	 var digit = $("#Digit").val();
	 var dig = /^\d{3}-\d{3,4}-\d{4}$/;
	 var checkDig = document.getElementById("checkdigit");
	 
	 if(dig.test(digit)){
		 checkDig.style.color ="blue";
		 checkDig.innerHTML = "히잌!!대다내!!통과라구?!!!";
	    return true;
	
	 }else {
		
	    checkDig.style.color ="red";
		 checkDig.innerHTML = "xxx-xxxx-xxxx형식으로 입력해 달라구?";
		
	    return false; 
	    
	    
	 }

	}	
		
	
	
	
	
	

</script>


</html>