<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Index</title>
</head>
<body>
<h1>로그인 페이지</h1><br><br>
<%
    if(session.getAttribute("userId") == null) {
        out.println("<a href='login.jsp'>로그인</a>");
        out.println("<a href='join.jsp'>회원가입</a>");
    } else{
        String userId = (String) session.getAttribute("userId");
        out.println("<a href='mypage.jsp'>"+userId+"님 환영합니다.</a>");        
        out.println("<a href='logout.jsp'>로그아웃</a>");
    }
%>
</body>
</html>