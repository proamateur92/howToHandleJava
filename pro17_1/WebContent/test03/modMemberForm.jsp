<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
        
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
</head>
<body>
	<form method="post" action="${contextPath}/member1/modMember.do">
		<h1 style="text-align:center">회원 정보 수정창</h1>
		<table align="center">
			<tr>
				<td width="200">
					<p align="right">아이디
				</td>
				<td width="400"><input type="text" value="${memInfo.id }" disabled></td>
				<input type="hidden" name="id" value="${memInfo.id }">
			</tr>
			<tr>
				<td width="200">
					<p align="right">비밀번호
				</td>
				<td width="400"><input type="password" name="pwd" value="${memInfo.pwd }"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이름
				</td>
				<td width="400"><input type="text" name="name" value="${memInfo.name }"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이메일
				</td>
				<td width="400"><input type="text" name="email" value="${memInfo.email }"></td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">가입일
				</td>
				<td width="400"><input type="text" name="joinDate" value="${memInfo.joinDate }" disabled></td>
			</tr>
			<tr align="center">
				<td width="400" colspan="2">
					<input type="submit" value="수정하기">
					<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>