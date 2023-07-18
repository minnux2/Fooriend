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
<title>주문내역</title>
</head>
<body>
	<div class="wrapper">
		<header>
			<%@include file="loginHeader.jsp"%>
		</header>
		<div class="main-content">
			<%@include file="mypageHeader.jsp"%>
			<div class="o_list">
				<table class="o_table">
					<tr style="height: 60px;">
						<th style="width: 10%">음식점이름</th>
						<th style="width: 10%">음식이름</th>
						<th style="width: 5%">가격</th>
						<th style="width: 15%">포함알러지</th>
						<th style="width: 30%">배달지 주소</th>
						<th style="width: 20%">주문날짜</th>
					</tr>
					<c:forEach var="orderhistory" items="${orderhistorylist}">
						<tr class="o_info">
							<td>${orderhistory.ORNAME}</td>
							<td>${orderhistory.OFOODNAME}</td>
							<td>${orderhistory.OFOODPRICE }</td>
							<td>${orderhistory.OFOODALLERGYS}</td>
							<td>${orderhistory.OLOCDETAIL}</td>
							<td>${orderhistory.ODATE}<br></td>
						</tr>
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