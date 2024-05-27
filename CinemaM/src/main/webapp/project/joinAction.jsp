<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Join Action</title>
</head>
<body>
    <%
        String userID = request.getParameter("userId");
        String userPassword = request.getParameter("userPw");
        String userName = request.getParameter("userName");
        

        String dbURL = "jdbc:mysql://localhost:3306/cinemam"; // 데이터베이스 URL 수정 필요
        String dbUser = "root"; // 데이터베이스 사용자명 수정 필요
        String dbPassword = "abcd1234"; // 데이터베이스 비밀번호 수정 필요

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "INSERT INTO user_tbl (userId, userPw, userName) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            pstmt.setString(2, userPassword);
            pstmt.setString(3, userName);
            pstmt.executeUpdate();

            out.println("Join Successful");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("XXXXXXXXXXXXXXXXXXX");
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
</body>
</html>