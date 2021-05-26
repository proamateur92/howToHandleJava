<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*, sec01.ex01.*"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	List membersList = new ArrayList();
	MemberBean member1 = new MemberBean("id1","pwd1","name1","email1");
	MemberBean member2 = new MemberBean("id2","pwd2","name2","email2");
	MemberBean member3 = new MemberBean("id3","pwd3","name3","email3");
	membersList.add(member1);
	membersList.add(member2);
	membersList.add(member3);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 실습</title>
</head>
<body>
	<c:set var="membersList" value="<%=membersList %>" />
	
	<table border="1" align="center">
		<tr align="center" bgcolor="#999999">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
		<tr>
		<c:forEach var="i" begin="0" end="2" step="1"> 
			<tr align="center">
				<td>${membersList[i].id }</td>
				<td>${membersList[i].pwd }</td>
				<td>${membersList[i].name }</td>
				<td>${membersList[i].email }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>