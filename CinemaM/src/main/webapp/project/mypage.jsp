<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>마이 페이지</h1><br><br>
    <%	
    	String userId = (String)session.getAttribute("userId");

        String dbURL = "jdbc:mysql://localhost:3306/cinemam"; 
        String dbUser = "root"; 
        String dbPassword = "abcd1234"; 

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
		
        
        
            try {
	                Class.forName("com.mysql.jdbc.Driver");
	                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
	                String sql = "select * from user_tbl where userId = ?";
	                pstmt = conn.prepareStatement(sql);
	                pstmt.setString(1, userId);
	                rs = pstmt.executeQuery();
            	
	                
	                
	                    %>
	                    <h1>사용자 정보</h1>
	                    <p>사용자 아이디: <%= userId %></p>
	                    <%
            } catch (Exception e) {
                e.printStackTrace();
                out.println("XXX");
            } 
        
    %>
    <%
    	out.println("<a href='getInfo.jsp'>정보수정</a>");
    %>
    
</body>
</html>