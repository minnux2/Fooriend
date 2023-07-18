<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/header.css">
</head>
<body>
	<header>
		<div id="top">
			<nav>
				<ul id="top-font">
					<li><a href="">주문내역&nbsp;&nbsp;&nbsp;</a></li>
					<li><a href="home.htm">로그인&nbsp;&nbsp;&nbsp;</a></li>  <!-- 로그인 controoler/jsp 넣어주기 -->
				</ul>
			</nav>
		</div>
	<hr id="main_line" />
	<div id="box1">
		<h2 id="fooriend">fooriend</h2>
	</div>

	<div id="box2">
		<ul id="top_main">
			<li><a href="">구독신청&nbsp;&nbsp;</a></li> <!-- 구독신청 controoler/jsp 넣어주기 -->
			<li><a href="Boardloginlist.htm">고객센터&nbsp;&nbsp;</a></li> <!-- 게시판 controoler/jsp 넣어주기 -->
			<li><a href=""><i class="fa-solid fa-magnifying-glass"></i></a></li>
		</ul>
	</div>
</header>
</body>
</html>