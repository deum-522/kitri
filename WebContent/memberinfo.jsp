<%@page import="model.memberVO"%>
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
 		memberVO m = (memberVO) request.getAttribute("m");
 	%>
 	
	<form action="EditController" method="post">
		id : <input type="text" name="id" value="<%=m.getId()%>" readonly="readonly"><br>
		pw : <input type="password" name="pwd" value="<%=m.getPassword()%>"><br>
		name : <input type="text" name="name" value="<%=m.getName()%>"><br>
		email :<input type="text" name="email" value="<%=m.getEmail()%>"><br>
		address : <input type="text" name="address" value="<%=m.getAddress()%>"><br>
		status : <input type="text" name="status" value="<%=m.getStatus()%>" readonly><br>
		class : <input type="text" name="cls" value="<%=m.getCls() %>" readonly><br>
		<input type="submit" value="제출">
	</form>
</body>
</html>