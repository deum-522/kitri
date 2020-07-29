<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="LoginController" onsubmit="return loginCheck()">
		ID : <input type="text" name="id"><br>
		PW : <input type="password" name="pwd"><br>
		<input type="submit" value="로그인">
	</form>
	<h5>아이디가 없으시다면? <a href="JoinForm.jsp">회원가입</a></h5>
</body>
</html>