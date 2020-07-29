<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
<<<<<<< HEAD
function submit(){
	var contentTxt=document.replyForm.content;
		
}
</script>
<script>
function contentCheck(){
	var contentTxt=document.replyForm.content;
	
	if(contentTxt.value == ""){
		alert("³»¿ëÀ» ±âÀçÇØ ÁÖ¼¼¿ä.");
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
=======
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
		alert("ë‚´ìš©ì„ ì…ë ¥í•˜ì„¸ìš”.");
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
>>>>>>> acf9d578f5a7d799af92fbf127c4b3dbb4133bf8
}
</script>
</head>
<body><!-- ë‚´ ì•„ì´ë””ì™€ ê°™ìœ¼ë©´ ìˆ˜ì •, ì‚­ì œê°€ ë³´ì´ë„ë¡ í•˜ê¸° ??-->
<%
	RequestDispatcher rd = request.getRequestDispatcher("ListController");
	rd.include(request, response);
%>
	<h3>ëŒ“ê¸€ ëª©ë¡</h3>	
	<table border="1" cellspacing="0" >
		<c:forEach var="reply" items="${list}">
			<tr>
<<<<<<< HEAD
				<td>${reply.name }</td><td>${reply.content }</td><td>${reply.w_date }<td><a href="DelReplyController">»èÁ¦</a></td>
			</tr>
		</c:forEach>
	</table>	
	<h3>´ñ±Û ÀÛ¼º</h3>
		<form method="post" name="replyform">
			<input type="text" name="content"/><input type="submit" value="ÀÛ¼º" onclick="contentCheck()"/>
=======
				<td>${reply.getName() }</td><td>${reply.getContent() }</td><td>${reply.getW_date() }</td>
					<c:if test="${ sessionScope.id == reply.getId() }">  
						<td><a href="${pageContext.request.contextPath }/DelReplyController?replyseq=${reply.getReplyseq()}">ì‚­ì œ</a></td>
					</c:if>					
			</tr>
		</c:forEach>
	</table>	
	<h3>ëŒ“ê¸€ ì‘ì„±</h3>
		<form id="writeCommentForm">
			<input type="text" name="content"/><input type="button" value="ì‘ì„±" onclick="writeCmt()" />
>>>>>>> acf9d578f5a7d799af92fbf127c4b3dbb4133bf8
		</form>
</body>
</html>