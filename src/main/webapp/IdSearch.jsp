<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="design.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">

</script>
<body style="background-color:#F5DA81">
	<table>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>아이디 찾기</h2></td></tr>
		<tr><td align="center">
		<label>
			<input type="radio" id="pp" name="find" value="1" onchange="view()" checked>휴대전화
		</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label>
			<input type="radio" id="pp" name="find" value="1" onchange="view()">이메일
		</label></td></tr>
		<tr><td>
		<input type="text" size="40" name="name" placeholder="이름"></td></tr>
		<tr><td>
		<input type="text" size="40" name="birth" placeholder="생년월일 6자리"></td></tr>
		<tr><td>
		<input type="tel" size="40" name="tel" placeholder="전화번호 8자리 (010제외)"></td></tr>
		<tr><td>	
		<input type="button" style="width:303px" id="button" value="인증요청"></td></tr>
		<script type="text/javascript">
			document.getElementById("button").onclick=function() {
				document.write("<tr><td><input type="text" size="40" name="dd" placeholder="인증번호"></td></tr>");
			}
		</script>
		<script>
		function button_click() {console.log("버튼을 누름");}
		</script>
		
		<!-- <tr><td>
		<input type="text" size="40" name="num" placeholder="인증번호"></td></tr>
		<tr><td>	
		<input type="submit" style="width:303px" value="아이디 찾기"></td></tr>	
		<input type="button" size="40" class="nonOrderbtn" onClick="">비회원 주문조회 -->
		
		<!-- <tr><td>
		<input type="text" size="40" name="name" placeholder="이름"></td></tr>
		<tr><td>
		<input type="email" size="40" name="email" placeholder="email@naver.com"></td></tr>
		<tr><td>	
		<input type="submit" style="width:303px" value="아이디 찾기"></td></tr>	 -->
	</table>
</body>
</html>