<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex01.*, java.util.*"%>
<%
	List membersList = new ArrayList();
	MemberBean member1 = new MemberBean("id1","pwd1","name1","email1");
	MemberBean member2 = new MemberBean("id2","pwd2","name2","email2");
	membersList.add(member1);
	membersList.add(member2);
	
	request.setAttribute("membersList", membersList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward3</title>
</head>
<body>
	<jsp:forward page="member3.jsp" />
</body>
</html>