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
		boolean flag = false;
		if(!session.isNew()) {
			flag = (boolean) session.getAttribute("flag");
		}
		if (flag) { // 로그인에 성공한 경우만 flag=True
			String id = (String) session.getAttribute("id");
	%>
			<%=id %>님 로그인<br>
			<a href="<%=request.getContextPath()%>/SearchController">내정보수정</a>
			<a href="<%=request.getContextPath()%>/LogoutController">로그아웃</a>
			<a href="<%=request.getContextPath()%>/DelController">회원탈퇴</a>
	<%
		} else {
	%>
		<h3> 로그인 실패 </h3>
		<a href="<%=request.getContextPath()%>/login.jsp">로그인 페이지</a>
	<%
		} 
	%>
</body>
</html>