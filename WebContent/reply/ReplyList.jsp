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
		alert("������ ������ �ּ���.");
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
<body><!-- �� ���̵�� ������ ����, ������ ���̵��� �ϱ� ??-->
<%
	RequestDispatcher rd = request.getRequestDispatcher("ListController");
	rd.include(request, response);
%>
	<h3>��� ���</h3>	
	<table border="1" cellspacing="0" >
		<c:forEach var="reply" items="${list}">
			<tr>
				<td>${reply.name }</td><td>${reply.content }</td><td>${reply.w_date }<td><a href="DelReplyController">����</a></td>
			</tr>
		</c:forEach>
	</table>	
	<h3>��� �ۼ�</h3>
		<form method="post" name="replyform">
			<input type="text" name="content"/><input type="submit" value="�ۼ�" onclick="contentCheck()"/>
		</form>
</body>
</html>