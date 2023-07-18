<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>

</head>

<link rel="stylesheet" type="text/css" href="css/header.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/login.css">
<body class="AllScreen">
   <div class="fix">
      <div class="wrapper">
         <div class="main-content">
            <!----------------------------------------------------------------------------------->
            <nav class="navbar navbar-expand-xl nav_area sticky">
               <div class="container">
                  <div class="logo">
                     <a href="mainPage.htm" class="logo-light">Fooriend</a> <a href="mainPage.htm"
                        class="logo-dark">Fooriend</a>
                  </div>
                  <div class="collapse navbar-collapse " id="navbarNav">
                     <ul
                        class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
                        <li class="nav-item active"><a class="nav-link"
                           href="home.htm">로그인</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="register.htm">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="subscribeform.htm">구독신청</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="FAQ2.htm">고객센터</a></li>
                     </ul>
                  </div>
               </div>
            </nav>
            <div class="nav-bottom"></div>
            <hr>
         </div>
         <section class="ftco-section">
            <div class="container">
               <br>
               <br>
               <hr>
               <div class="row justify-content-center">
                  <div class="col-md-6 text-center mb-5">
                     <h2 class="heading-section">Register</h2>
                  </div>
               </div>
               <div class="row justify-content-center">
                  <div class="col-md-6 col-lg-4">
                     <div class="login-wrap p-0">
                        <form action="idCheck.htm" class="signin-form" method = "post">

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp;<label for="mid"><font
                                 color="black">아이디</font></label> <input type="text"
                                 placeholder="아이디 입력" minlength="8" maxlength="20" name="mid"
                                 id="mid" class="form-control" required>

                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mid"><font
                                 color="black">비밀번호</font></label> <input type="password"
                                 minlength="8" maxlength="20" id="mpassword"
                                 placeholder="비밀번호 입력" name="mpassword" class="form-control"
                                 required>

                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mid"><font
                                 color="black">이름</font></label> <input type="text"
                                 placeholder="이름 입력" name="mname" id="mname"
                                 class="form-control" required>

                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp;<label for="mid"><font
                                 color="black">이메일 주소</font></label> <input type="email"
                                 class="form-control" name="memail" id="memail"
                                 placeholder="이메일 주소 입력" required>

                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mid"><font
                                 color="black">휴대폰 번호</font></label> <input type="text" minlength="8"
                                 maxlength="12" id="mphone" class="form-control" name="mphone"
                                 placeholder="핸드폰 번호 입력" required>

                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mid"><font
                                 color="black">알러지 확인</font></label><br> <font color="black">
                                 &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"
                                 class="mAllergyform" id="input_check" name="mallergyPeanut"
                                 value="1"> 땅콩 &nbsp; &nbsp; &nbsp; &nbsp; <input
                                 type="checkbox" class="mAllergyform" id="input_check"
                                 name="mallergyShellfish" value="2"> 갑각류 &nbsp; &nbsp;
                                 &nbsp; &nbsp; <input type="checkbox" class="mAllergyform"
                                 id="input_check" name="mallergyMilk" value="4"> 유제품
                              </font> <input type="hidden" name="mallergyPeanut" value='0'
                                 id="input_check_hidden" /> <input type="hidden"
                                 name="mallergyShellfish" value='0' id="input_check_hidden" />
                              <input type="hidden" name="mallergyMilk" value='0'
                                 id="input_check_hidden" />
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp;<label for="mid"><font
                                 color="black">주소</font></label>
                              <textarea class="form-control" name="maddress" id="maddress"
                                 placeholder="주소 입력" required></textarea>
                           </div>

                           <div class="form-group">
                              <button type="submit"
                                 class="form-control btn btn-primary submit px-3">
                                 <font color="black">회원가입</font>
                              </button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
               <br>
               <hr>
            </div>
         </section>
      </div>
      <footer>
         <%@include file="includes/footer.jsp"%>
      </footer>
   </div>
</body>
<script type="text/javascript">
   /* 알러지 체크 */
   if(document.getElementById("input_check").checked) {
       document.getElementById("input_check_hidden").disabled = true;
   }
   
   
   /* 회원가입 정규식*/
   
   //모든 공백 체크
   var empJ = /\s/g;
   //아이디 - a~z, 0 ~ 9로 시작하는 6 ~ 12자리
   var idJ = /^[a-z0-9]{4,12}$/;
   // 비밀번호 - A~Z, a~z, 0~9로 시작하는 4 ~ 12자리
   var pwJ = /^[A-Za-z0-9]{8,15}$/;
   // 이름 - 가 ~ 힣 한글로 이루어진 2 ~ 6자리 이름
   var nameJ = /^[가-힣]{2,6}$/;
   // 이메일 검사 - 특수문자가능하고 중앙엥 @필수 / 뒤 2~3글자 필요
   var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
   // 휴대폰 번호 - 01? (3글자) 방식
   var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
   
   
   // 아이디
   $('#mid').blur(function(){
      if(idJ.test($('#mid').val())){
         console.log(idJ.test($(this).val()));
         $("#idCheck").text('');
      } else {
         $('#idCheck').text('아이디 형식을 확인해주세요 : 영어, 숫자 포함 6 ~ 12자리입니다. ');
         $('#idCheck').css('color', 'red');
      }
   });
   
   // 비밀번호
   $('#mpassword').blur(function(){
      if(pwJ.test($('#mpassword').val())){
         console.log('true');
         $("#pwCheck").text('');
      } else {
         console.log('false')
         $('#pwCheck').text('숫자 or 문자로만 8 ~ 15자리 입력');
         $('#pwCheck').css('color', 'red');
      }
   });
   
   // 비밀번호 일치확인
   $('#mpassword2').blur(function(){
      if($('#mpassword').val() != $(this).val()) {
         $('#pw2Check').text('비밀번호가 일치하지 않습니다.');
         $('#pw2Check').css('color', 'red');
      } else {
         $('#pw2Check').text('');
   });
   
   // 이름에 특수문자 들어가지 않도록 설정
   $('#mname').blur(function() {
      if (nameJ.test($(this).val())) {
            console.log(nameJ.test($(this).val()));
            $("#nameCheck").text('');
      } else {
         $('#nameCheck').text('이름을 확인해주세요');
         $('#nameCheck').css('color', 'red');
      }
   });
   
   
   // 휴대전화
   $('#mphone').blur(function(){
      if(phoneJ.test($(this).val())){
         console.log(phoneJ.test($(this).val()));
         $("#phoneNumCheck").text('');
      } else {
         $('#phoneNumCheck').text('휴대폰번호를 확인해주세요');
         $('#phoneNumCheck').css('color', 'red');
      }
   });

   // 이메일
   $('#memail').blur(function(){
      if(mailJ.test($(this).val())){
         console.log(mailJ.test($(this).val()));
         $("#emailCheck").text('');
      } else {
         $('#emailCheck').text('이메일 형식을 확인해주세요');
         $('#emailCheck').css('color', 'red');
      }
   }); 
</script>



<!-- <script type="text/javascript">
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/register.css">
daum 도로명주소 찾기 api
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   //모든 공백 체크 정규식
   var empJ = /\s/g;
   //아이디 정규식
   var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
   // 비밀번호 정규식
   var pwJ = /^[A-Za-z0-9]{4,12}$/;
   // 이름 정규식
   var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
   // 이메일 검사 정규식
   var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
   // 휴대폰 번호 정규식
   var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

   var address = $('#mem_detailaddress');

   $(document)
         .ready(
               function() {
                  var address = $('#mem_detailaddress');
                  //아이디 중복확인
                  $("#mid")
                        .blur(
                              function() {
                                 alert("들어가나요..2")
                                 if ($('#mid').val() == '') {
                                    $('#id_check').text(
                                          '아이디를 입력하세요.');
                                    $('#id_check').css('color',
                                          'red');

                                 } else if (idJ
                                       .test($('#mid').val()) != true) {
                                    $('#id_check')
                                          .text(
                                                '4~12자의 영문, 숫자만 사용 가능합니다.');
                                    $('#id_check').css('color',
                                          'red');
                                 } else if ($('#mid').val() != '') {
                                    alert("들어가나요..2")
                                    var mida = $('#mid').val();
                                    console.log(mid);
                                    alert("들어가ㅠㅠ")
                                    $
                                          .ajax({
                                             url : 'idsearch.htm',
                                             type : 'POST',
                                             data : {
                                                mid : mida
                                             },//mid라는 이름으로 mid라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다    */                                          

                                             //contentType : "application/json; charset=UTF-8",
                                             success : function(
                                                   data) {

                                                if (data.cnt > 0) {
                                                   $(
                                                         '#id_check')
                                                         .text(
                                                               '중복된 아이디 입니다.');
                                                   $(
                                                         '#id_check')
                                                         .css(
                                                               'color',
                                                               'red');
                                                   $(
                                                         "#usercheck")
                                                         .attr(
                                                               "disabled",
                                                               true);
                                                   alert("들어가나요..5")
                                                } else {
                                                   if (idJ
                                                         .test(mid)) {
                                                      $(
                                                            '#id_check')
                                                            .text(
                                                                  '사용가능한 아이디 입니다.');
                                                      $(
                                                            '#id_check')
                                                            .css(
                                                                  'color',
                                                                  'blue');
                                                      $(
                                                            "#usercheck")
                                                            .attr(
                                                                  "disabled",
                                                                  false);
                                                      alert("들어가나요..3")
                                                   } else if (mid == '') {
                                                      $(
                                                            '#id_check')
                                                            .text(
                                                                  '아이디를 입력해주세요.');
                                                      $(
                                                            '#id_check')
                                                            .css(
                                                                  'color',
                                                                  'red');
                                                      $(
                                                            "#usercheck")
                                                            .attr(
                                                                  "disabled",
                                                                  true);
                                                      alert("들어가나요..4")
                                                   } else {
                                                      $(
                                                            '#id_check')
                                                            .text(
                                                                  "아이디는 소문자와 숫자 4~12자리만 가능합니다.");
                                                      $(
                                                            '#id_check')
                                                            .css(
                                                                  'color',
                                                                  'red');
                                                      $(
                                                            "#usercheck")
                                                            .attr(
                                                                  "disabled",
                                                                  true);
                                                      alert("들어가나요..6")
                                                   }
                                                }

                                             },
                                             error : function(
                                                   request,
                                                   status,
                                                   error) {
                                                alert("code = "
                                                      + request.status
                                                      + " message = "
                                                      + request.responseText
                                                      + " error = "
                                                      + error); // 실패 시 처리
                                             },
                                          });//ajax/// 
                                 }//else if

                              });//blur

                  $('form')
                        .on(
                              'submit',
                              function() {
                                 var inval_Arr = new Array(8)
                                       .fill(false);
                                 if (idJ.test($('#mid').val())) {
                                    alert("들어가나요..7")
                                    inval_Arr[0] = true;
                                 } else {
                                    inval_Arr[0] = false;
                                    alert('아이디를  확인하세요.');
                                    alert("들어가나요..8")
                                    return false;
                                 }
                                 // 비밀번호가 같은 경우 && 비밀번호 정규식
                                 if (($('#mpassword').val() == ($('#mpassword2')
                                       .val()))
                                       && pwJ.test($('#mpassword')
                                             .val())) {
                                    alert("들어가나요..9")
                                    inval_Arr[1] = true;
                                 } else {
                                    inval_Arr[1] = false;
                                    alert('비밀번호를 확인하세요.');
                                    return false;
                                 }
                                 // 이름 정규식
                                 if (nameJ.test($('#mname').val())) {
                                    alert("들어가나요..10")
                                    inval_Arr[2] = true;
                                 } else {
                                    inval_Arr[2] = false;
                                    alert('이름을 확인하세요.');
                                    return false;
                                 }

                                 // 이메일 정규식
                                 if (mailJ.test($('#memail').val())) {
                                    alert("들어가나요..11")
                                    console.log(mailJ.test($(
                                          '#memail').val()));
                                    inval_Arr[3] = true;
                                 } else {
                                    inval_Arr[3] = false;
                                    alert('이메일을 확인하세요.');
                                    return false;
                                 }
                                 // 휴대폰번호 정규식
                                 if (phoneJ.test($('#mphone').val())) {
                                    alert("들어가나요..12")
                                    console.log(phoneJ.test($(
                                          '#mphone').val()));
                                    inval_Arr[4] = true;
                                 } else {
                                    inval_Arr[4] = false;
                                    alert('휴대폰 번호를 확인하세요.');
                                    return false;
                                 }

                                 //주소확인
                                 if (address.val() == '') {
                                    alert("들어가나요..13")
                                    inval_Arr[5] = false;
                                    alert('주소를 확인하세요.');
                                    return false;
                                 } else {
                                    alert("들어가나요..15")
                                    inval_Arr[5] = true;
                                 }

                                 //전체 유효성 검사
                                 var validAll = true;
                                 for (var i = 0; i < inval_Arr.length; i++) {
                                    if (inval_Arr[i] == false) {
                                       alert("들어가나요..16")
                                       validAll = false;
                                    }
                                 }
                                 if (validAll == true) { // 유효성 모두 통과
                                    alert("들어가나요..14")
                                    alert('푸랜드에 오신걸 환영합니다!');
                                 } else {
                                    alert('정보를 다시 확인하세요.')
                                 }
                              });

                  $('#mid')
                        .blur(
                              function() {
                                 if (idJ.test($('#mid').val())) {
                                    console.log('true');
                                    $('#id_check').text('');
                                 } else {
                                    console.log('false');
                                    $('#id_check')
                                          .text(
                                                '5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
                                    $('#id_check').css('color',
                                          'red');
                                 }
                              });
                  $('#mpassword').blur(
                        function() {
                           if (pwJ.test($('#mpassword').val())) {
                              console.log('true');
                              $('#pw_check').text('');
                           } else {
                              console.log('false');
                              $('#pw_check').text(
                                    '4~12자의 숫자 , 문자로만 사용 가능합니다.');
                              $('#pw_check').css('color', 'red');
                           }
                        });

                  //1~2 패스워드 일치 확인
                  $('#mpassword2').blur(function() {
                     if ($('#mpassword').val() != $(this).val()) {
                        $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
                        $('#pw2_check').css('color', 'red');
                     } else {
                        $('#pw2_check').text('');
                     }
                  });

                  //이름에 특수문자 들어가지 않도록 설정
                  $("#mname")
                        .blur(
                              function() {
                                 if (nameJ.test($(this).val())) {
                                    console.log(nameJ.test($(this)
                                          .val()));
                                    $("#name_check").text('');
                                 } else {
                                    $('#name_check')
                                          .text(
                                                '한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
                                    $('#name_check').css('color',
                                          'red');
                                 }
                              });
                  $("#memail").blur(function() {
                     if (mailJ.test($(this).val())) {
                        $("#email_check").text('');
                     } else {
                        $('#email_check').text('이메일 양식을 확인해주세요.');
                        $('#email_check').css('color', 'red');
                     }
                  });

                  // 휴대전화
                  $('#mphone').blur(function() {
                     if (phoneJ.test($(this).val())) {
                        console.log(nameJ.test($(this).val()));
                        $("#phone_check").text('');
                     } else {
                        $('#phone_check').text('휴대폰번호를 확인해주세요 ');
                        $('#phone_check').css('color', 'red');
                     }
                  });
               });

   //우편번호 찾기 버튼 클릭시 발생 이벤트
   function execPostCode() {
      new daum.Postcode({
         oncomplete : function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
               extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
               extraRoadAddr += (extraRoadAddr !== '' ? ', '
                     + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== '') {
               extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if (fullRoadAddr !== '') {
               fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            console.log(data.zonecode);
            console.log(fullRoadAddr);
            /*      var a = console.log(data.zonecode);
               var b = console.log(fullRoadAddr);
               
               if(a == null || b = null){
                  alert("주소를 확인하세요.");
                  return false;
               }   */

            $("[name=mem_oaddress]").val(data.zonecode);
            $("[name=maddress]").val(fullRoadAddr);

            document.getElementById('mem_oaddress').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('maddress').value = fullRoadAddr;

            //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
         }
      }).open();
   }
</script> -->


<%-- <body>
   <div class="wrapper">
      <div class="main-content">
         <div class="fix">
            <nav class="navbar navbar-expand-xl nav_area sticky">
               <div class="container">
                  <div class="logo">
                     <a href="" class="logo-light">Fooriend</a> <a href="main.htm"
                        class="logo-dark">Fooriend</a>
                  </div>
                  <div class="collapse navbar-collapse " id="navbarNav">
                     <ul
                        class="navbar-nav ml-auto navbar-center main_menu onepage_nav">
                        <li class="nav-item active"><a class="nav-link"
                           href="home.htm">로그인</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="register.htm">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="subscribeform.htm">구독신청</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="Boardloginlist.htm">고객센터</a></li>
                     </ul>
                  </div>
               </div>
            </nav>
            <hr style="margin-top: auto;">
            <br>
            <div class="nav-bottom"></div>
         </div>
         <section class="ftco-section">
            <div class="container">
               <br> <br>
               <hr>
               <div class="row justify-content-center">
                  <div class="col-md-6 text-center mb-5">
                     <h2 class="heading-section">Register</h2>
                  </div>
               </div>
               <div class="row justify-content-center">
                  <div class="col-md-6 col-lg-4">
                     <div class="login-wrap p-0">
                        <form action="home.htm" class="signin-form">



                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp;<label for="mid">아이디</label> <input
                                 type="text" class="form-control" placeholder="Username"
                                 id="mid" name="mid" required>
                              <div class="eheck_font" id="id_check"></div>
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mpassword">비밀번호</label> <input
                                 type="password" class="form-control" placeholder="Password"
                                 id="mpassword" name="mpassword" required>
                              <div class="eheck_font" id="pw_check"></div>
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="pw2">비밀번호 확인</label> <input
                                 type="password" class="form-control"
                                 placeholder="Confirm Password" id="mpassword2"
                                 name="mpassword2" required>
                              <div class="eheck_font" id="pw2_check"></div>
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mname">이름</label> <input
                                 id="mname" type="text" class="form-control"
                                 placeholder="Name" id="mname" name="mname" required>
                              <div class="eheck_font" id="name_check"></div>
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp;<label for="memail">이메일 주소</label> <input
                                 type="text" class="form-control" placeholder="Email"
                                 id="memail" name="memail" required>
                              <div class="eheck_font" id="email_check"></div>
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mphone">휴대폰 번호('-'없이
                                 번호만 입력해주세요)</label> <input type="text" class="form-control"
                                 placeholder="Phone Number" id="mphone" name="mphone" required>
                              <div class="eheck_font" id="phone_check"></div>
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp; <label for="mAllergy">알러지</label><br>
                              <font color="black"> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<input
                                 type="checkbox" class="mAllergyform" id="input_check"
                                 name="mallergyPeanut" value="1"> 땅콩 &nbsp; &nbsp;
                                 &nbsp; &nbsp; <input type="checkbox" class="mAllergyform"
                                 id="input_check" name="mallergyShellfish" value="2">
                                 갑각류 &nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"
                                 class="mAllergyform" id="input_check" name="mallergyMilk"
                                 value="4"> 유제품
                              </font> <input type="hidden" name="mallergyPeanut" value='0'
                                 id="input_check_hidden" /> <input type="hidden"
                                 name="mallergyShellfish" value='0' id="input_check_hidden" />
                              <input type="hidden" name="mallergyMilk" value='0'
                                 id="input_check_hidden" />
                           </div>

                           <div class="form-group">
                              &nbsp; &nbsp; &nbsp;<label for="address">주소</label><br> <input
                                 class="form-control" style="width: 40%; display: inline;"
                                 placeholder="우편번호" name="mem_oaddress" id="mem_oaddress"
                                 type="text" readonly="readonly">
                              <button type="button" class="btn btn-default"
                                 onclick="execPostCode();">
                                 <i class="fa fa-search"></i> <font size="3px">우편번호 찾기</font>
                              </button>
                           </div>

                           <div class="form-group">
                              <input class="form-control" style="top: 5px;"
                                 placeholder="도로명 주소" name="meddress" id="maddress"
                                 type="text" readonly="readonly" />
                           </div>

                           <div class="form-group">
                              <input class="form-control" placeholder="상세주소"
                                 name="mem_detailaddress" id="mem_detailaddress" type="text" />
                           </div>

                           <div class="form-group">
                              <button type="submit"
                                 class="form-control btn btn-primary submit px-3">
                                 <font color="black">회원가입</font>
                              </button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
               <br>
               <hr>
            </div>
         </section>
      </div>
      <footer>
         <%@include file="includes/footer.jsp"%>
      </footer>
   </div>
</body> --%>
</html>