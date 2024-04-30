<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>잘못된 데이터 입력
	<p><%="숫자 1 : "+request.getParameter("num1") %>
	<p><%="숫자 2 : "+request.getParameter("num2") %>
</body>
</html>