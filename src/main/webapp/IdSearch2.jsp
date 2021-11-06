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
		if(document.idSearch.name.value =="") {
			alert("이름을 입력해주세요.");
			document.idSearch.name.focus();
			return;
		}
		if(document.idSearch.email.value =="") {
			alert("이메일을 입력해주세요.");
			document.idSearch.email.focus();
			return;
		}

		document.idSearch.submit();
	}
</script>
<body style="background-color:#F5DA81">
<form name="idSearch" action="LoginForm.jsp" method="post">
	<table>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>아이디 찾기</h2></td></tr>
		<tr><td align="center">
		<label>
			<input type="radio" name="find" value="phone" onclick="location.href='IdSearch.jsp'">휴대전화
		</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label>
			<input type="radio" name="find" value="email" checked>이메일
		</label></td></tr>
		<tr><td>
		<input type="text" size="40" name="name" placeholder="이름"></td></tr>
		<tr><td>
		<input type="text" size="40" name="email" placeholder="email@naver.com"></td></tr>
		
		<tr><td>	
		<input type="button" style="width:303px" class="button" value="아이디 찾기" onclick="nullCheck()"></td></tr>
		<script type="text/javascript">
			/* document.getElementById("button").onclick=function() {
				document.write("<tr><td><input type="text" size="40" name="dd" placeholder="인증번호"></td></tr>");
			} */
			/* $('.btnAdd').click (function () {                                        
                $('.button').append (                        
                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="Remove"><br>'                    
                ); 
			} */
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
	</table></form>
</body>
</html>