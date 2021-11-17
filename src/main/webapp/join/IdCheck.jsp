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
<%
	String id = request.getParameter("id");
	MemberDAO dao = MemberDAO.getInstance();
	
	boolean result = dao.duplicateIdCheck(id);
	
	response.setContentType("text/html;charset=utf-8");
	PrintWriter outq= response.getWriter();
	outq.println(id);
	if(result) outq.println("0"); //아이디 중복
	else outq.println("1");
	
	out.close();
%>
</body>
</html>