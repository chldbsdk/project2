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

<table id="list">
	<tr><th>상품ID</th><th>상품사진</th><th>상품명</th><th>가격</th></tr>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
Statement stat = null;
ResultSet rs = null;

String jdbcDriver = "jdbc:mysql://localhost:3306/shoppingmall?serverTimezone=UTC";
String dbUser="root";
String dbPass="a202044033";
 int total=0; 

try{
	conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	stat=conn.createStatement();
	String sql="select count(*) from producttbl";
	rs=stat.executeQuery(sql);
	if(rs.next()) total=rs.getInt(1);
	rs.close();
	out.println("총 게시물 : "+total+"개"); 
	
	String sqlList="select productID,filename,productname,productprice from producttbl order by productname DESC";
	ArrayList<Bbs> list= new ArrayList<Bbs>();
	rs=stat.executeQuery(sqlList);
	System.out.println(rs);
	
	/* if(total==0) { */



	while(rs.next()) {
		String idx=rs.getString(1);
		String title=rs.getString(2);
		String name=rs.getString(3);
		int time=rs.getInt(4);
%>
<tr>
<td><%=idx %></td>
<td align="left"><a href="product/productDetailForm.jsp?productID=<%=idx %>"><%=title %></a></td>
<td align="center"><%=name %></td>
<td align="center"><%=time %></td>
</tr>
<%} %>
<%
 rs.close();
stat.close();
conn.close();
}catch(SQLException e) {
	out.println(e.toString());
}
%>
</table>
<table width="100%" cellpadding="0" cellspacgin="0" border="0">
<tr><td colspan="4" height="5"></td></tr>
<tr align="center"><td>
<button type="button" onclick="location.href='productInput.jsp'">글쓰기</button>
</table>
<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script> -->
	<%@ include file="../main/footer.jsp" %>
		
</body>
</html>