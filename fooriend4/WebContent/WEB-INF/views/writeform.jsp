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

<link rel="stylesheet" type="text/css" href="${path}/css/writeform.css">


<title>글 쓰기</title>
<script type="text/javascript">
	function board_write() {
		//alert("쓰기")	;
		if (document.writeform.qtitle.value == "") {
			alert("제목을 입력해주세요");
			document.writeform.qtitle.focus();
		} else if (document.writeform.qcontent.value == "") {
			alert("내용을 입력해주세요");
			document.writeform.qcontent.focus();
		} else {
			document.writeform.submit(); //전송
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
			<form name="writeform" action="write.htm" method="post">
				<div class="writeform">
					<div class="innerwriteform">
						<div class="form-wrapper">
							<table>
								<tr>
									<td><input class="title" placeholder="제목" type="text"
										name="qtitle" /></td>
								</tr>
								<tr>
									<!-- style="border: none" -->
									<td><textarea class="content" placeholder="내용을 입력하세용"
											name="qcontent" rows="17" cols="75"></textarea></td>
								</tr>
							</table>
							<div class="t_btn">
								<table>
									<tr>
										<td colspan="2">
										<input type="button" value="목록보기 "
											onclick="location.href='Boardloginlist.htm'" class="b_btn" /> <input type="button" value="쓰기"
											onclick="board_write()" class="b_btn" /> <input
											class="b_btn" type="button" value="취소" onclick="goBack();" /></td>
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