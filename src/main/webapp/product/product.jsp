<%@page import="product.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#list {
text-align: center;
display: inline-block;
}
</style>
<body>
<%@ include file="../main/top.jsp" %>
   <%
      int i=0;
      ProductDAO DAO = new ProductDAO();
      ArrayList<Product> list=DAO.getProductAll();
      for(Product p:list){
   %>
   <div>
   <table id="list">
   <tr><td><img src="../productUpload/<%=p.getFileRealName() %>" width="70"></td></tr>
   <tr><td align="center"><%=p.getProductName() %></td></tr>
   <tr><td align="center"><%=p.getProductPrice() %></td></tr>
   </table>
      <% i++;
      if(i==2){%>
      </div>
      <%} %>
      <%i = 0; %>
   <%} %>
</body>
</html>