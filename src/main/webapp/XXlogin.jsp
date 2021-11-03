<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="test.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
<h2>로 그 인</h2>
<hr>
<table width="400px">
		<tr>
			<td align="left" style="vertical-align:middle;" height="50px">
			<span class="half_HL">기존 회원</span></td>
			
			<td align="right" style="vertical-align:middle;">
			<span onclick="location.href='Non_Member.jsp'">비회원주문조회</span></td>
				
		</tr>
</table>
	<form name="id" method="get">
		<input type="text" size="50" value="" placeholder="아이디"><br>		
		<input type="password" size="50" value="" placeholder="비밀번호"><br><br>		
		<input type="submit" value="로 그 인"><br>
		<label>
			<input type="checkbox" value="autologin" checked>자동 로그인
		</label>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	
		<!-- <a href="IdPasswdSearch.jsp" target="_blank">아이디/비밀번호 찾기</a> -->	
		<span onclick="window.open('IdPasswdSearch.jsp')">아이디/비밀번호 찾기</span>
	</form>
</center>
</body>
</html>