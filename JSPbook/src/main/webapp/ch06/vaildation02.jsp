<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value==""){
			alert("���̵� �Է��ϼ���.");
			form.id.focus();
			return false;
		}else if(form.pw.value==""){
			alert("��й�ȣ�� �Է��ϼ���.")
			form.pw.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name = "loginForm" action="vaildation02_process.jsp" method="post">
		<p>���̵� : <input type = "text" name="id">
		<p>��й�ȣ : <input type = "password" name="pw">
		<p><input type = "submit" value="����" onclick="checkLogin()">
	</form>

</body>
</html>