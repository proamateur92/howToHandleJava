<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8"); 
	String user_id = request.getParameter("user_id");	
	String user_pwd = request.getParameter("user_pwd");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result3.jsp</title>
</head>
<body>
	<%
		if(user_id==null || user_id.length()==0) {
	%>
	아이디를 입력하세욧!!!
	<a href="pro12/login.html">다시 로그인 하기</a><br>
	<%
		} else {
		if(user_id.equals("admin")){
	%>
	<h1>관리자로 로그인하였습니다앗!!!!</h1>
	<form>
		<input type="button" value="회원정보 수정하기"><br>
		<input type="button" value="회원정보 삭제하기"><br>
	</form>
	<% 
		} else { 
	%>
		<h1>user_id님 환영합니다!!!!!!</h1>
	<% 
			}
		}
	%>
</body>
</html>