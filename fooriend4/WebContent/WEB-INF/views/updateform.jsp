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

<link rel="stylesheet" type="text/css" href="${path}/css/updateform.css">
<title>글 수정</title>

<script type="text/javascript">
	function board_update() {
		alert("쓰기");
		if (document.updateform.qtitle.value == "") {
			alert("제목을 입력해주세요");
		} else if (document.updateform.qcontent.value == "") {
			alert("내용을 입력해주세요");
			document.updateform.qcontent.focus();
		} else {
			//alert("쓰기")	;
			document.updateform.submit(); //전송
		}
	}
	function goBack() {
		window.history.back();
	}
</script>

</head>
<body>
	<div class="wrapper">
		<header>
			<%@include file="loginHeader.jsp"%>
		</header>
		<div class="main-content">
			<!----------------------------------------------------------------------------------->
			<hr />

			<form name="updateform" action="update.htm" method="post">
				<div class="writeform">
					<div class="innerwriteform">
						<div class="form-wrapper">
							<table>
								<tr>
									<td><input type="hidden" name="pg" value="${pg}" /> <input
										type="hidden" name="qno" value="${b.qno}" /> <input
										class="title" type="text" name="qtitle" value="${b.qtitle}" />
									</td>
								</tr>
								<tr>
									<td><textarea class="content" name="qcontent" rows="17"
											cols="75">${b.qcontent}</textarea></td>
								</tr>
							</table>
							<div class="t_btn">
								<table>
									<tr>
										<td colspan="2"><input class="b_btn" type="button"
											value="수정" onclick="board_update()" /> <input class="b_btn"
											type="button" value="취소" onclick="goBack();" /></td>
									</tr>
								</table>
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