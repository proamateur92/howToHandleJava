<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 페이지</title>
</head>
<body>
	<c:set var="dan" value="${param.dan }" />
	<table border="1" align="center">
		<tr bgcolor="brigtgreen">
			<td colspan="2"><c:out value="${dan }" />단 출력</td>
		<tr>
		
		<c:forEach var="i" begin="1" end="9" step="1">
			<tr>
				<td>
					<c:out value="${dan }" /> * 
					<c:out value="${i }" />
				</td>
				<td>
					<c:out value="${dan *i }" />
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>