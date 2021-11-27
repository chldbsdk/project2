<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../main/top.jsp" %>
<table border="1" width="500px">
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
</table>
</body>
</html>