<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트 목록</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center">
			<td><b>아이디</b></td>
			<td><b>비밀번호</b></td>
			<td><b>이름</b></td>
			<td><b>이메일</b></td>
			<td><b>가입일</b></td>
			<td><b>삭제</b></td>
		</tr>
		<c:forEach var="member" items="${membersList }">
			<tr align="center">
				<td>${member.id }</td>
				<td>${member.pwd }</td>
				<td>${member.name }</td>
				<td>${member.email }</td>
				<td>${member.joinDate }</td>
				<td><a href="${contextPath}/mem4.do?action=deleteMember&id=${member.id}">삭제하기</a></td>
			</tr>
		</c:forEach>
	</table>
	<h1><a href="${contextPath}/test03/memberForm.jsp">회원가입</a></h1>
</body>
</html>