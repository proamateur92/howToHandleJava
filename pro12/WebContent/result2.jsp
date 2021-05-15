<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result2.jsp</title>
</head>
<body>
	<h1>결과출력</h1>
	
	<% 
		if(user_id == null || user_id.length() == 0) {
	%>	
		아이디를 입력하세요.<br>
		<a href="/pro12/login.html">로그인 페이지로 이동</a>
	<%	}else { %>	
		<h1>아이디: <%=user_id %>님!!!!!!!!!!</h1>
	<%
	}
	%>
</body>
</html>