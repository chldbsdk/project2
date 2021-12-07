<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bbs.Bbs"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bbs.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#list {
text-align:center;
border:1px solid;
width:800px;
height:800px;
margin:0 auto;
position: relative;
}
a ,a:hover{
color: #000000;
text-decoration: none;
}
</style>
<body>
<%@ include file="../main/top.jsp" %>
<%@include file="../main/side.jsp" %>

<table id="list">
	<th style="text-align:center">NO</th>
	<th style="text-align:center">제목</th>
	<th style="text-align:center">작성자</th>
	<th style="text-align:center">작성일</th>
	<tr><td colspan="4"><hr></td></tr>

<%
		BbsDAO DAO = new BbsDAO();
		ArrayList<Bbs> list=DAO.getBbsAll();
		for(Bbs p:list){		
%>
	<tr>
	<td align="center"><%=p.getBbsID() %></td>
	<td align="left"><a href="QnAboardView.jsp?bbsID=<%=p.getBbsID() %>"><%=p.getBbsTitle() %></a></td>
	<td align="center"><%=p.getUserID() %></td>
	<td align="center"><%=p.getBbsDate() %></td>
	</tr>
	<tr><td colspan="4"><hr></td></tr>
	<%} %>
</table>

<table width="100%" cellpadding="0" cellspacgin="0" border="0">
<tr><td colspan="4" height="5"></td></tr>
<tr align="center"><td>
<button type="button" onclick="location.href='QnAboard.jsp'">글쓰기</button>
</table>

<%@ include file="../main/footer.jsp" %>	
</body>
</html>