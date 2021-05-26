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
		
		<c:forEach var="i" begin="1" end="9" step="1">
			<c:choose>
				<c:when test="${i%2!=0 }">
					<tr bgcolor="#CCFF66">
						<td>
							<c:out value="${dan }" /> * 
							<c:out value="${i }" />
						</td>
						<td>
							<c:out value="${dan *i }" />
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr bgcolor="#CCCCFF">
						<td>
							<c:out value="${dan }" /> * 
							<c:out value="${i }" />
						</td>
						<td>
							<c:out value="${dan *i }" />
						</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</table>
</body>
</html>