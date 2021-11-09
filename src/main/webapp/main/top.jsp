<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="design.css" rel="stylesheet" type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
#menu {
	border-top:1px solid black;
	border-bottom:1px solid black;
}
#menu ul {
	margin:0;
	padding:0;
	width:567px;
}
#menu ul li {
	display : inline-block;
	list-style-type:none;
	padding:0px 15px;
}
</style>
</head>
<body>
<center>
<div>
<div id=login style="float:right;">
	<span style="color:gray;" onclick="location.href='LoginForm.jsp'">로그인 |</span>
	<span style="color:gray;" onclick="location.href='IdSearch.jsp'"> 회원가입</span>
</div>
<header align="center">
<h3>#화음 <input type="text" value="" placeholder="serach">
<span onclick="location.href='IdSearch.jsp'"><i class="fas fa-shopping-cart"></i></span>
<span onclick="location.href='IdSearch.jsp'"><i class="fas fa-user"></i></span>
</header>

<nav id="menu">
	<ul><li>카테고리+
	<li>랭킹
	<li>신상
	<li>이벤트
	<li>게시판</ul>
</nav></div></center>
</body>
</html>