<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../design.css" rel="stylesheet" type="text/css">
</head>
<%-- <%
String saveok=(String)session.getAttribute("saveok");
String id=(String)session.getAttribute("idok");
%> --%>
<script type="text/javascript">
	function loginCheck() {
		if(document.loginform.id.value =="") {
			alert("아이디를 입력해주세요.");
			document.loginform.id.focus();
			return;
		}
		if(document.loginform.passwd.value=="") {
			alert("비밀번호를 입력해주세요.");
			document.loginform.passwd.focus();
			return;
		}
		document.loginform.submit();
	}
</script>
<body>
<jsp:include page ="../main/top.jsp" flush="false"/>

<form name="loginform" action="loginAction.jsp" method="post">
	<table>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>로 그 인</h2></td></tr>
		<tr><td>
		<input type="text" size="40" name="id" placeholder="아이디"></td></tr>
		<tr><td>
		<input type="password" size="40" name="passwd" id="passwd" placeholder="비밀번호"></td></tr>
		<tr><td>
		<input type="button" style="width:303px" value="로그인" onclick="loginCheck()"></td></tr>

		<tr><td align="center"><br>
		<span onclick="location.href='IdSearch.jsp'">아이디 찾기</span> | 
		<span onclick="location.href='PasswdSearch.jsp'">비밀번호 찾기</span> | 
		<span onclick="location.href='../join/JoinForm.jsp'">회원가입</span></td></tr>
		<tr><td><hr></td></tr>
		<tr><td>
		<button type="button" size="40" class="nonbtn" onClick="location.href='Non_Member.jsp'">비회원 주문조회</button></td></tr>

	<%
		String msg=request.getParameter("msg");
		if(msg!=null && msg.equals("0")) {
	%>
			<script type="text/javascript">
			alert("비밀번호를 확인해주세요.")
			history.back();
			</script>
		<%}
		else if (msg != null && msg.equals("-1")) {
%>			<script type="text/javascript">
			alert("아이디를 확인해주세요.")
			history.back();
			</script>
		<%}	%>
	</table>
</form>
</div>
<%-- <jsp:include page ="../main/footer.jsp" flush="false"/> --%>
</body>
</html>