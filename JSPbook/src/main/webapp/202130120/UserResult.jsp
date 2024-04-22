<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원 입력 결과</h1><br>

<%
	request.setCharacterEncoding("UTF-8");
	
	String sid = request.getParameter("mID");
	String spwd = request.getParameter("mPWD");
	String sspwd = request.getParameter("mmPWD");
	
	String sphone = request.getParameter("mPhone");
	
	sphone = sphone.substring(0, 3) + "-" + sphone.substring(3, 7) + "-" + sphone.substring(7);
%>

아이디 : <%=sid %><br>
비번 : <%=spwd %><br>
비번확인 :
<%
if(spwd != null && spwd.equals(sspwd)){
%>
	<%=sspwd %><br>
	입력한 비번 2개가 동일합니다<br>
<% 
}
else{
%>
	<%=sspwd %><br>
	입력한 비번 2개가 다릅니다<br>
<% 
}
%>
핸드폰 : <%=sphone %>
</body>
</html>