<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function check() {
		var idTxt = document.JoinFormTem.id;
		var pwTxt = document.JoinFormTem.pwd;
		var nameTxt = document.JoinFormTem.name;
		var emailTxt = document.JoinFormTem.email;
		var addressTxt = document.JoinFormTem.address;
		
		if (idTxt.value=="") {
			alert("아이디를 입력하세요")
			idTxt.value=""
			idTxt.focus();
			return false;
		}
		
		if (pwTxt.value=="") {
			alert("비밀번호를 입력하세요")
			pwTxt.value=""
			pwTxt.focus();
			return false;
		}
		
		if (nameTxt.value=="") {
			alert("이름을 입력하세요")
			nameTxt.value=""
			nameTxt.focus();
			return false;
		}
		
		if (emailTxt.value=="") {
			alert("이메일을 입력하세요")
			emailTxt.value=""
			emailTxt.focus();
			return false;
		}
		
		if (addressTxt.value=="") {
			alert("주소를 입력하세요")
			addressTxt.value=""
			addressTxt.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form method="post" action="JoinController" name="JoinFormTem" onsubmit="return check()">
		id : <input type="text" name="id"><br>
		pw : <input type="password" name="pwd"><br>
		name : <input type="text" name="name"><br>
		email : <input type="text" name="email"><br>
		address : <input type="text" name="address"><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>