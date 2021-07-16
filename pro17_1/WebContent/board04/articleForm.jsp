<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored ="false"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 창04</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function readURL(input) {
		 console.log('input: '+input);
		 console.log('input.files:' + input.files);
		 console.log('input.files[0]: ' + input.files[0]);
		 console.log('input.files[1]: ' + input.files[1]);
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				console.log('e: ' + e);
				console.log('e.target: '+e.target);
				console.log('e.target.result: '+e.target.result);
				$('#preview').attr('src', e.target.result);
			}
			console.log(reader.readAsDataURL(input.files[0]));
			reader.readAsDataURL(input.files[0]);
		}
	}
	function backToList(obj) {
		obj.action = "${contextPath}/board/listArticles.do";
		obj.submit();
	}
</script>
<title>새 글쓰기 창</title>
</head>

<body>
	<h1 style = "text-align:center">새 글 쓰기</h1>
	<form name="articleForm" method="post" 
								action="${contextPath}/board/addArticle.do" 
								enctype="multipart/form-data">
		<table border="0" align="center">
			<tr>
				<td align="right">글제목: </td>
				<td colspan="2"><input type="text" size="67" maxlength="500" name="title" /></td>
			</tr>
			<tr>
				<td align="right" valign="top">글 내용: </td>
				<td colspan="2"><textarea row="10" cols="65"  maxlength="4000" name="content"></textarea></td>
			</tr>
			<tr>
				<td align="right">이미지파일 첨부: </td>
				<td colspan="2"><input type="file" name="imageFileName" onchange ="readURL(this);" /></td>
				<td><img id="preview" src="#" width="200" height="200" /></td>
			</tr>
			<tr>
				<td align="center"> </td>
				<td colspan="2">
				<input type="submit" value="글쓰기" />
				<input type="button" value="목록보기" onclick="backToList(this.form)" />
			</tr>
		</table>
	</form>
</body>
</html>