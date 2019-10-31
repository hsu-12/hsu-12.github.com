<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE HTML>
<html>
	<head>
		<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" href="css/bootstrap.css"/>
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
								<li><a href="index.jsp">Home</a></li>
								<li  class="current">
							     <a href="#">게시판</a>
									<ul>
										<li><a href="FreeBoard.jsp">자유게시판</a></li>
										<li><a href="#">재학생게시판</a></li>
										<li><a href="#">졸업생게시판</a></li>

									</ul>
								</li>
								<li><a href="left-sidebar.html">공지사항</a></li>
								<li><a href="right-sidebar.html">Q & A</a></li>
								<li><a href="no-sidebar.html">랩실 활동</a></a></li>
							</ul>
						</nav>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
							<div class="col-12">

			<!-- write -->
				<form action="GBoardAction.jsp" method="post">
<div class="container">
<table class="table table-bordered">
    <thead>
    </thead>
    <tbody>

            <tr>
                <th> 제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="gdTitle" class="form-control" maxlength ="50"/></td>
            </tr>
            <tr>
                <th> 내용: </th>
                <td><textarea cols="200" placeholder=" 내용을 입력하세요. " name="gdContent" class="form-control" maxlength ="2048"></textarea></td>
            </tr>
				<th>파일 첨부: </th>
                <td><input type="file" name="filename"/></td>


           
    </tbody>
</table>
<input type="submit" value="등록"  class="btn btn-primary pull-rignt">
</div>
</form>
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

		</div>

		<!-- Scripts -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"> </script>
			<script> alert(document.forms[0].title.name); </script>
			<script type="text/javascript" src="js/bootstrap.js"></script>
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.dropotron.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>

	</body>
</html>
