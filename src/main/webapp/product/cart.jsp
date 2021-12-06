<%@page import="product.Product"%>
<%@page import="java.util.ArrayList"%>
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
width:800px;
height:800px;
margin:0 auto;
position: relative;
}
</style>
<body>
<%@ include file = "../main/top.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	/* ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("productlist");
	if(list == null) out.println("선택 상품 없음");
	else {
		for(Object bbsid:list)
			out.println(bbsid+"<br>"+"엥");
	} */
%>
<form action="order/order.jsp" method="post">
<table id="list">
<tr><th style="text-align:center">선택</th>
	<th style="text-align:center">사진</th>
	<th style="text-align:center">상품명</th>
	<th style="text-align:center">가격</th>
	<th style="text-align:center">수량</th>
	<th style="text-align:center">합계</th>
</tr>
<tr><td colspan="6"><hr></td></tr>
<%
int sum=0;
ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("productlist");
for(int i=0;i<cartList.size();i++) {
	Product product=cartList.get(i);
	int total=product.getProductPrice() * product.getQuantity();
	sum += total;
%>
<tr>
	<td><input type="checkbox"></td>
	<td><img src="productUpload/<%= product.getFileRealName() %>"></td>
	<td><%=product.getProductName() %></td>
	<td><%=product.getProductPrice() %></td>
	<td><%=product.getQuantity() %></td>
	<td><%=total %></td>
</tr>
<%} %>
<tr><th></th>
<th></th><th>총액</th><th><%=sum %></th><th></th><th></th></tr>
</table>
</form>
</body>
</html>