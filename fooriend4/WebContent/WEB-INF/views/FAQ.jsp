<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/css/reset.css">
<link rel="stylesheet" type="text/css" href="${path}/css/body.css">

<title>자주 묻는 질문</title>
</head>

<body>
	<div class="wrapper">
		<header>
			<%@include file="loginHeader.jsp"%>
		</header>
		<div class="main-content">
			<!----------------------------------------------------------------------------------->
			<hr />
			<div class="container">
				<div class="box">
					<div class="aside">
						<h2>고객센터</h2>
						<a href="FAQ.htm"><b>공지사항</b></a><br> <a
							href="Boardloginlist.htm">질문게시판</a>
					</div>
					<div class="list">

						<h2>자주 묻는 질문</h2>
						<hr id="subline" />
						<details>
							<summary>Q. 밥이 마음에 안들면 어쩌죠?</summary>
							<p>A. 하루 n번 랜덤 버튼을 눌러 다른 음식을 드실 수 있는 기회가 주어집니다.</p>
						</details>
						<details>
							<summary>Q. 제가 OO알레르기가 있는데, OO이 든 음식이 배달될 수도 있나요?</summary>
							<p>A. 회원가입시 알레르기 여부를 선택하시면, 선택하신 알레르기 유발 재료가 포함되지 않은 음식만
								배달됩니다.</p>
						</details>
						<details>
							<summary>Q. 서울지역만 구독서비스 가능한가요?</summary>
							<p>A. 현재 베타 서비스중으로 버전 업데이트 할 예정입니다.</p>
						</details>
						<details>
							<summary>Q. 포인트 충전후 남는 금액은 환불가능한가요?</summary>
							<p>A. 구독에 기간에 맞춰 충전된 포인트 임으로 구독 기간을 다 채우신 후 남은 포인트를 따로 환불
								신청가능합니다.</p>
						</details>
						<details>
							<summary>Q. 포인트가 부족한 경우는 없나요?</summary>
							<p>A. 자동으로 구독 정지됩니다.</p>
						</details>
						<details>
							<summary>Q. 오늘 먹을 음식이 무엇인지 언제 알수있나요?</summary>
							<p>A. 금일 음식배달 후 자동으로 주문현황 페이지 갱신됨으로 확인 가능합니다.</p>
						</details>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<%@include file="includes/footer.jsp"%>
		</footer>
	</div>
</body>
</html>