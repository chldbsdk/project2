<%@page import="java.io.PrintWriter"%>
<%@page import="Login.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
String email=request.getParameter("email"); 
LoginDAO dao=new LoginDAO();
String id = dao.idSearch(name,email);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border:1px solid;
	margin-left: auto; 
	margin-right: auto;
}
</style>
</head>
<body>
<%
if(id != null) {
%>
<p>아이디는 <%=id %>
<%}else { %>
<p>아이디 ㄴㄴ
<%} %>

<form name="idSearch" action="idSearchAction.jsp" method="post">
	<table>
		<tr><td align="center"><h2>아이디 찾기</h2></td></tr>
		<tr><td align="center">
		
		</td></tr>

	</table>
</form>
</body>
</html>