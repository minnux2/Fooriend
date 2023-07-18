<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function board_update() {
		location.href = "updateform.htm?qno=${b.qno}&pg=${pg}";
	}
	function board_delete() {
		location.href = "deleteform.htm?qno=${b.qno}&pg=${pg}";
	}
	function reply_write() {
		//alert("쓰기")	;
		if (document.replyform.rcontent.value == "") {
			alert("내용을 입력해주세요");
			document.replyform.rcontent.focus();
		} else {
			document.replyform.submit(); //전송
		}
	}
	function reply_delete() {
		location.href = "deleteReplyForm.htm?qno=${b.qno}&pg=${pg}";
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/css/reset.css">
<link rel="stylesheet" type="text/css" href="${path}/css/read.css">

<title>글 읽기</title>
</head>

<body>
	<div class="wrapper">
		<header>
			<%@include file="loginHeader.jsp"%>
		</header>
		<div class="main-content">
			<!----------------------------------------------------------------------------------->
			<hr />
			<div class="container_wrap">
				<div class="contents_wrap">
					<table class="readtable">
						<tr>
							<th style="height: 90px; text-align: left; font-size: 50px;"
								colspan="3">${b.qtitle}</th>
						</tr>
						<tr class="w_info">
							<td style="text-align: left;" width="5%">
								<!-- 이름 -->${b.mid} |
							</td>
							<td width="55%">
								<!-- 날짜 -->${b.datecreated}</td>
							<td width="15%">
								<!-- 히트 -->${b.qcount} hit
							</td>
						</tr>
						<tr>
							<td colspan="4"><textarea class="content" rows="20"
									cols="98" readonly="readonly">${b.qcontent}</textarea></td>
						</tr>
					</table>
				</div>
				<div class="container_reply">
					<form name="replyform" action="reply.htm" method="post">
						<table class="r_box">
							<tr>
								<th width="15%">작성자</th>
								<th width="65%">댓글 내용</th>
								<th width="20%">댓글 작성 날짜</th>
							</tr>
							<!--	private int Q_no; private String qtitle, mname, datecreated, qcount ;  -->
							<c:forEach var="replylist" items="${replylist}">
								<tr class="r_info">
									<td>${replylist.mid }</td>
									<td>${replylist.rcontent}</td>
									<td>${replylist.replydate}</td>
								</tr>
							</c:forEach>
						</table>
						<table>
							<tr>
								<td><input type="hidden" name="pg" value="${pg}" /> <input
									type="hidden" name="qno" value="${b.qno}" /> <textarea
										class="r_content" name="rcontent" rows="5" cols="160"></textarea></td>
							</tr>
							<tr>
								<td colspan="2"><input class="r_btn" type="button"
									value="댓글달기" onclick="reply_write()" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<footer>
			<%@include file="includes/footer.jsp"%>
		</footer>
	</div>
</body>
</html>