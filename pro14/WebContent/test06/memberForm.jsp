<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 창</title>
</head>
<body>
	<form method="post" action="member_action.jsp">
		<h1 style="text-align:center">회원가입 창</h1>
		<table align="center">
			<tr>
				<td width="200">
					<p align="right">아이디
				</td>
				<td width="400">
					<input type="text" name="id">
				</td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">비밀번호
				</td>
				<td width="400">
					<input type="password" name="pwd">
				</td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이름
				</td>
				<td width="400">
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td width="200">
					<p align="right">이메일
				</td>
				<td width="400">
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td width="200">
				</td>
				<td width="400">
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>