<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 실습5</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#check').click(function(){
			var _jsonInfo = '{ "name":"박지성", "age":"25", "gender":"남자", "nickname":"날쌘돌이" }'; 
			
			$.ajax({
				type:"post",
				async: "false",
				url: "${contextPath}/json",
				data: {jsonInfo: _jsonInfo},
				succes: function(data, textStatus){
					console.log(textStatus);
				},
				error: function(data, textStatus){
					console.log(textStatus);
					alert("에러가 발생했습니다.");
				},
				complete: function(data, textStatus){
					console.log(textStatus);
				}
			});
		});
	});
</script>
</head>
<body>
	<input type="button" id="check" value="전송" />
	<div id="output"></div>
	
</body>
</html>