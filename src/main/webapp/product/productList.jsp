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
padding: 30px;
}
td{
width:150px;
}
#list-line{
padding-left:40px;
}
#wrap{
padding-left: 20px;
}
#list a, a:hover{
color: #000000;
text-decoration: none;
}
</style>
<body id="wrap">
<%@ include file="../main/top.jsp" %>
<div>
   <%
      ProductDAO DAO = new ProductDAO();
      ArrayList<Product> list=DAO.getProductAll();
      
      int i=0;
      for(Product p:list){
   %>
   <% if(i==0){%>
   <div id="list-line">
   <%}%>
   <table id="list">
   <tr><td><a href="productDetailForm.jsp?productID=<%=p.getProductID() %>"><img src="../productUpload/<%=p.getFileRealName() %>" style="border:solid 2px;" width="70px" height="100px"></a></td></tr>
   <tr><td align="center"><%=p.getProductName() %></td></tr>
   <tr><td align="center"><%=p.getProductPrice() %>원</td></tr>
   </table>
   <% 
      if(i==2){%>
         </div><br>
         <% i = 0;
      }
      i++;
   } %>
</div>
</body>
</html>