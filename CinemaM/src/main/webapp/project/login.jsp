<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <form method="post" action="login.jsp">
        <label for="userId">Username:</label>
        <input type="text" id="userId" name="userId" required>
        <br>
        <label for="userPw">Password:</label>
        <input type="password" id="userPw" name="userPw" required>
        <br>
        <input type="submit" value="Login">
    </form>

    <button onclick="window.location.href='join.jsp'">Join</button>
</body>
</html>