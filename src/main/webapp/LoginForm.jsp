<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="design.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:#F5DA81">
	<table>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>로 그 인</h2></td></tr>
		<tr><td>
		<input type="text" size="40" name="id" placeholder="아이디"></td></tr>
		<tr><td>
		<input type="password" size="40" name="passwd" id="passwd" placeholder="비밀번호"></td></tr>
		<tr><td>
		<label><input type="checkbox">로그인 상태 유지</label>
		<label><input type="checkbox">아이디 저장</label></td></tr>
		<tr><td>
		<input type="submit" style="width:303px" value="로그인"></td></tr>
		<!-- <input type="button" size="40" class="loginbtn" onClick="">로그인 -->
		<tr><td align="center"><br>
		<span onclick="location.href='IdSearch.jsp'">아이디 찾기</span> | 
		<span onclick="location.href='PasswdSearch.jsp'">비밀번호 찾기</span> | 
		<span onclick="location.href='JoinForm.jsp'">회원가입</span></td></tr>
		<tr><td><hr></td></tr>
		<tr><td>
		<button type="button" size="40" class="nonbtn" onClick="location.href='Non_Member.jsp'">비회원 주문조회</button></td></tr>
	</table>
</body>
</html>