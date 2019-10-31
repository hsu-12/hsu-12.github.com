<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="se.SeDAO"%>
<%@ page import="java.io.PrintWriter"%>
<jsp:useBean id="se" class="se.Se" scope="page" />
<jsp:setProperty name="se" property="seTitle" />
<jsp:setProperty name="se" property="seContent" />
<!DOCTYPE HTML>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<%
		if (se.getSeTitle() == null || se.getSeContent() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력 되지 않은 사항이 존재합니다.')");
			script.println("histroy.back()");
			script.println("</script>");
		} else {
			SeDAO seDAO = new SeDAO();
			int result = seDAO.write(se.getSeTitle(), se.getUserID(), se.getSeContent());
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다.')");
				script.println("histroy.back()");
				script.println("</script>");
			} else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'FreeBoard.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>
