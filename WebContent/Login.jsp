<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
	
					<!-- Logo -->
						<h1><a href="index.jsp">SE LAB</a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="index.html">Home</a></li>
								<li>
									<a href="#">게시판</a>
									<ul>
										<li><a href="FreeBoard.jsp">자유게시판</a></li>
										<li><a href="#">재학생게시판</a></li>
										<li><a href="#">졸업생게시판</a></li>

									</ul>
								</li>
								<li><a href="left-sidebar.html">공지사항</a></li>
								<li><a href="right-sidebar.html">Q & A</a></li>
								<li><a href="no-sidebar.html">랩실 활동</a></li>
							</ul>
						</nav>

					<!--  Login -->
					<div class="container">
						<div class ="clo-lg-4"> </div>
						<div class ="clo-lg-4"> 
							<div class ="jumbobutton" style="padding-top: 20px;">
								<form  method="post" action="LoginAction.jsp">
									<h3 style = " text-align: center;">로그인 화면 </h3>
									<div class="form-group">
										
										<input type="text" placeholder="아이디" name="userID" class="form-control" maxlength ="20"/>
										
									</div>
									<div class="form-group">
									
										<input type="password" placeholder="비밀번호" name="userPassword" class="form-control" maxlength ="20"/>
									
									</div>
									<input type="submit" class= "btn btn-primary form-controi" value= "로그인">
								</form>
								</div>
							
							</div>
						</div>
					
					
					</div>






		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.dropotron.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

	</body>
</html>
