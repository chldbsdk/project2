<%@page import="java.io.PrintWriter"%>
<%@page import="Member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:center">

<%
	//사용가능한 아이디일 경우, 아이디 입력 폼에 넣기 위함
	String id=request.getParameter("id");
	MemberDAO dao = MemberDAO.getInstance();
	int cnt=dao.duplecateID(id);
	/* out.println("입력 ID : <strong>"+id+"</strong>"); */
	%>
	<!-- <script type="text/javascript">
	if(id.length < 5) alert("아이디는 5-11자 입니다.");
	else if(id.length >12) alert("아이디는 5-11자 입니다.");
	</script> -->
	<%
	if(cnt==0) {
		out.println("<p>사용 가능한 아이디입니다.</p>");
		out.println("<hr>");
		/* out.println("<a href='javascript:apply(\""+id+"\")'>확인</a>"); */
		out.println("<button type='button' onClick='javascript:apply(\""+id+"\")'>확인</button>");
%>

<script type="text/javascript">
	function apply(id) {
		//2.중복확인 id를 부모창에 적용
		//부모창 opener
		opener.document.dlatl.id.value=id;
		window.close();	
	}
</script>
<%} else {
	out.println("<p style='color:red'>해당 아이디는 사용하실 수 없습니다.</p>");
}%>
&nbsp;&nbsp;&nbsp;&nbsp;
<!-- <a href="javascript:history.back()">[다시시도]</a> -->
<button type="button" onClick="javascript:history.back()">다시시도</button>
<!-- <a href="javascript:window:close()">[창닫기]</a> -->
</div></body>
</html>