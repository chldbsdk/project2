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
	function nullCheck() {
		if(document.passwdSearch.id.value =="") {
			alert("아이디를 입력해주세요.");
			document.passwdSearch.id.focus();
			return;
		}
		if(document.passwdSearch.name.value =="") {
			alert("이름을 입력해주세요.");
			document.passwdSearch.name.focus();
			return;
		}
		if(document.passwdSearch.email.value=="") {
			alert("이메일을 입력해주세요.");
			document.passwdSearch.email.focus();
			return;
		}
		document.passwdSearch.submit();
	}
</script>
<body style="background-color:#F5DA81">
<form name="passwdSearch" action="LoginForm.jsp" method="post">
	<table>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>비밀번호 찾기</h2></td></tr>
		<tr><td>
		<input type="text" size="40" name="id" placeholder="아이디"></td></tr>
		<tr><td>
		<input type="text" size="40" name="name" placeholder="이름"></td></tr>
		<tr><td>
		<input type="email" size="40" name="email" placeholder="email@naver.com"></td></tr>
		<tr><td>	
		<input type="button" style="width:303px" value="비밀번호 찾기" onclick="nullCheck()"></td></tr>	
		<!-- <input type="button" size="40" class="passwdbtn" onClick="">비밀번호 찾기 -->
	</table></form>
</body>
</html>