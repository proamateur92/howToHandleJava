<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
<h1 style="text-align:center">로그인 창입니다.</h1>
<form method="get" action="result2.jsp">
	아이디: <input type="text" name="userId"> <br>
	비밀번호: <input type="password" name="userPw"> <br>
	<input type="submit" value="가입하기"><input type="reset" value="초기화">
</form>
</body>
</html>