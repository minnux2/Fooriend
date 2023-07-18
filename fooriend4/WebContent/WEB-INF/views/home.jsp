<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/header.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/login.css">

</head>

<body>
	<div class="wrapper">
		<div class="main-content">
			<form name='homeForm' method="post" action="home.htm">
				<c:if test="${member == null}">
					<nav class="navbar navbar-expand-xl nav_area sticky">
						<div class="container">
							<div class="logo">
								<a href="mainPage.htm" class="logo-light">Fooriend</a> <a
									href="mainPage.htm" class="logo-dark">Fooriend</a>
							</div>
							<div class="collapse navbar-collapse " id="navbarNav">
								<ul
									class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
									<li class="nav-item active"><a class="nav-link"
										href="home.htm">로그인</a></li>
									<li class="nav-item"><a class="nav-link"
										href="register.htm">회원가입</a></li>
									<li class="nav-item"><a class="nav-link"
										href="subscribeform.htm">구독신청</a></li>
									<li class="nav-item"><a class="nav-link" href="FAQ2.htm">고객센터</a></li>
								</ul>
							</div>
						</div>
					</nav>
					<div class="nav-bottom"></div>
					<hr>
					<section class="ftco-section">
						<div class="container">
							<hr>
							<br>
							<div class="row justify-content-center">
								<div class="col-md-6 text-center mb-5">
									<h2 class="">
										<font color="black">Login</font>
									</h2>
									<c:if test="${msg == false}">
										<p style="color: red;">로그인 실패! 아이디와 비밀번호를 확인해주세요.</p>
									</c:if>
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-md-6 col-lg-4">
									<div class="login-wrap p-0">
										<form action="home.htm" class="signin-form">
											<div class="form-group">
												<input type="text" class="form-control"
													placeholder="Username" id="mid" name="mid" required>
											</div>
											<div class="form-group">
												<input id="password-field" type="password"
													class="form-control" placeholder="Password" id="mpassword"
													name="mpassword" required>
											</div>
											<div class="form-group">
												<button type="submit"
													class="form-control btn btn-primary submit px-3">
													<font color="black">로그인</font>
												</button>
											</div>
											<div class="form-group d-md-flex">
												<div class="w-50"></div>
												<div class="w-50 text-md-right">
													<a href="/fooriend/search_id.htm" style="color: #fff"><font
														color="black">아이디 찾기</font></a>
												</div>
												<div class="w-50 text-md-right">
													<a href="/fooriend/search_pwd.htm" style="color: #fff"><font
														color="black">비밀번호 찾기</font></a>
												</div>
											</div>
										</form>
										<p class="w-100 text-center">
											<font color="black">&mdash; 계정이 없으신가요? &mdash; 
										</p>
										<div class="social d-flex text-center">
											<a href="/fooriend/register.htm"
												class="px-2 py-2 mr-md-1 rounded"><span
												class="ion-logo-facebook mr-2"></span> 회원가입</a>
										</div>
									</div>
								</div>
							</div>
							<br>
							<hr>
						</div>
					</section>
				</c:if>
				<c:if test="${member != null}">
					<nav class="navbar navbar-expand-xl nav_area sticky">
						<div class="container">
							<div class="logo">
								<a href="mainPage2.htm" class="logo-light">Fooriend</a> <a
									href="mainPage2.htm" class="logo-dark">Fooriend</a>
							</div>
							<div class="collapse navbar-collapse " id="navbarNav">
								<ul
									class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
									<li class="nav-item active"><a class="nav-link"
										href="mainPage.htm">${member}님 환영합니다.</a></li>
									<li class="nav-item"><a class="nav-link"
										href="logoutMain.htm">로그아웃</a></li>
									<li class="nav-item"><a class="nav-link" href="mypage.htm">마이페이지</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										href="subscribeform.htm">구독신청</a></li>
									<li class="nav-item"><a class="nav-link"
										href="Boardloginlist.htm">고객센터</a></li>
								</ul>
							</div>
						</div>
					</nav>
					<div class="nav-bottom"></div>
					<br>
					<div id="mainPage-inner">
						<br> <img src="images/mainPage.png" class="image"
							alt="메인페이지 이미지" /><br> <br> <br>
						<br><br><br> <br><button class="btn2" type="button"
							onclick="location.href='subscribeform.htm';">구독신청 하러가기</button>
						
					</div>
				</c:if>
			</form>
		</div>
		<footer>
			<%@include file="includes/footer.jsp"%>
		</footer>
	</div>
</body>
</html>