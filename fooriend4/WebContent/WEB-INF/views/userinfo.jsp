<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/css/mypage.css">

<title>프로필 정보</title>
</head>
<body>
	<div class="wrapper">
		<header>
			<%@include file="loginHeader.jsp"%>
		</header>
		<div class="main-content">
			<hr />
			<%@include file="mypageHeader.jsp"%>

			<form action="/memberUpdate.htm" method="post">
				<h3>프로필 정보</h3>
				<br>
				<h5>로그인 정보</h5>
				<div>
					아이디 <input type="text" name="mid" value="${member}" readonly><br>
				</div>
				<div>
					비밀번호 <input type="password" name="mpassword" id="mpassword"
						value="${memberpassword}">
				</div>
				<br> <br>
				<h5>개인정보</h5>
				<div>
					이름 <input type="text" name="mname" id="mname" value="${membername}"
						readonly><br>
				</div>
				<div>
					휴대폰 번호 <input type="text" name="mphone" id="mphone"
						value="${memberphone}"> <br>
				</div>
				<div>
					이메일 주소 <input type="email" name="memail" id="memail"
						value="${memberemail}" readonly>
				</div>
				<div>
					포인트 <input type="text" name="point" id="point"
						value="${point}" readonly>
				</div>
				<br> <br> <input type="submit" name="memberUpdate"
					id="memberUpdate" value="수정하기">
			</form>
			<br> <br> <br>
			<div>
				<button type="button" name="quitfooriend" id="quitfooriend">회원탈퇴</button>
			</div>
		</div>
		<footer>
			<%@include file="includes/footer.jsp"%>
		</footer>
	</div>
</body>
</html>