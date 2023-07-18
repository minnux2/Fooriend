
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>아이디찾기</title>
<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
<link rel="stylesheet" href="css/searchUser.css">
</head>

<script>
	var path = "${pageContext.request.contextPath }";

	$(document).ready(function() {
		var msg = "${msg}";
		if (msg != "") {
			alert(msg);
		}
	});

	function fnSubmit() {

		var email_rule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if (confirm("아이디를 찾으시겠습니까?")) {

			$("#createForm").submit();

			return false;
		}
	}
</script>
<body class="bg-gradient-primary">
	<div class="wrapper">
		<div class="main-content">

			<nav class="navbar navbar-expand-xl nav_area sticky">
				<div class="container">
					<div class="logo">
						<a href="mainPage.htm" class="logo-light">Fooriend</a> <a href="mainPage.htm"
							class="logo-dark">Fooriend</a>
					</div>
					<div class="collapse navbar-collapse " id="navbarNav">
						<ul class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
							<li class="nav-item active"><a class="nav-link"
								href="home.htm">로그인</a></li>
							<li class="nav-item"><a class="nav-link" href="register.htm">회원가입</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								href="subscribeform.htm">구독신청</a></li>
							<li class="nav-item"><a class="nav-link" href="FAQ2.htm">고객센터</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<br> <br> <br> <br>
			<div class="nav-bottom"></div>
			<hr>
			<br> <br> <br> <br> <br>
			<form commandName="MemberDTO" id="createForm"
				action="search_result_Id.htm" method="post">
				<div class="container">
					<!-- Outer Row -->
					<div class="row justify-content-center">
						<div class="col-xl-10 col-lg-12 col-md-9">

							<div class="card o-hidden border-0 shadow-lg my-5">
								<div class="card-body p-0">
									<!-- Nested Row within Card Body -->
									<div class="row">
										<div class="img_center">
											<img src="images/logo.PNG" class="image" alt="로고 이미지" />
										</div>
										<div class="col-lg-6">
											<div class="p-5">
												<div class="text-center">
													<h1 class="h4 text-gray-900 mb-2">아이디를 찾으시겠습니까?</h1>
													<p class="mb-4"></p>
												</div>
												<div class="form-group">
													<input type="text" class="form-control" id="mname"
														name="mname" placeholder="이름을 입력해주세요">
												</div>

												<div class="form-group">
													<input type="email" class="form-control" id="memail"
														name="memail" placeholder="이메일을 입력해주세요">
												</div>
												<a href="javascript:void(0)"
													onclick="fnSubmit(); return false;"
													class="form-control btn btn-primary submit px-3">아이디 찾기
												</a>
												<hr>
												<div class="w-50 text-md-right">
													<a href="/fooriend/register.htm" style="color: #fff"><font
														color="black">회원가입 하러가기</font></a> <a
														href="/fooriend/home.htm" style="color: #fff"><font
														color="black">로그인 하러가기</font></a>
												</div>
												<div class="w-50 text-md-right"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</form>
		</div>
		<footer>
			<%@include file="includes/footer.jsp"%>
		</footer>
	</div>
</body>
</html>
