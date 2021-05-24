<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex01.*, java.util.*" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="membersList" class="java.util.ArrayList" />
<jsp:useBean id="membersMap" class="java.util.HashMap" />

<%
	membersMap.put("id","아이디맵");
	membersMap.put("pwd","비밀번호맵");
	membersMap.put("name","이름맵");
	membersMap.put("email","이메일맵");
	
	MemberBean member1 = new MemberBean("아이디리스트","비밀번호리스트","이름리스트","이메일리스트");
	MemberBean member2 = new MemberBean("아이디리스트2","비밀번호리스트2","이름리스트2","이메일리스트2");
	
	membersList.add(member1);
	membersList.add(member2);
	
	membersMap.put("membersList", membersList);
%>
<c:set var="membersList" value="${membersMap.membersList }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">이메일</td>
		</tr>
		<tr align="center">
			<td>${membersMap.id }</td>
			<td>${membersMap.pwd }</td>
			<td>${membersMap.name }</td>
			<td>${membersMap.email }</td>
		</tr>
		<tr align="center">
			<td>${membersList[0].id }</td>
			<td>${membersList[0].pwd }</td>
			<td>${membersList[0].name }</td>
			<td>${membersList[0].email }</td>
		</tr>
		<tr align="center">
			<td>${membersList[1].id }</td>
			<td>${membersList[1].pwd }</td>
			<td>${membersList[1].name }</td>
			<td>${membersList[1].email }</td>
		</tr>
	</table>
</body>
</html>