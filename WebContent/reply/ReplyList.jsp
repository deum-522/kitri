<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function getXMLHttpRequest(){
	var httpRequest = null;
	
	if(window.ActiveXObject){
		try{
			httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				httpRequest = new ActiveXObject("Microsoft.XMLHTTP");				
			}catch(e2){ httpRequest = null;}
		}
	}
	else if(window.XMLHttpRequest){
		httpRequest = new window.XMLHttpRequest();
	}
	return httpRequest;
}

function writeCmt(){
	var form = document.getElementById("writeCommentForm");
	var content = form.content.value;
	
	if(!content){
		alert("내용을 입력하세요.");
		return false;
	}
	else{
		var param = "content=" + content;
		
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = checkFunc;
		httpRequest.open("POST", "http://localhost:1080/boardPjt/WriteController",true);
		httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=EUC-KR');
		httpRequest.send(param);
	}
}
function checkFunc(){
	if(httpRequest.readyState == 4){
		var resultText = httpRequest.responseText;
		document.location.reload();					
	}
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
				<td>${reply.getName() }</td><td>${reply.getContent() }</td><td>${reply.getW_date() }</td>
					<c:if test="${ sessionScope.id == reply.getId() }">  
						<td><a href="${pageContext.request.contextPath }/DelReplyController?replyseq=${reply.getReplyseq()}">삭제</a></td>
					</c:if>					
			</tr>
		</c:forEach>
	</table>	
	<h3>댓글 작성</h3>
		<form id="writeCommentForm">
			<input type="text" name="content"/><input type="button" value="작성" onclick="writeCmt()" />
		</form>
</body>
</html>