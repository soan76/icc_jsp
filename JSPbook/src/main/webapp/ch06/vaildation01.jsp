<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
	function checkform(){
		alert("���̵�: " + document.loginForm.id.value + "\n"+
				"��й�ȣ: "+document.loginForm.pw.value)
	}
</script>
<body>
	<form name = "loginForm">
		<p>���̵� : <input type = "text" name="id">
		<p>��й�ȣ : <input type = "password" name="pw">
		<p><input type = "submit" value="����" onclick="checkform()">
	</form>
</body>
</html>