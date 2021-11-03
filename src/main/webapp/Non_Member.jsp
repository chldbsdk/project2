<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="design.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:#F5DA81">
	<table>
		<!-- <caption>로그인</caption> -->
		<tr><td align="center"><h2>비회원 주문조회</h2></td></tr>
		<tr><td>
		<input type="text" size="40" name="name" placeholder="이름"></td></tr>
		<tr><td>
		<input type="text" size="40" name="ordernumber" placeholder="주문번호"></td></tr>
		<tr><td><p align="center" style="font-size:12px">※비회원으로 구매한 경우에만 주문조회가 가능합니다.</p></td></tr>
		<tr><td>	
		<input type="submit" style="width:303px" value="비회원 주문조회"></td></tr>	
		<!-- <input type="button" size="40" class="nonOrderbtn" onClick="">비회원 주문조회 -->
	</table>
</body>
</html>