<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ�� �Է� ���</h1><br>

<%
	request.setCharacterEncoding("UTF-8");
	
	String sid = request.getParameter("mID");
	String spwd = request.getParameter("mPWD");
	String sspwd = request.getParameter("mmPWD");
	
	String sphone = request.getParameter("mPhone");
	
	sphone = sphone.substring(0, 3) + "-" + sphone.substring(3, 7) + "-" + sphone.substring(7);
%>

���̵� : <%=sid %><br>
��� : <%=spwd %><br>
���Ȯ�� :
<%
if(spwd != null && spwd.equals(sspwd)){
%>
	<%=sspwd %><br>
	�Է��� ��� 2���� �����մϴ�<br>
<% 
}
else{
%>
	<%=sspwd %><br>
	�Է��� ��� 2���� �ٸ��ϴ�<br>
<% 
}
%>
�ڵ��� : <%=sphone %>
</body>
</html>