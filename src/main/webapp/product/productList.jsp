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
text-align:center;
border:1px solid;
width:800px;
height:800px;
margin:0 auto;
position: relative;
}
</style>
<body>
<%@ include file="../main/top.jsp" %>
<%-- <table border="1" width="500px">
<tr>
<th>상품ID</th><th>상품사진</th><th>상품명</th><th>가격</th>
</tr>
<c:forEach var="row" items="${list }">
<tr aling="center">
<td>${row.product_id }</td>
<td><img src="../productUpload/${row.picture_url}"
width="100" height="100"></td>
<td>${row.product_name }</td>
<td>
<fmt:formatNumber value="${row.price }" pattern="#,###" /> </td>
</tr>
</c:forEach>
</table> --%>
<table id="list">
	<tr><th style="text-align:center">번호</th>
	<th style="text-align:center">사진</th>
	<th style="text-align:center">이름</th>
	<th style="text-align:center">가격</th></tr>
	<tr><td colspan="4"><hr></td></tr>
	<%
		 ProductDAO DAO = new ProductDAO();
		ArrayList<Product> list=DAO.getProductAll();
		for(Product p:list){		
	%>
	<tr>
	<td align="center"><%=p.getProductID() %></td>
	<td><a href="productDetailForm.jsp?productID=<%=p.getProductID() %>">
	<img src="../productUpload/<%=p.getFileRealName() %>" width="70"></a></td>
	<td align="center"><%=p.getProductName() %></td>
	<td align="center"><%=p.getProductPrice() %></td>
	</tr>
	<tr><td colspan="4"><hr></td></tr>
	<%} %>
	
<table width="100%" cellpadding="0" cellspacgin="0" border="0">
<tr><td colspan="4" height="5"></td></tr>
<tr align="center"><td>
<button type="button" onclick="location.href='productInput.jsp'">글쓰기</button>
</table>
</body>
</html>