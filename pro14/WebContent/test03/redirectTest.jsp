<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*"
	isELIgnored="false"    
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:redirect url="/test01/member1.jsp">
	<c:param name="id" value="${'hong' }" />
	<c:param name="pwd" value="${'1234' }" />
	<c:param name="name" value="${'홍길동' }" />
	<c:param name="email" value="${'hond@test.com' }" />
</c:redirect>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> c:redirect 태그 실습</title>
</head>
<body>

</body>
</html>