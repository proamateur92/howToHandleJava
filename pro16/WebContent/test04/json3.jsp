<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 실습3</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#check').click(function(){
			var jsonIf = '{ "name":"이동복", "age":30, "gender":"남자", "nickname":"개미남"}';
			var jsonInfo = JSON.parse(jsonIf);
			var output = "회원 정보<br>";
			output += "===========<br>";
			output += jsonInfo.name+"<br>";
			output += jsonInfo.age+"<br>";
			output += jsonInfo.gender+"<br>";
			output += jsonInfo.nickname+"<br>";
		
			$('#output').html(output);
		});
	});
</script>
</head>
<body>
	<input type="button" id="check" value="json 출력" />
	<div id="output"></div>
	
</body>
</html>