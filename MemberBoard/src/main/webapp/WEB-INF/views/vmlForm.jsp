<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>

console.log(mb_code);

</script>
</head>
<body>
<h1>	
	Hello viewmemberForm world!  
</h1>
<table border="1" boardercolor="red">
		<tr style="text-align: center;">
			
			<th>회원아이디</th>
			<th>회원이름</th>
			<th>회원번호</th>
			<th>회원메일</th>	
			<th>회원성별</th>
			<th>회원레벨</th>
						
			<th>상세정보(AJAX)</th>
			<th>수정(지수정아님ㅋ_ㅋ)</th>
			<th>삭제</th>	
			
		</tr>
		<c:forEach var="mem" items ="${memberlist}">
		<tr style="text-align: center;">
			
			
			<th>${mem.mb_code}</th>			
			<th>${mem.mb_name}</th>
			<th>${mem.mb_digit}</th>
			<th>${mem.mb_email}</th>			
			<th>${mem.mb_gender}</th>	
			<th>${mem.mb_level}</th>
			
			
			<th><button onclick="memberviewAjax('${mem.mb_code}')">자세히</button></th>
			<th><a href="membermodi?mb_code=${mem.mb_code}">수정(진짜아님ㅋ_ㅋ)</a></th>
			<th ><button onclick = "location.href = 'memberdel?mb_code=${mem.mb_code}'">삭제</button></th>	
			<div id="memberviewdiv"></div>
		
		</tr>
			</c:forEach>
			
</table>
<div id="memberviewdiv"></div>
 <a href="./">go to home</a>

</body>
<script>
function memberviewAjax(mb_code){
	
	console.log(mb_code);
	$.ajax({
		type : "post",
		url : "memberviewajax",
		data : {"mb_code":mb_code},
		dataType : "json",
		success : function(result){
			console.log(result);
			var output = "<table border='1'>";
			output += "<tr><th>ID</th> <th>PASSWORD</th> <th>NAME</th>";
			output += "<th>DIGIT</th> <th>EMAIL</th> <th>BIRTH</th> <th>GENDER</th>";
			output += "<th>LEVEL</th> <th>ADDRESS</th> <th>PROFILE</th></tr>";
			output += "<tr>";
			output += "<td>"+result.mb_code+"</td>";
			output += "<td>"+result.mb_pass+"</td>";
			output += "<td>"+result.mb_name+"</td>";
			output += "<td>"+result.mb_digit+"</td>";
			output += "<td>"+result.mb_email+"</td>";
			output += "<td>"+result.mb_birth+"</td>";
			output += "<td>"+result.mb_gender+"</td>";
			output += "<td>"+result.mb_level+"</td>";
			output += "<td>"+result.mb_add+"</td>";
			output += "<td>"+result.mb_file+"</td>";
			output += "</tr>";
			output += "</table>";
			
			$("#memberviewdiv").html(output);

		},
		error: function(){
			alert("오타확인함?");
		}
		
	});
	
}
	
</script>

</html>