<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ID = "root";
	String PWD = "a202044033";
	String PORTNO="3306";
	String DBNAME="mysql";
	String TIMEZONE="serverTimezone=UTC";
	
	String Query="jdbc:mysql://localhost:"+PORTNO+"/"+DBNAME+"?"+TIMEZONE;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(Query,ID,PWD);
	
	if(conn != null) {
		out.println("WebDB 데이터베이스로 연결했습니다.<br>");
		conn.close();
		out.println("WebDB 데이터베이스의 연결을 끊었습니다. <br>");
	}else {
		out.println("WebDB 데이터베이스로 연결할 수 없습니다. <br>");
	}
%>
</body>
</html>