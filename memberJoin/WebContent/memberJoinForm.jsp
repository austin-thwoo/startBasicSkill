<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<form action="memberJoinController">
	<h1>회원가입 페이지 만들기</h1>
	<table>
		<tr>
			<td>
			아이디 <input type="text" placeholder="아이디" name="userId" id="userId">
				<input type="button" onclick="ajaxCheck()" value="중복체크">
			</td>
			<br/>
			<td>
				<td colspan="3"><span id="confirmId"></span></td>
			</td>
			<br/>
			<td>
			비밀번호 <input type="password" id="password" name="userPass" placeholder="비밀번호 입력해주셈"  onkeyup="pwConfirm()">
	        <p class="help-block"><span id="confirmPw"></span></p>
			</td>
			<td>
			<td colspan="3"><span id="confirmPass"></span></td>
			</td>
			<br/>
			<td>
			이름 <input type="text" placeholder="이름을 입력하세요." name="userName">
			</td><br/>
			<td>
			성별 : 남자<input type="radio" name="userGender" value="남자" title="성별">
				 여자<input type="radio" name="userGender" value="여자" title="성별">
			</td><br/>
			
		</tr>

	</table>
<input type="submit" value="join">
</form>

</body>
<script type="text/javascript">
function ajaxCheck(){
	console.log("ajaxCheck()함수 실행");
	var userId = document.getElementById("userId").value;
	
	$.ajax({
		type : "GET" ,
		url : "ajaxCheck" ,				
		data : { "userId" : userId } ,		/* ajaxCheck?userId=aaa */
		dataType : "text" ,
		
		success : function(result){
			
			console.log("result : " + result);
			
			if(result=="null"){
				confirmId.style.color = "#00ffff";
				confirmId.innerHTML = userId + "는 사용 가능한 아이디";
				alert('이거쓸수 있음 ㅋㅁㅋ');
			} else {
				confirmId.style.color = "#ffff00";
				confirmId.innerHTML = userId + "는 사용중인 아이디";
				alert('선픽으로 뺐김 딴거쓰셈 ㅋ_ㅋ');
			}
		},	// 성공시
		error : function() {
			alert('ajaxCheck()함수 통신 실패!')
		}			// 실패시
	});
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

</script>
</html>