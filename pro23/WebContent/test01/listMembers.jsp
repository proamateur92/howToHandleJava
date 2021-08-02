<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트 목록</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>가입일</td>
		</tr>
		<c:forEach var="member" items="${membersList }">
			<tr align="center">
				<td>${member.id }</td>
				<td>${member.pwd }</td>
				<td>${member.name }</td>
				<td>${member.email }</td>
				<td>${member.joinDate }</td>
			</tr>
		</c:forEach>
	</table>
	<h1><a href="#">회원가입</a></h1>
</body>
</html>