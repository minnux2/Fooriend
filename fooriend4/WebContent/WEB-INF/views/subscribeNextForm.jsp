<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%><%@ taglib prefix="c"
   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
   type="text/css" />
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- jQuery -->
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<head>
<link rel="stylesheet" href="css/login.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구독신청 두번쨰 페이지</title>
</head>

<script type="text/javascript">
   var IMP = window.IMP;
   IMP.init('imp12508128'); //가맹점 식별코드

   function requestPay() {
     IMP.request_pay({
       pg: "html5_inicis",
       pay_method: "card",
       merchant_uid : '123456789'+new Date().getTime(),
       name : '결제테스트',
       amount : parseInt(document.getElementById("point2"). value)
     }, function (rsp) { // callback
         if (rsp.success) {
           var msg = '결제가 완료되었습니다.';
            alert(msg);
            var form = document.getElementById("frm");

         form.action = "mypage.htm";
         form.mothod = "POST";
         form.submit();

         } else {
            var msg = '결제에 실패했습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
            location.href = "subscribeNextForm.htm"
         }
     });
   }
</script>
<body class="AllScreen">

   <div class="wrapper">
      <header>
         <%@include file="includes/header2.jsp"%>
      </header>
      <div class="main-content">
         <!----------------------------------------------------------------------------------->
         <hr />
         <section class="ftco-section">
            <div class="container">
               <div class="row justify-content-center">
                  <div class="col-md-8 col-lg-6"
                     style="border: 2px solid #b1a4a4; border-radius: 20px;">
                     <div class="login-wrap p-0">
                        <form name="mypage" action="mypage.htm" method="POST" id="frm">

                           <h2 style="margin-top: 10px; color: black;" align="center">음식 카테고리 선택 & 구독신청</h2>
                           <div>
                              <input type="hidden" name="deliverytime"
                                 value="${deliverytime}" readonly />
                           </div>
                           <div>
                              <input type="hidden" name="substart" value="${substart}"
                                 readonly />
                           </div>
                           <div>
                              <input type="hidden" name="subend" value="${subend}" readonly />
                           </div>

                           <input type="hidden" name="point" value="${point}"><br>
                           <div style="color: black;">
                              <img alt="sds" src="images/hansic.jpg" class="imgg"> <input
                                 type='radio' name='category' value='한식' />한식(20000원) <img
                                 alt="sds" src="images/yang.jpg" class="imgg"> <input
                                 type='radio' name='category' value='양식' />양식(20000원) <br>
                              <br> <img alt="sds" src="images/jungjpg.jpg" class="imgg">
                              <input type='radio' name='category' value='중식' />중식 (20000원)
                              <img alt="sds" src="images/ilsic.jpg" class="imgg"> <input
                                 type='radio' name='category' value='일식' />일식 (20000원)<br>
                              <h3>----------------------------------------------</h3>
                           </div>

                           <script>
                function f3(){
                  var x=('${subday}'.length)*1000*(${period});
                  var y=('${subday}'.length)*20000*(${period});
                  var result= parseInt(x) + parseInt(y);
                  var z= parseInt('${point}');
                  var result2 = parseInt(result) - parseInt(z);
                  document.write("<div style='color:black;'><h6 style='display:inline'> 수수료 합(일x1000)</h6> "+x+"</div>"); 
                  document.write("<div style='color:black;' ><h6 style='display:inline'> 음식요금(일x20000)</h6> "+y+"</div>");
                  document.write("<div style='color:black;' >-----------------------------------------------------------</div>");
                  document.write("<div ><h6 style='display:inline; color:black;'> 총 요금</h6> <p style='color:red; display:inline;'>"+result+"</p></div>");
                  document.write("<div > <h6 style='display:inline; color:black;'> 필요한 포인트</h6> <p style='color:red; display:inline;'>"+result2+"</p>&nbsp;");  document.write("<h6 style='display:inline; color:black;'><br>(현재 보유 포인트: "+z+")</h6></div><br>");
                  $(document).ready(function() {
                       $('#point2').val(result2);
                   });
               }
               f3(); 
      
               </script>
                           <div style="color: black; width: 300px; display: inline;">
                              포인트:<input type="number" id="point2" name="point2" />
                              <p style="display: inline;">원 충전
                           </div>
                           <br>
                           <br>
                           <button style="margin-bottom: 20px;"type="button"
                              class="nextPage form-control btn btn-primary submit px-3"
                              value="구독신청" onclick="requestPay()">구독신청하기</button>
                        </form>

                     </div>
                  </div>
               </div>
            </div>
         </section>
         <footer>
            <%@include file="includes/footer.jsp"%>
         </footer>
      </div>
</body>

</html>