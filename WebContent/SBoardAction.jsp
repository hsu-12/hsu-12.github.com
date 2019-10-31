<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="student.StuDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id = "student" class="student.Stu" scope ="page" />
<jsp:setProperty name="student" property="stuTitle"/>
<jsp:setProperty name="student" property="stuContent"/>
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
	if (student.getStuTitle() == null || student.getStuContent() == null) {
		PrintWriter script =response.getWriter();
		script.println("<script>");
		script.println("alert('입력 되지 않은 사항이 존재합니다.')");
		script.println("histroy.back()");
		script.println("</script>");
	}	else{
		StuDAO stuDAO = new StuDAO();
		int result =stuDAO.write(student.getStuTitle(), student.getUserID(), student.getStuContent());
		if (result == -1){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다.')");
			script.println("histroy.back()");
			script.println("</script>");	
		}
		else {
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("location.href = 'Sboard.jsp'");
			script.println("</script>");
		}
	}
	%>
	</body>
</html>
