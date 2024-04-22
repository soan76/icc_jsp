<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 입력</h1><br>

	<form action="UserResult.jsp" method="post">
	아이디 : <input type="text" name="mID" required><br> 
	비번 : <input type="text" name="mPWD" required><br>
	비번확인 : <input type="text" name="mmPWD" required><br>
	핸드폰 : <input type="text" name="mPhone" maxlength="11"><br>
	<input type="submit" value="U입력"> <br><br>
	</form>
	
	<h1>성적 입력</h1>
    <form action="ScoreResult.jsp" method="post">
        <p>학과 : 
        <select name="department">
            <option value="computer">컴퓨터과</option>
            <option value="civil">토목학과</option>
            <option value="physics">물리학과</option>
        </select></p>
        <p>서버 : <input type="number" name="server" min="0"></p>
        <p>자바 : <input type="number" name="java" min="0"></p>
        <p>
        <input type="checkbox" name="total" id="total"><label for="total">총점</label>
        <input type="checkbox" name="average" id="average"><label for="average">평균</label>
        </p>
        <p><input type="submit" value="S입력"></p>
    </form>
	
</body>
</html>