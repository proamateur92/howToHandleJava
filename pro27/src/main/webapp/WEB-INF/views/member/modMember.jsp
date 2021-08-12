<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
<h1>회원수정</h1>
	<form method="post" action="${contextPath }/member/modifyMember.do">
		아이디: <input type="text" name="id"><br>
		비밀번호: <input type="text" name="pwd"><br>
		이름: <input type="text" name="name"><br>
		이메일: <input type="text" name="email"><br>
		<input type="submit" value="정보수정" />
		<input type="reset" value="다시작성" />
	</form>
</body>
</html>