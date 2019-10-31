<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id = "user" class="user.User" scope ="page" />
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Dopetrope by HTML5 UP</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	
	<body>
	<%
			UserDAO userDAO = new UserDAO();
			int result = userDAO.login(user.getUserID(), user.getUserPassword());
			if (result == 1) {
				PrintWriter script =response.getWriter();
				script.println("<script>");
				script.println("location.href ='index.jsp'");
				script.println("</script>");
			}
			else if (result == 0) {
					PrintWriter script =response.getWriter();
					script.println("<script>");
					script.println("alert('비밀번호가 틀립니다.')");
					script.println("histoty.back()");
					script.println("</script>");
			}
			else if (result == -1) {
					PrintWriter script =response.getWriter();
					script.println("<script>");
					script.println("alert('존재하지 않는 아이디입니다.')");
					script.println("histoty.back()");
					script.println("</script>");	
			}	
	
			else if (result == -2) {
					PrintWriter script =response.getWriter();
					script.println("<script>");
					script.println("alert('대이터베이스 오류가 발생했습니다.')");
				script.println("histoty.back()");
					script.println("</script>");	
			}				
	%>
	</body>
</html>
