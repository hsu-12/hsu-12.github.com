<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="graduated.GdDAO"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id = "graduated" class="graduated.Gd" scope ="page" />
<jsp:setProperty name="graduated" property="gdTitle"/>
<jsp:setProperty name="graduated" property="gdContent"/>
<!DOCTYPE HTML>
<% request.setCharacterEncoding("UTF-8");%>
<html>
	<head>
		<title>Dopetrope by HTML5 UP</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	
	<body>
	<%
	if (graduated.getGdTitle() == null || graduated.getGdContent() == null) {
		PrintWriter script =response.getWriter();
		script.println("<script>");
		script.println("alert('입력 되지 않은 사항이 존재합니다.')");
		script.println("histroy.back()");
		script.println("</script>");
	}	else{
		GdDAO gdDAO = new GdDAO();
		int result =gdDAO.write(graduated.getGdTitle(), graduated.getUserID(), graduated.getGdContent());
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
			script.println("location.href = 'Gboard.jsp'");
			script.println("</script>");
		}
	}
	%>
	</body>
</html>
