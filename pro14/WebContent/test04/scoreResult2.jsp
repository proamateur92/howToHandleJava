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
<title>학점 환산 페이지</title>
</head>
<body>
<!-- 문자 유효성은 처리 안됌 -->
	<h1>학점 환산 페이지입니다.</h1>
	<c:set var="score" value="${param.score }" />
	
	<c:choose>
		<c:when test="${param.score <=100 && param.score >= 0}">
			<h1>시험점수: <c:out value="${param.score }" /></h1>
			<c:choose>
				<c:when test="${score >= 90}">
					<h1>A학점입니다.</h1>
				</c:when>
				<c:when test="${score < 90 && score >= 80}">
					<h1>B학점입니다.</h1>
				</c:when>
				<c:when test="${score < 80 && score >= 70}">
					<h1>C학점입니다.</h1>
				</c:when>
				<c:when test="${score < 70 && score >= 60}">
					<h1>D학점입니다.</h1>
				</c:when>
				<c:otherwise>
					<h1>F학점입니다.</h1>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<h1>학점 좀 제대로 기입!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
			<a href="scoreTest.jsp">점수 입력 창으로 이동</a>
		</c:otherwise>
	</c:choose>
	
</body>
</html>