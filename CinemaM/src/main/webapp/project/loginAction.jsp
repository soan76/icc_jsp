<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action</title>
</head>
<body>
    <%	
        String userId = request.getParameter("userId");
        String password = request.getParameter("userPw");
        

        String dbURL = "jdbc:mysql://localhost:3306/cinemam"; // 데이터베이스 URL 수정 필요
        String dbUser = "root"; // 데이터베이스 사용자명 수정 필요
        String dbPassword = "abcd1234"; // 데이터베이스 비밀번호 수정 필요

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "SELECT * FROM user_tbl WHERE userId=? AND userPw=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                out.println("Login Successful");
                session.setAttribute("userId", userId); // 일치한다면, session에 저장
                response.sendRedirect("index.jsp"); 
            } else {
                out.println("try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>