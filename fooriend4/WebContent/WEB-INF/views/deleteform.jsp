<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="${path}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="${path}/css/deleteform.css">
<title>글삭제</title>

<script type="text/javascript">
	function deletepro() {
		document.f.submit();
	}
	function goBack() {
		window.history.back();
	}
</script>

</head>
<body>
	<form class="del_form" name="f" action="delete.htm" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="qno" value="${param.qno}" /></td>
			</tr>
		</table>

		<div class="d_btn">
			<table class="del_table">
				<tr>
					<th colspan="2">게시글을 삭제하시겠습니까?</th>
				</tr>
				<tr>
					<td><input class="b_btn" type="button" value="삭제"
						onclick="deletepro()" /></td>
					<td><input class="b_btn" type="button" value="취소"
						onclick="goBack();" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>