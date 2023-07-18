<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원 탈퇴</title>
</head>
<script type="text/javascript">
   $(document).ready(function() {
      // 취소
      $(".cencle").on("click", function() {
         window.close();
      })

      $("#submit").on("click", function() {
         if ($("#mpassword").val() == "") {
            alert("비밀번호를 입력해주세요.");
            $("#mpassword").focus();
            return false;
         }
      });

   })
</script>
<style type = "text/css">
	.image {
		width : 400px;
		height : 250px;
	}
	.allDiv {
		text-align : center;
		border: 1px solid black;
		border-radius: 30px;
	}
	input {
	width: 250px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
	}
	
	.cencle  {
	background-color:transparent;
	border-radius:30px;
	border:1px solid #616161;
	display:inline-block;
	cursor:pointer;
	color:#5e5e5e;
	font-family:Arial;
	font-size:15px;
	padding:3px 12px;
	text-decoration:none;
	text-shadow:0px 1px 0px #a6a6a6;
	}
	
	.success  {
	background-color:transparent;
	border-radius:30px;
	border:1px solid #616161;
	display:inline-block;
	cursor:pointer;
	color:#5e5e5e;
	font-family:Arial;
	font-size:15px;
	padding:3px 12px;
	text-decoration:none;
	text-shadow:0px 1px 0px #a6a6a6;
	}
</style>
<body>
   <section id="container">
   <div class = "allDiv"><br>
   <img src="images/logo.PNG" class = "image" alt="로고 이미지" /><br>
      <form action="memberDelete.htm" method="post" name = "memberDelete">
         <h3>정말로 탈퇴하시겠습니까?</h3>
         <input type = "password" name = "mpassword" id = "mpassword" placeholder="비밀번호를 입력해주세요."><br><br>
         <div class="form-group has-feedback">
            <button class="cencle " type="button">취소</button>
            <button class="success" type="submit" id="submit">회원탈퇴</button>
         </div>
      </form>
      <div>
         <c:if test="${msg == false}">
               비밀번호가 틀렸습니다. 다시 확인해주세요.
         </c:if>
      </div>
      </div>
   </section>

</body>
</html>