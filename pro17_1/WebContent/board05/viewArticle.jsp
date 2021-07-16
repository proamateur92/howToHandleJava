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
<title>글수정04</title>
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
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	function backToList(obj) {
		obj.action = "${contextPath}/board/listArticles.do";
		obj.submit();
	}
	
	function fn_enable(obj) {
		document.getElementById("i_title").disabled = false;
		document.getElementById("i_content").disabled = false;
		document.getElementById("i_imageFileName").disabled = false;
		document.getElementById("tr_btn_modify").style.display = "block";
		document.getElementById("tr_btn").style.display = "none";
	}

	function fn_modify_article(obj) { 
		obj.action = "${contextPath}/board/modArticle.do";
		obj.submit();
	}
	
	function fn_remove_article(url, articleNO) {
		var form = document.createElement("form");
		form.setAttribute("method","post");
		form.setAttribute("action", url);
		var articleNOInput = document.createElement("input");
		articleNOInput.setAttribute("type","hidden");
		articleNOInput.setAttribute("name","articleNO");
		articleNOInput.setAttribute("value",articleNO);
		form.appendChild(articleNOInput);
		document.body.appendChild(form);
		form.submit();
	}	
	</script>
</head>

<body>
	<form name="frmArticle" method="post" action="${contextPath}" enctype="multipart/form-data">
		<table border="0" align="center">
			<tr>
					<td width="20%" align="center" bgcolor="#FF9933">글번호</td>
					<td>
					<input type="text" value="${article.articleNO}" disabled />
					<input type="hidden" name="articleNO" value="${article.articleNO }" />
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
					<textarea rows="20" cols="60" name="content" id="i_content" disabled >${article.content }</textarea>
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
			<tr id="tr_btn_modify">
				<td colspan="2" align="center">
					<input type="button" value="수정반영하기" onclick="fn_modify_article(frmArticle)">
					<input type="button" value="취소" onClick="backToList(frmArticle)">
				</td>
			</tr>
			
			<tr id="tr_btn">
				<td colspan="2" align="center">
					<input type="button" value="수정하기" onClick="fn_enable(this.form)">
					<input type="button" value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do',${article.articleNO })">
					<input type="button" value="리스트로 돌아가기" onClick="backToList(this.form)">
					<input type="button" value="답글쓰기" onClick="fn_reply_from('${contextPath}/baord/replyForm.do',${article.articleNO})">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>