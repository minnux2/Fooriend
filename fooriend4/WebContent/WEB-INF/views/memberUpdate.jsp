<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 정보</title>
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
<link rel="stylesheet" href="css/mypageUserInfo.css">
</head>
<body class="bg-gradient-primary">
	<div class="wrapper">
		<div class="main-content">
			<nav class="navbar navbar-expand-xl nav_area sticky">
				<div class="container">
					<div class="logo">
						<a href="mainPage2.htm" class="logo-light">Fooriend</a> <a
							href="mainPage2.htm" class="logo-dark">Fooriend</a>
					</div>
					<div class="collapse navbar-collapse " id="navbarNav">
						<ul class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
							<li class="nav-item active"><a class="nav-link"
								href="mainPage.htm">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link" href="userinfo.htm">마이페이지</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								href="subscribeform.htm">구독신청</a></li>
							<li class="nav-item"><a class="nav-link"
								href="Boardloginlist.htm">고객센터</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="bottom"></div>
			<hr />
			<%@include file="mypageHeader.jsp"%>
			<form action="memberUpdate.htm" method="post">
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
													<p class="mb-4"></p>
												</div>
												<div class="form-group">
													<label><font size="5">- 로그인 정보 -</font></label><br> <br>
													<label><font color="black" size="3">아이디</font></label> <br>
													<input type="text" name="mid" class="form-control"
														value="${member}" readonly> <br> <label><font
														color="black" size="3">비밀번호</font></label> <br> <input
														type="password" name="mpassword" id="mpassword"
														class="form-control" value="${memberpassword}">
												</div>
												<br> <br> <label><font size="5">-
														개인 정보 -</font></label><br> <br>
												<div class="form-group">
													<label><font color="black" size="3">이름</font></label> <br>
													<input type="text" name="mname" id="mname"
														class="form-control" value="${membername}" readonly>
													<br> <label><font color="black" size="3">전화번호</font></label>
													<br> <input type="text" name="mphone" id="mphone"
														class="form-control" value="${memberphone}"> <br>
														
														
													<label><font color="black" size="3">이메일 주소</font></label> <br>
													<input type="email" name="memail" id="memail" class="form-control" value="${memberemail}" readonly>
													<br>
													<label><font color="black" size="3">포인트</font></label> <br>
													<input type="text" name="point" id="point" class="form-control" value="${point}" readonly>
													<br>
												</div>
												<button type="submit" name="updatePwd" id="updatePwd"
													class="form-control btn btn-primary submit px-3"
													onclick="location.href='userinfo.htm';">수정하기</button>
												<hr>
												<div class="w-50 text-md-right">
													<button type="button" name="quitfooriend" id="quitfooriend"
														class="form-control btn btn-primary submit px-3"
														onclick="window.open('/fooriend/memberDeleteView.htm', '회원탈퇴', 'width=500, height=450, location=no, status=no, scrollbars=yes')">회원탈퇴</button>
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