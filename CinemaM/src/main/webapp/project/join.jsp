<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Join</title>
</head>
<body>
    <h1>Join</h1>
    <form method="post" action="joinAction.jsp">
        <label for="userId">ID:</label>
        <input type="text" id="userId" name="userId" required>
        <br>
        <label for="userPw">Password:</label>
        <input type="password" id="userPw" name="userPw" required>
        <br>
        <label for="userName">Name:</label>
        <input type="text" id="userName" name="userName" required>
        <br>
        <input type="submit" value="Join">
    </form>
</body>
</html>