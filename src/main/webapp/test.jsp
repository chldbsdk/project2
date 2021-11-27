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
<%
	int pageNumber=1; //기본 1페이지
	if(request.getParameter("pageNumber")!=null) {
		pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
	}
	/* final int Rowsize=5; //한 페이지에 보일 게시물 수
	final int Block=5; //아래에 보일 페이지 최대 개수 1-5/6-10...
	int page=1; //기본 페이지 값
	if(request.getParameter("page") != null) {
		page = Integer.parseInt(request.getParameter("page")); //page값을 저장
	}
	
	int start=(page*Rowsize) - (Rowsize-1); //해당 페이지에서 시작번호(step2)
	int end=(page*Rowsize); //해당 페이지에서 끝번호(step2)
	
	int allPage=0; //전체 페이지 수
	
	int startPage=((page-1)/Block*Block)+1; //시작블럭숫자(1-5페이지일 경우 1, 6-10일 경우 6)
	int endPage=((page-1)/Block*Block)+Block; //끝 블럭 숫자 (1-5일 경우 5, 6-10일 경우 6) */
%>
<table id="list">
	<tr><th style="text-align:center">번호</th>
	<th style="text-align:left">제목</th>
	<th style="text-align:center">작성자</th>
	<th style="text-align:center">작성일</th></tr>

 <%
		BbsDAO BbsDAO = new BbsDAO();
		ArrayList<Bbs> list=BbsDAO.getList(pageNumber);
		for(int i=0;i<list.size();i++){
	%>
	<tr>
	<td><%=list.get(i).getBbsID() %></td>
	<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID() %>">
	<%=list.get(i).getBbsTitle() %></a></td>
	<td><%=list.get(i).getUserID() %></td>
	<td><%=list.get(i).getBbsDate().substring(0,11)+list.get(i).getBbsDate().substring(11,13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분" %></td>
	</tr>
	<%} %>
	</tbody>
</table>
<%if(pageNumber !=1) { %>
<a href="bbs.jsp?pageNumber=<%=pageNumber-1 %>">이전</a>
<%}if(BbsDAO.nextPage(pageNumber+1)) {%>
	<a href="bbs.jsp?pageNumber=<%=pageNumber+1 %>">다음</a>
<%} %>
</table>
<table width="100%" cellpadding="0" cellspacgin="0" border="0">
<tr><td colspan="4" height="5"></td></tr>
<tr align="center"><td>
<button type="button" onclick="location.href='board/QnAboard.jsp'">글쓰기</button>
</table>
<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script> -->
</body>
</html>