<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ�� �Է�</h1><br>

	<form action="UserResult.jsp" method="post">
	���̵� : <input type="text" name="mID" required><br> 
	��� : <input type="text" name="mPWD" required><br>
	���Ȯ�� : <input type="text" name="mmPWD" required><br>
	�ڵ��� : <input type="text" name="mPhone" maxlength="11"><br>
	<input type="submit" value="U�Է�"> <br><br>
	</form>
	
	<h1>���� �Է�</h1>
    <form action="ScoreResult.jsp" method="post">
        <p>�а� : 
        <select name="department">
            <option value="computer">��ǻ�Ͱ�</option>
            <option value="civil">����а�</option>
            <option value="physics">�����а�</option>
        </select></p>
        <p>���� : <input type="number" name="server" min="0"></p>
        <p>�ڹ� : <input type="number" name="java" min="0"></p>
        <p>
        <input type="checkbox" name="total" id="total"><label for="total">����</label>
        <input type="checkbox" name="average" id="average"><label for="average">���</label>
        </p>
        <p><input type="submit" value="S�Է�"></p>
    </form>
	
</body>
</html>