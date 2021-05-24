<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex01.*, java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("id", "Leebok");
	request.setAttribute("pwd", "12345");
	session.setAttribute("name", "dongbok");
	application.setAttribute("email", "im_u440l@naver.com");
	request.setAttribute("address", "Song-do");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward3</title>
</head>
<body>
	<jsp:forward page="member4.jsp" />
</body>
</html>