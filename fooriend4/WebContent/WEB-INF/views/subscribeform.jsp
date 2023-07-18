<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="${path}/css/subscribe.css">

<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/5.2.2/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">

<link
   href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="selectbox.min.css">
<script src="selectbox.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="stylesheet" href="css/login.css">

<title>구독신청 - 첫 번째 페이지</title>
</head>
<script>
   /* 달력 */
   $(document).ready(
         function() {
            $.datepicker.setDefaults($.datepicker.regional['ko']);
            $("#substart")
                  .datepicker(
                        {
                           changeMonth : true,
                           changeYear : true,
                           nextText : '다음 달',
                           prevText : '이전 달',
                           dayNames : [ '일요일', '월요일', '화요일', '수요일',
                                 '목요일', '금요일', '토요일' ],
                           dayNamesMin : [ '일', '월', '화', '수', '목',
                                 '금', '토' ],
                           monthNamesShort : [ '1월', '2월', '3월', '4월',
                                 '5월', '6월', '7월', '8월', '9월',
                                 '10월', '11월', '12월' ],
                           monthNames : [ '1월', '2월', '3월', '4월',
                                 '5월', '6월', '7월', '8월', '9월',
                                 '10월', '11월', '12월' ],
                           dateFormat : "yy-mm-dd",
                           minDate : 'today',
                           maxDate : 10000, // 선택할수있는 최소날짜

                        });
         });
</script>

<body class="AllScreen">

   <div class="wrapper">
      <header>
         <%@include file="includes/header2.jsp"%>
      </header>
      <div class="main-content">
         <!----------------------------------------------------------------------------------->

         <div class="main-content"></div>
         <!----------------------------------------------------------------------------------->

         <section class="ftco-section">
            <div class="container">
               <div class="row justify-content-center">
                  <div class="col-md-10 col-lg-5" style="border: 2px solid #b1a4a4; border-radius: 20px">
                     <div class="login-wrap p-0">
                        <form name="subscribeNextForm" action="subscribeNextForm.htm"
                           method="POST">
                           <input type="hidden" name="mid" value="${mid}">
                           <h1 style="margin-top: 10px;" class="heading-section" align="center">
                              <font color="black"> 구독 신청 하기</font>
                           </h1>
                           <br>
                           <br>
                           <br>
                           <div class="insertDay">

                              <label for="mid"><font size="4px" color="black"> 요일 선택
                                    (중복선택 가능)</label><br> <input type="checkbox" name="day"
                                 value="월">월 <input type="checkbox" name="day"
                                 value="화">화 <input type="checkbox" name="day"
                                 value="수">수 <input type="checkbox" name="day"
                                 value="목">목 <input type="checkbox" name="day"
                                 value="금">금 <input type="checkbox" name="day"
                                 value="토">토 <input type="checkbox" name="day"
                                 value="일">일 </font> 
                           </div><br>
                           
                           <label for="mid"><font size="4px" color="black">배달 시간 선택<br></font></label>
                           <div>
                           <select required id="deliveryhour" name="deliveryhour">
                              
                              <option value="" selected disabled hidden><font color="black"> (시간 선택)</font></option>

                              <option value="09">09</option>

                              <option value="10">10</option>

                              <option value="11">11</option>

                              <option value="12">12</option>

                              <option value="13">13</option>

                              <option value="14">14</option>

                              <option value="15">15</option>

                              <option value="16">16</option>

                              <option value="17">17</option>

                              <option value="18">18</option>

                           </select> <font color="black">시</font> &nbsp; &nbsp;<select required id="deliverymin" name="deliverymin">
                              <option value="" selected disabled hidden>(분 선택)</option>

                              <option value="00">00</option>

                              <option value="30">30</option>

                           </select><font color="black"> 분</font>
                           </div><br>

                           <div  style="color: black;">
                              <h3><font color="black"><b>주소 / 서비스 기간 / 시작일 선택</b></font></h3>
                              </div><br>
                              <div style="color: black;">
                              주소입력<br>
                              <select class="main-city" name="subloc" required>
                                 <option>강남구</option>
                                 <option>강동구</option>
                                 <option>강북구</option>
                                 <option>강서구</option>
                                 <option>관악구</option>
                                 <option>구로구</option>
                                 <option>금천구</option>
                                 <option>노원구</option>
                                 <option>도봉구</option>
                                 <option>동대문구</option>
                                 <option>동작구</option>
                                 <option>마포구</option>
                                 <option>서대문구</option>
                                 <option>서초구</option>
                                 <option>성동구</option>
                                 <option>성북구</option>
                                 <option>송파구</option>
                                 <option>양천구</option>
                                 <option>영등포구</option>
                                 <option>용산구</option>
                                 <option>은평구</option>
                                 <option>종로구</option>
                                 <option>중구</option>
                                 <option>중랑구</option>
                              </select>
                        
                        
                              <font color="black" >상세주소 </font><input type="text" name="subloc2" required />
                        
                           </div><br>
                           <div style="color: black;">
                           <h5> 구독 기간 선택</h5>
                              <input type='radio' name='period' value='2' />14일 <input
                                 type='radio' name='period' value='4' />1개월 <input
                                 type='radio' name='period' value='8' />2개월
                           </div><br>
                           <div>
                              <input type="datetime" id="substart" name="substart"
                                 placeholder="시작일선택" autocomplete="off">

                           </div><br>
                           <!--  버튼이 폼 안에 있을 때 onclick에 정의된 펑션이 동작하지 않고 form 의 submit 펑션이 실행되는데 자동으로 submit 되는걸 방지하고 다른 동작을 실행시키고 싶다면 -->
                           <button style="margin-bottom: 20px;" type="submit" class="nextPage form-control btn btn-primary submit px-3" value="다음페이지">다음페이지</button>
                        </form>
                     </div>
                  </div>
               </div>
            </div>

         </section>

      </div>
      <footer>
         <%@include file="includes/footer.jsp"%>
      </footer>
   </div>
</body>


</html>