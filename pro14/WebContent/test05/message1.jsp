<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 다국어 기능</title>
</head>
<body>
<%--
<fmt:setLocale value="ko_KR" />
 --%>
	<fmt:setLocale value="en_US" />
<h1>회원정보</h1><br>
<h1>
	<fmt:bundle basename="resource.member" >
	<fmt:message key="title.name"/>: <fmt:message key="mem.name" /><br>
	<fmt:message key="title.address" />: <fmt:message key="mem.address" /><br>
	<fmt:message key="title.job" />: <fmt:message key="mem.job" />
	</fmt:bundle>
</h1>
</body>
</html>