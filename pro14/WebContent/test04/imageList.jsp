<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 리스트 출력</title>
</head>
<body>
	<ul class="lst_type">
		<li>
			<span style='margin-left:50px'>이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<c:forEach var="i" begin="1" end="9" step="1">
		<li>
			<a href="#" style='margin-left:50px'>
				<img src='../image/squirrel1.jpeg' width='90' height='90' alt='' /></a>
			<a href="#"><strong>이미지 이름: 람쥐썬더${i }</strong></a>	
			<a href="#"><input name='chk{i}' type='checkbox' /></a>
		</li>
		</c:forEach>
	</ul>
</body>
</html>