<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	position:absolute;
  	padding : 150px 477.4px;
}

button {
	width:100%;
}
</style>
<script type="text/javascript">
	function nullCheck() {
		if(document.idSearch.name.value =="") {
			alert("이름을 입력해주세요.");
			document.idSearch.name.focus();
			return;
		}
		if(document.idSearch.birth.value =="") {
			alert("생년월일을 입력해주세요.");
			document.idSearch.birth.focus();
			return;
		}
		if(document.idSearch.tel.value=="") {
			alert("전화번호를 입력해주세요.");
			document.idSearch.tel.focus();
			return;
		}
		/* const box = document.getElementById("box");
		const newP=document.createElement('p');
		newP.innerHTML="<input type='text' size='40' name='num' placeholder='인증번호'><br><input type='button' style='width:303px' value='아이디 찾기'>";
		box.appendChild(newP); */
		
		/* const table=document.getElementById('phone');
		const newRow=table.insertRow(); */
		
		document.idSearch.submit();
	}
</script>
<body>
<jsp:include page ="../main/top.jsp" flush="false"/>
<form name="idSearch" action="idSearchActionPhone.jsp" method="post">

	<table id='phone'>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>아이디 찾기</h2></td></tr>
		<tr><td align="center">
		<label>
			<input type="radio" name="find" value="phone" checked>휴대전화
		</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label>
			<input type="radio" name="find" value="email" onclick="location.href='IdSearch2mail.jsp'">이메일
		</label></td></tr>
		<tr><td>
		<input type="text" size="40" name="name" placeholder="이름"></td></tr>
		<tr><td>
		<input type="text" size="40" name="birth" placeholder="생년월일 6자리"></td></tr>
		<tr><td>
		<input type="tel" size="40" name="tel" placeholder="휴대폰 번호 (010포함,-제외)"></td></tr>
		<tr><td>	
		<input type="button" style="width:303px" class="button" value="아이디 찾기" onclick="nullCheck()"></td></tr>
<!-- 		<tr><td>	
		<input type="button" style="width:303px" class="button" value="인증요청" onclick="nullCheck()"></td></tr>
		<script type="text/javascript">
			/* document.getElementById("button").onclick=function() {
				document.write("<tr><td><input type="text" size="40" name="dd" placeholder="인증번호"></td></tr>");
			} */
			/* $('.btnAdd').click (function () {                                        
                $('.button').append (                        
                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="Remove"><br>'                    
                ); 
			}  */
		</script>	 -->
		
	</table></form>
</body>
</html>