<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	RequestDispatcher rd = request.getRequestDispatcher("TestController");
	rd.include(request, response);
%>
	<h1>테스트합니다</h1>
	<img src="img/cat.png"/>
	<jsp:include  page="ReplyList.jsp"/>
	<h1>테스트합니다</h1>
	
</body>
</html>