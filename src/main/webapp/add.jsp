<%@page import="product.ProductDAO"%>
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
<body>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String bbsid = request.getParameter("bbsid");
	ProductDAO dao=new ProductDAO();
	ArrayList<Product> list = dao.getProductAll(); //바꿀예정
	Product goods = new Product();
	for(int i=0;i<list.size();i++) {
		goods=list.get(i);
		if(goods.getProductID().equals(bbsid)) break;
	}	
%>
<p><%=bbsid %> 이거다</p>
</body>
</html>