<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 실습4</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#check').click(function(){
			var jsonIf = '{ "members": [{ "name":"박지성", "age":"25"}, { "name":"이동복", "age":"30"}] }'; 
			var jsonInfo = JSON.parse(jsonIf);
			var output = "회원 정보<br>";
			output += "===========<br>";
			for(var i in jsonInfo.members) {
				output += jsonInfo.members[i].name +"<br>";
				output += jsonInfo.members[i].age +"<br><br><br>";
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