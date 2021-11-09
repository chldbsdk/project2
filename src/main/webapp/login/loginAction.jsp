<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="test.DAO" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="test.DTO" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
/* String id=request.getParameter("id");
String passwd=request.getParameter("passwd");
String saveid=request.getParameter("saveid"); */
DAO dao=new DAO();
//boolean flag =dao.login(id, passwd);
int result = dao.login(user.getUserID(),user.getUserPassword());

if(result ==1) {
	PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("location.href='top.jsp'");
	script.println("</script>");
}
else if(result == 0) {
	PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("alter('비밀번호가 틀립니다.')");
	script.println("history.back()");
	script.println("</script>");
}
else if(result ==-1) {
	PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("alter('아이디가 존재하지 않습니다.')");
	script.println("history.back()");
	script.println("</script>");
}
else if(result ==-2) {
	PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("alter('오류.')");
	script.println("history.back()");
	script.println("</script>");
}
/* if(flag) {
	//로그인중인지 알 수 있는 세션에 저장
	session.setAttribute("loginok", "yes");
	
	//아이디와 체크값 저장
	session.setAttribute("idok", id);
	
	//체크하면 값으로 안하면 null값
	session.setAttribute("saveok",saveid);
	
	//세션유지시간
	
	//로그인메인화면으로 이동
	response.sendRedirect("top.jsp");
}else { 
	*/
%>
<!-- <script type="text/javascript">
alert("아이디와 비밀번호가 맞지 않습니다.");
history.back();
</script> -->
<%-- <%} %> --%>
</body>
</html>