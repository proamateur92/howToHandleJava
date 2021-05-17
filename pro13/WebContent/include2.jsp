<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include2.jsp</title>
</head>
<body>
	안녕하세요. 람쥐썬더 JSP 시작입니다!!!!!
	<br>
	<jsp:include page="squirrel_image.jsp" flush="true">
		<jsp:param name="name" value="람쥐2" />
		<jsp:param name="imgName" value="squirrel2.jpg" />
	</jsp:include>
	<br>
	안녕하세요. 람쥐썬더 JPS 끝부분입니다!!!!!
</body>
</html>