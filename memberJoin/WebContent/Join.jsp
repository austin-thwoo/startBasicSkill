<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
<style>
#contentsss{
width:500px;
margin:auto;
margin-top:150px;
}


</style>
</head>
<body>
<div id="contentsss">

	<form method="post" name="jform" action="join" class="form-horizontal">
	  <fieldset>
	    <div id="legend">
	      <legend class="">회원가입</legend>
	    </div>
	    <div class="control-group">
	      <!-- Username -->
	      <label class="control-label"  for="username">사용자명</label>
	      <div class="controls">
	        <input type="text" id="username" name="userId" placeholder="" class="input-xlarge">
	        <span id="confirmId"></span>
	        <button type="button" onclick="ajaxCheck()">중복확인</button>
	      </div>
	    </div>
	 
	    <div class="control-group">
	      <!-- E-mail -->
	      <label class="control-label" for="email">이메일</label>
	      <div class="controls">
	        <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
	        <p class="help-block">이메일을 적으시오</p>
	      </div>
	    </div>
	 
	    <div class="control-group">
	      <!-- Password-->
	      <label class="control-label" for="password">비밀번호</label>
	      <div class="controls">
	        <input type="password" id="password" name="password" placeholder="" class="input-xlarge" onkeyup="pwConfirm()">
	        <p class="help-block"><span id="confirmPw"></span></p>
	      </div>
	    </div>
	 
	    <div class="control-group">
	      <!-- Password -->
	      <label class="control-label"  for="password_confirm">비밀번호 확인</label>
	      <div class="controls">
	        <input type="password" id="password_confirm" name="password_confirm" placeholder="" onkeyup="pwConfirm2()" class="input-xlarge">
	        <p class="help-block"><span id="confirmPw2"></span></p>
	      </div>
	    </div>
	 
	    <div class="control-group">
	      <!-- Button -->
	      <div class="controls">
	        <button class="btn btn-success">가입</button>
	      </div>
	    </div>
	  </fieldset>
	</form>
</div>
</body>
<script>
function pwConfirm2(){
	var userPw = document.getElementById("password").value;
	var confirmPws = document.getElementById("password_confirm").value;
	
	   if( userPw != confirmPws ) {
	        confirmPw2.style.color = "#ff0000";
	        confirmPw2.innerHTML = "비밀번호가 일치 하지 않습니다";
	   } else if ( userPw = confirmPws ){
	    	  confirmPw2.style.color = "#0000ff";
	    	  confirmPw2.innerHTML = "비밀번호가 일치합니다";
	   }
	
	   
}



function letjoin(){
	var jName = document.getElementById("userId").value;
	var jEmail = document.getElementById("email").value;
	var jPassword = document.getElementById("password").value;
	var jconPassword = document.getElementById("password_confirm").value;
	
	$.ajax({
			type : "POST" ,
			url : "join" ,
			data : {
				"jName" : jName,
				"jEmail" : jEmail,
				"jPassword" : jPassword,
				"jconPassword" : jconPassword
			},
			
			success : function(){
				alert('회원가입 성공')
			},
			error : function(){
				alert('통신실패')
			}
		})

	}

function pwConfirm(){
	var userPw = document.getElementById("password").value;
	var confirmPw = document.getElementById("confirmPw");
	
	var num = userPw.search(/[0-9]/g);
	var eng = userPw.search(/[a-z]/ig);
	var spe = userPw.search(/[`~!@@#$%^&*|₩₩₩'₩';:₩/?]/gi);
	
	if(userPw.search(/\s/)!=-1){
		confirmPw.style.color = "#ff0000";
		confirmPw.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
	} else if (userPw.length < 8 || userPw.length > 20){
		confirmPw.style.color = "#ff0000";
		confirmPw.innerHTML = "8자리 ~ 20자리 이내로 입력해주세요!";
	} else if( num < 0 || eng < 0 || spe < 0 ){
		confirmPw.style.color = "#ff0000";
		confirmPw.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
	} else {
		confirmPw.style.color = "#0000ff";
		confirmPw.innerHTML = "적절한 비밀번호 입니다!";
	}
	var confirmPws = document.getElementById("password_confirm").value;
	
	   if( userPw != confirmPws ) {
	        confirmPw2.style.color = "#ff0000";
	        confirmPw2.innerHTML = "비밀번호가 일치 하지 않습니다";
	   } else if ( userPw = confirmPws ){
	    	  confirmPw2.style.color = "#0000ff";
	    	  confirmPw2.innerHTML = "비밀번호가 일치합니다";
	   }

}

function ajaxCheck(){
	console.log("ajaxCheck()함수 실행");
	var userId = document.getElementById("username").value;
	
	$.ajax({
		type : "GET" ,
		url : "AjaxCheck" ,				
		data : { "userId" : userId } ,		/* ajaxCheck?userId=aaa */
		dataType : "text" ,
		
		success : function(result){
			
			console.log("result : " + result);
			
			if(result=="null"){
				confirmId.style.color = "#0000ff";
				confirmId.innerHTML = userId + "는 사용 가능한 아이디";
				alert('사용가능한 아이디');
			} else {
				confirmId.style.color = "#ff0000";
				confirmId.innerHTML = userId + "는 사용중인 아이디";
				alert('사용중인 아이디');
			}
		},	// 성공시
		error : function() {
			alert('ajaxCheck()함수 통신 실패!')
		}			// 실패시
	});
}
</script>


</html>