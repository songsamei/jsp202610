<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="join-result.jsp" method="get">
	 	<div>
	 		<label>아이디 : <input name = "userId"></label>
	 	</div>
	 	<div>
	 		<label>비밀번호 : <input name="pwd" type="password"></label>
	 	</div>
	 	<div>
	 		<label>이름 : <input name="name"></label>
	 	</div>
	 	<div>
	 		<label><input type="radio" name="gender" value="M" checked >남자</label>
            <label><input type="radio" name="gender" value="F">여자</label>
	 	</div>
	 	<div>
	 		<input type="submit" value="로그인">
	 	</div>
	 </form>
	
</body>
</html>