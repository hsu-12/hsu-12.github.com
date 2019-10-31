<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>  
<%@ page import="java.io.PrintWriter" %>
<%@ page import="se.SeDAO" %>
<%@ page import="se.Se" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" href="css/bootstrap.css"/>
	</head>
	<body class="homepage is-preload">
		<%
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		%>
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">

					<!-- Logo -->
						<h1><a href="index.jsp">SE LAB</a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<a> </a>
								<li><a href="index.jsp">Home</a></li>
								<li  class="current">
							     <a href="#">게시판</a>
									<ul>
										<li><a href="FreeBoard.jsp">자유게시판</a></li>
										<li><a href="SBoard.jsp">재학생게시판</a></li>
										<li><a href="GBoard.jsp">졸업생게시판</a></li>

									</ul>
								</li>
								<li><a href="#">공지사항</a></li>
								<li><a href="#">Q & A</a></li>
								<li><a href="#">랩실 활동</a></li>
							</ul>
						</nav>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
					

			<!--Notice Board-->
		
		<table class="table table-striped" style="text-align: center;" border: 1px >
		<thead>
		<tr>
		<th style = "text-align : center;">번호</th>
		<th style = "text-align : center;">제목</th>
		<th style = "text-align : center;">작성자</th>
		<th style = "text-align : center;">작성일</th>
		</tr>
		</thead>
		<tbody>
		<%
			SeDAO seDAO = new SeDAO();
			ArrayList<Se> list = seDAO.getList(pageNumber);
			for(int i = 0; i< list.size(); i++) {
		%>
		<tr>
			<td> <%= list.get(i).getSeID() %></td>
  			<td><a href="view.jsp?seID=<%= list.get(i).getSeID() %>"><%= list.get(i).getSeTitle() %></a></td>
			<td> <%= list.get(i).getUserID() %></td>
			<td> <%= list.get(i).getSeDate().substring(0,11) + list.get(i).getSeDate().substring(11,13) + "시" + list.get(i).getSeDate().substring(14,16) + "분"%></td> 
		</tr>		
		<% 
			}
		%>
		
		</tbody>
		</table>
		<hr/>
	</section>
		<p align="center">
<input type="button" value= "글쓰기" class="pull-left" onclick = "location.href= 'FBoardWrite.jsp'">
</p>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<div class="row">
							<div class="col-8 col-12-medium">
								<section>

								<!-- Copyright -->
									<div id="copyright">
										<ul class="links">
											<li>&copy; SELAB Dong_Geon</li><li>Design: SELAB DONG_GEON</li>
										</ul>
									</div>

							</div>
						</div>
					</div>
				</section>

		<!-- Scripts -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"> </script>
			<script type="text/javascript" src="js/bootstrap.js"></script>
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.dropotron.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

	</body>
</html>
