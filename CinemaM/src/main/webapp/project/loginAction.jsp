<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action</title>
</head>
<body>
    <%
        String userID = request.getParameter("userId");
        String password = request.getParameter("userPw");

        String dbURL = "jdbc:mysql://localhost:3306/cinemam"; // �����ͺ��̽� URL ���� �ʿ�
        String dbUser = "root"; // �����ͺ��̽� ����ڸ� ���� �ʿ�
        String dbPassword = "abcd1234"; // �����ͺ��̽� ��й�ȣ ���� �ʿ�

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "SELECT * FROM user WHERE userId=? AND userPw=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                out.println("Login Successful");
            } else {
                out.println("Invalid credentials. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
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