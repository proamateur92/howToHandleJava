<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*, sec01.ex01.*"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 실습</title>
</head>
<body>
	<table border="1" align="center">
		<c:choose>
			<c:when test="${empty param.id }">
				<h1>아이디를 입력하세요오오옷!!!!!!!!!!!</h1>
			</c:when>
			<c:otherwise>
			<tr align="center" bgcolor="#999999" >
				<td>아이디</td>
				<td>비밀번호</td>
				<td>이름</td>
				<td>이메일</td>
			</tr>
				<tr align="center">
					<td>${param.id }</td>
					<td>${param.pwd }</td>
					<td>${param.name }</td>
					<td>${param.email }</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	
</body>
</html>