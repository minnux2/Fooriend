<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-xl nav_area sticky">
			<div class="container">
				<div class="logo">
					<a href="mainPage.htm" class="logo-light">Fooriend</a> 
					<a href="mainPage.htm" class="logo-dark">Fooriend</a>
				</div>
				<div class="collapse navbar-collapse " id="navbarNav">
					<ul class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
						<li class="nav-item active">
						<a class="nav-link" href="home.htm">로그인</a>
						</li>
						<li class="nav-item">
						<a class="nav-link" href="register.htm">회원가입</a>
						</li>
						<li class="nav-item">
						<a class="nav-link" href="subscribeform.htm">구독신청</a>
						</li>
						<li class="nav-item">
						<a class="nav-link" href="FAQ2.htm">고객센터</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
			<div class = "nav-bottom"></div>
	</header>
</body>
</html>