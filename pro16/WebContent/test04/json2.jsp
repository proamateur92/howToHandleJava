<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 실습2</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#check').click(function(){
			var jsonInt = '{ "integer": [1, 2, 3, 4, 5] }';
			var jsonInfo = JSON.parse(jsonInt);
			var output = "정수 숫자<br>";
			output += "===========<br>"
			for(var i in jsonInfo.integer) {
				output += jsonInfo.integer[i]+"<br>";
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