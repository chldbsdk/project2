<%@page import="java.io.PrintWriter"%>
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
	String id = request.getParameter("productid"); //앞에서 넘겨받은 상품게시글id
	ProductDAO dao=new ProductDAO(); 
	ArrayList<Product> prlist = dao.getProductAll(); //상품 정보를 받는 리스트 모든 상품들 담겨있음.
	Product product = new Product();
	for(int i=0;i<prlist.size();i++) {
		product=prlist.get(i); 
		if(product.getProductID().equals(id)) {
			break;
		}
	}
	ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("productlist");
	if(list == null) {
		list=new ArrayList();
		session.setAttribute("productlist",list);
	}
	int cnt=0;
	Product goodsQnt=new Product();
	for(int i=0;i<list.size();i++) {
		goodsQnt=list.get(i);
		if(goodsQnt.getProductID().equals(id)) {
			cnt++;
			int orderQuantity=goodsQnt.getQuantity() +1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt==0) {
	product.setQuantity(1);
	list.add(product);
	}
	response.sendRedirect("cart.jsp?id="+id);

	/* PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("alert('장바구니에 추가되었습니다.')");
	script.println("location.href='cart.jsp'");
	script.println("</script>"); */
%>
</body>
</html>