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
<title>글제목03</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<table>
		<tr>
				<td width="20%" align="center" bgcolor="#FF9933">글번호</td>
				<td>
				<input type="text" value="${article.articleNO}" name="articleNO" id="i_articleNO" disabled />
				</td>
			</tr>
		<tr>
					<td width="20%" align="center" bgcolor="#FF9933">아이디</td>
				<td>
				<input type="text" value="${article.id}" name="id" id="i_id" disabled />
				</td>
			</tr>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">글 제목</td>
			<td>
				<input type="text" value="${article.title}" name="title" id="i_title" disabled />
			</td>
		</tr>
		<tr>
			<td width="20%" bgcolor="#FF9933">글 내용</td>
			<td>
				<textarea rows="20" cols="60" name="content" id="i_content" disabled >${article.content }
				</textarea>
			</td>
		</tr>
		
		<c:if test="${not empty article.imageFileName && article.imageFileName != 'null' }">
			<tr>
				<td width="20%" align="center" bgcolor="#FF9933" rowspan="2">이미지</td>
				<td>
					<input type="hidden" name="originalFileName" value="${article.imageFileName}" />
					<img src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNO=${article.articleNO}" id="preview" /><br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="file" name="imageFileName" id="i_imageFileName" disabled onchange="readURL(this);" />
				</td>
			</tr>
		</c:if>
		<tr>
			<td width="20%" align="center" bgcolor="#FF9933">작성일</td>
			<td>
				<input type="text" value="${article.writeDate}" name="writeDate" id="i_writeDate" disabled />
			</td>
		</tr>
	</table>
	
</body>
</html>