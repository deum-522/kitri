<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
function submit(){
	var contentTxt=document.replyForm.content;
		
}
</script>
<script>
function contentCheck(){
	var contentTxt=document.replyForm.content;
	
	if(contentTxt.value == ""){
		alert("내용을 기재해 주세요.");
		idTxt.value="";
		idTxt.focus();
		return false;		
	}
	else{
		submit();
		reload();
	}
}
</script>
<script>
function submit(){
	var
}
</script>
</head>
<body><!-- 내 아이디와 같으면 수정, 삭제가 보이도록 하기 ??-->
<%
	RequestDispatcher rd = request.getRequestDispatcher("ListController");
	rd.include(request, response);
%>
	<h3>댓글 목록</h3>	
	<table border="1" cellspacing="0" >
		<c:forEach var="reply" items="${list}">
			<tr>
				<td>${reply.name }</td><td>${reply.content }</td><td>${reply.w_date }<td><a href="DelReplyController">삭제</a></td>
			</tr>
		</c:forEach>
	</table>	
	<h3>댓글 작성</h3>
		<form method="post" name="replyform">
			<input type="text" name="content"/><input type="submit" value="작성" onclick="contentCheck()"/>
		</form>
</body>
</html>