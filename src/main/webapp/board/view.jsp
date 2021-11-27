<%@page import="bbs.BbsDAO"%>
<%@page import="bbs.Bbs"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int bbsID=0;
	if(request.getParameter("bbsID")!=null) {
		bbsID=Integer.parseInt(request.getParameter("bbsID"));
	}
	
	if(bbsID==0) {
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs=new BbsDAO().getBbs(bbsID);
%>
제목 <%=bbs.getBbsTitle() %>
작성자 <%=bbs.getUserID() %>
</body>
</html>