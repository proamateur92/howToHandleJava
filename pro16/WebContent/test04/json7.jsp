<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 실습7</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#check').click(function(){
			
			$.ajax({
				type: "post",
				async: "false",
				url: "${contextPath}/json3",
				success: function(data, textStatus){
					console.log(textStatus);
					var jsonInfo = JSON.parse(data);
					var memberInfo = "회원정보<br>";
					memberInfo += "============<br>";
					for(var i in jsonInfo.members) {
						memberInfo += "이름: "+jsonInfo.members[i].name+"<br>";
						memberInfo += "나이: "+jsonInfo.members[i].age+"<br>";
						memberInfo += "성별: "+jsonInfo.members[i].gender+"<br>";
						memberInfo += "별명: "+jsonInfo.members[i].nickname +"<br><br>";
					}
					
					var bookInfo = "<br><br><br>도서정보<br>";
					bookInfo += "============<br>";
					
					for(var i in jsonInfo.books) {
						bookInfo += "책제목: " + jsonInfo.books[i].title+"<br>";
						bookInfo += "저자: " + jsonInfo.books[i].writer+"<br>";
						bookInfo += "가격: " + jsonInfo.books[i].price+"<br>";
						bookInfo += "분류: " + jsonInfo.books[i].genre+"<br>";
						imageURL = jsonInfo.books[i].image;
						bookInfo += "<img src="+imageURL+" />" + "<br><br><br>";
					}
					
					bookInfo += "============";
					$('#output').html(memberInfo + "<br>"+ bookInfo);			
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
	<input type="button" id="check" value="데이터 수신하기" />
	<div id="output"></div>
	
</body>
</html>