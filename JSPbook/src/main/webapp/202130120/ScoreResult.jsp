<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String sdepartment = request.getParameter("department"); //�а�
    int serverScore = Integer.parseInt(request.getParameter("server")); //����
    int javaScore = Integer.parseInt(request.getParameter("java")); //�ڹ�
    boolean isTotalChecked = request.getParameter("total") != null; //����
    boolean isAverageChecked = request.getParameter("average") != null; //���

    String departmentName = ""; //ȭ�鿡 ���� �� ���̸�
    // �а��� ���� �ѱ� �̸��� �����մϴ�.
    if ("computer".equals(sdepartment)) {
        departmentName = "��ǻ�Ͱ�";
    } else if ("civil".equals(sdepartment)) {
        departmentName = "����а�";
    } else if ("physics".equals(sdepartment)) {
        departmentName = "�����а�";
    }
 
    int total = serverScore + javaScore;
    double average = total / 2.0;

    String serverGrade = ""; //���
    if (serverScore >= 90) serverGrade = "A";
    else if (serverScore >= 80) serverGrade = "B";
    else if (serverScore >= 70) serverGrade = "C";
    else if (serverScore >= 60) serverGrade = "D";
    else serverGrade = "F";

    String javaGrade = "";
    if (javaScore >= 90) javaGrade = "A";
    else if (javaScore >= 80) javaGrade = "B";
    else if (javaScore >= 70) javaGrade = "C";
    else if (javaScore >= 60) javaGrade = "D";
    else javaGrade = "F";
%>
    <h1>���� �Է� ���</h1>
    <p>�а� : <%= departmentName %></p>
    <p>���� ���� : <%= serverScore %> , <%= serverGrade %></p>
    <p>�ڹ� ���� : <%= javaScore %> , <%= javaGrade %></p>
    
<% if (isTotalChecked) { %>
    <p>���� : <%= total %></p>
<% 
	}
   if (isAverageChecked) { 
 %>
    <p>��� ���� : <%= String.format("%.2f", average) %></p>
<% 
} 
%>
    <p>������ : <%=(new java.util.Date()).toLocaleString()%></p>

</body>
</html>