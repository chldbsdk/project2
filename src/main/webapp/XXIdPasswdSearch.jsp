<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="test.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function view() {
		if($('input:radio[id=pp]').is(':checked')) {
			$('#phone').hide();
		}else {
			$('#phone').show();
		}
	}
</script>
</head>
<body>
<center>
<h3>아이디/비밀번호 찾기</h3>
<hr>
<table width="400px">
		<tr>
			<td align="left" style="vertical-align:middle;" height="50px">
			<span class="half_HL">아이디찾기</span></td>
			
			<td align="right" style="vertical-align:middle;">
			<span onclick="location.href='Passwd.jsp'">비밀번호찾기</span></td>	
		</tr>
</table>
<form>
	<label>
		<input type="radio" id="pp" name="find" value="1" onchange="view()" checked>휴대전화
	</label>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	
	<label>
		<input type="radio" id="ee" name="find" value="2" onchange="view()">이메일
	</label><br><br>
	
	<div id="phone">
	<input type="text" size="50" value="" placeholder="이름을 입력하세요."><br>	
	<input type="tel" size="39" placeholder="휴대폰번호를 입력하세요. ( - 제외 )">
	<input type="submit" value="인증요청"><br><br>
	<input type="text" size="50" value="" placeholder="인증번호 입력"><br><br>
	<input type="submit" size="50" value="   아이디 찾기   "><br>	
	</div>
	
	<div id="e-mail" style="display:none">
	<input type="email" size="50" placeholder="email@naver.com"><br><br>
	<input type="submit" size="50" value="   아이디 찾기   "><br>
	</div>
</form>
</center>
</body>
</html>