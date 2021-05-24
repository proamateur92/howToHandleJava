<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex01.*"%>
<%
	request.setCharacterEncoding("utf-8");
	MemberBean member = new MemberBean("beam","babo123","namename","beam@test.com");
	request.setAttribute("member", member);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2</title>
</head>
<body>
	<jsp:forward page="member2.jsp" />
</body>
</html>