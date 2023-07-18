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
<title>로그인 상태 게시판 리스트</title>
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
						<a href="FAQ.htm">공지사항</a><br> <a href="Boardloginlist.htm"><b>질문게시판</b></a>
					</div>
					<div class="list">
						<h2>질문게시판</h2>
						<hr id="subline" />
						<div class="btn_lo">
							<button class="b_btn" type="button"
								onclick="location.href='writeform.htm'">글 쓰기</button>
						</div>
						<table class="b_list">
							<tr>
								<th width="50">번호</th>
								<th style="text-align: center;" width="270">제목</th>
								<th width="100">글쓴이</th>
								<th width="120">날짜</th>
								<th width="80">조회수</th>
							</tr>
							<c:forEach var="q" items="${list}">
								<tr class="r_info">
									<td>${q.qno}</td>
									<td><c:forEach begin="0" end="${b.tab}">
						&nbsp;&nbsp;&nbsp;
					</c:forEach> <a href="read.htm?qno=${q.qno}&pg=${pg}">${q.qtitle}</a></td>
									<td>${q.mid }</td>
									<td>${q.datecreated}</td>
									<td>${q.qcount}</td>
							</c:forEach>
						</table>

						<table id="paging">
							<tr>
								<td>
									<div class="page_nation">
										<ul>
											<c:if test="${pg>block}">
												<a href="Boardloginlist.htm?pg=1">◀◀</a>
												<a href="Boardloginlist.htm?pg=${fromPage-1}">◀</a>
											</c:if>
											<c:if test="${pg<=block}">
												<li><span style="color: gray">◀◀</span></li>
												<li><span style="color: gray">◀</span></li>

											</c:if>

											<li><c:forEach begin="${fromPage}" end="${toPage}"
													var="i">

													<li><c:if test="${i==pg}">
															<div class="page_nation focus">
																<a>${i}</a>
															</div>
														</c:if> <c:if test="${i!=pg}">
															<div class="page_nation focus">
																<a href="Boardloginlist.htm?pg=${i}">${i}</a>
															</div>
														</c:if></li>
												</c:forEach></li>
											<c:if test="${toPage<allPage}">
												<a href="Boardloginlist.htm?pg=${toPage+1}">▶</a>
												<a href="Boardloginlist.htm?pg=${allPage}">▶▶</a>
											</c:if>
											<c:if test="${toPage>=allPage}">

												<li><span style="color: gray">▶</span></li>
												<li><span style="color: gray">▶▶</span></li>
											</c:if>
										</ul>
									</div>
								</td>
							</tr>
						</table>

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