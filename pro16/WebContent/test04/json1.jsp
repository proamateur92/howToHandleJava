<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 실습 1</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#check').click(function(){
			var jsonStr = '{ "name": ["임꺽정", "홍길동", "이순신"] }';
			var jsonInfo = JSON.parse(jsonStr);
			var output = "회원 이름<br>";
			output += "===========<br>"
			for(var i in jsonInfo.name) {
				output += jsonInfo.name[i]+"<br>";
			}
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