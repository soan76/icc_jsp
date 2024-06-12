<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H1>회원 정보 수정</H1>
<%
	request.setCharacterEncoding("UTF-8");
	
	String userId = (String)session.getAttribute("userId");
	
%>

<%
	//디비 연결
	Connection MyConn = null;
	String sUrl = "jdbc:mysql://localhost:3306/myjspdb";
	String sUser = "root";
	String sPass = "abcd1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	
	MyConn = DriverManager.getConnection(sUrl, sUser, sPass);
	out.println("데이터베이스 연결이 성공했습니다.<br>");
	//디비 연결 끝
%>
<% 
	PreparedStatement MyPStmt = null;
	try{
		String sMySql = "update tb_userinfo set userId = ?";
		MyPStmt = MyConn.prepareStatement(sMySql);
		MyPStmt.setString(1, userId);
		//set
		MyPStmt.executeUpdate();
		
		
	} catch (SQLException ex){
		out.println("SQLException : " + ex.getMessage());		
	
	} finally {
		if(MyPStmt != null)
			MyPStmt.close();
		if(MyConn != null)
			MyConn.close();
	}
%>
</body>
</html>