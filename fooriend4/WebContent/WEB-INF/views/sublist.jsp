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
<title>구독 내역</title>
<link rel="stylesheet" type="text/css" href="${path}/css/mypage.css">
</head>
<body>
	<div class="wrapper">
		<header>
			<%@include file="loginHeader.jsp"%>
		</header>
		<div class="main-content">
			<%@include file="mypageHeader.jsp"%>
			<div class="s_list">
				<table class="s_table">
					<tr>
						<th style="width: 10%">선택 카테고리
							<hr>
						</th>
						<th style="width: 10%">구독여부
							<hr>
						</th>
						<th style="width: 20%">배달지 주소
							<hr>
						</th>
						<th style="width: 10%">구독 시작일
							<hr>
						</th>
						<th style="width: 10%">구독 종료일
							<hr>
						</th>
						<th style="width: 10%">배달 시작 시간
							<hr>
						</th>
						<th style="width: 10%">배달 요일
							<hr>
						</th>
					</tr>
					<c:forEach var="sub" items="${sublist}">
						<tr class="s_info">
							<td>${sub.subcate}</td>
							<td>${sub.subscribing}</td>
							<td>${sub.subloc}${sub.sublocdetail}</td>
							<td>${sub.substart}</td>
							<td>${sub.subend}</td>
							<td>${sub.deliverytime}<br></td>
							<td>${sub.subday}</td>
					</c:forEach>
				</table>
			</div>
		</div>
		<footer>
			<%@include file="includes/footer.jsp"%>
		</footer>
	</div>
</body>
</html>