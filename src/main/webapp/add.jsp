<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String menu = request.getParameter("menu");
	ArrayList<String> list = (ArrayList)session.getAttribute("list");
	if(list==null) {
		list = new ArrayList<String>();
	}
	list.add(menu);
	
	session.setAttribute("list",list);
%>
</body>
</html>