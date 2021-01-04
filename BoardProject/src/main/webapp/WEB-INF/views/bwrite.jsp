<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<h1>
	Hello Write world!  
</h1>
  <form action="boardWrite" method="POST"
      enctype="multipart/form-data">

      <table>
         <tr>
            <th>작성자</th>
            <td><input type="text" name="bwriter" size="40"></td>
         </tr>
         <tr>
            <th>비밀번호</th>
            <td><input type="password" name="bpass" size="40"></td>
         </tr>
         <tr>
            <th>글 제목</th>
            <td><input type="text" name="btitle" size="40"></td>
         </tr>
         <tr>
            <th>내용</th>
            <td><textarea rows="20" cols="40" name="bcontent"></textarea></td>
         </tr>
<!--          <tr>
            <th>첨부파일</th>
            <td><input type="file" name="bFile"></td>
         </tr> -->

         <tr style="text-align: right;">
            <td colspan="2"><input type="submit" value="글작성">
         </tr>
      </table>
   </form>

</body>
</html>
