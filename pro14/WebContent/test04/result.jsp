<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과 창</title>
</head>
<body>
	<c:if test="${empty param.userId}">
		<h1>아이디를 입력해주세요!</h1>
		<a href="login.jsp">회원가입 창으로 되돌아가기</a>
	</c:if>
	<c:if test="${not empty param.userId}">
		<h1>환영합니다!!!</h1>
		<c:out value="${param.userId }" />님이 접속하셨습니다.
	</c:if>
</body>
</html>