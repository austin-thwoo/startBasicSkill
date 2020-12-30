<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello membermodiForm world!</h1>
	<table>
		<tr style="text-align: center;">

			<th>기존아이디</th>
			<th>회원비번</th>
			<th>회원이름</th>
			<th>회원번호</th>
			<th>회원메일</th>
			<th>회원생일</th>


		</tr>

		<tr style="text-align: center;">


			<th>${member.mid}</th>
			<th>${member.mpass}</th>
			<th>${member.mname}</th>
			<th>${member.mphon}</th>
			<th>${member.memail}</th>
			<th>${member.mbirth}</th>
			<hr>
		</tr>

		<tr style="text-align: center;">

			<th>아이디</th>
			<th>변경비번</th>
			<th>변경이름</th>
			<th>변경번호</th>
			<th>변경메일</th>
			<th>변경생일</th>

		</tr>
		<tr style="text-align: center;">

			<form action="updatemember">
			<th><input type="text" name="mid" value="${member.mid}" readonly></th>
			<th><input type="text" name="mpass"></th>
			<th><input type="text" name="mname"></th>
			<th><input type="text" name="mphon"></th>
			<th><input type="text" name="memail"></th>
			<th><input type="text" name="mbirth"></th>
			<input type="submit" value="변경">
			</form>


		</tr>

	</table>


</body>
</html>