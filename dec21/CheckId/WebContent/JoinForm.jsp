<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
<!-- jQuery란 : 자바스크립트 언어를 간편하게 사용할 수 있도록 단순화 
				시킨 오픈 소스 기반의 자바스크립트 라이브러리 -->
</head>
<body>
	<form action="Join" method="POST">
		<table>

			<tr>
				<td>아이디</td>
				<td><input type="text" id="userId" name="userId"></td>
				<td><input type="button" onclick="idCheck()" value="중복체크">
				<input type="button" onclick="ajaxCheck()" value="ajax중복체크"></td>
			</tr>
			<tr>
				<td colspan="3"><span id="confirmId"></span></td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td colspan="2"><input type="password" id="userPw"
					name="userPw"></td>
			</tr>

			<tr>
				<td colspan="3"><input type="submit" value="회원가입"></td>
			</tr>

		</table>
	</form>
</body>
<script>
	function idCheck(){
		var userId = document.getElementById("userId").value;
		location.href="idCheck?userId=" + userId;
		/* (1)idCheck의 주소를 가진 Servlet으로 이동(GET방식) */
		/* (2)userId값(input에서 입력해준 값)을 가지고 이동 */
		
		
	}
	
	
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














