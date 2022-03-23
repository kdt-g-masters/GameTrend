<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입 페이지</title>
	<script src="resources/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#checkIdBtn").on('click', function() {
				$.ajax({
					url: '<%= request.getContextPath() %>/join/checkid',
					data: {'id': $("#userInputId").val()},
					type: 'post',
					dataType: 'json',
					success: function(r) {
						$('#resultModal').html(r.result);
					}
				}); // ajax end
			}); // on end
		}); // ready end
	</script>
	<!-- BootStrap 적용  -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<!-- CSS 적용 --> 
	<link href="resources/css/Join.css" rel="stylesheet" />
	<link href="resources/css/index.css" rel="stylesheet"/>
	<!-- 글꼴 적용 -->   
	<link href="https://webfontworld.github.io/kopus/KoPubWorldDotum.css" rel="stylesheet">
	<style>
	  div { font-family: 'KoPub Dotum'; font-size: 100%; }
	  div:nth-of-type(1) { font-weight: normal; }
	</style>
</head>
<body>
  <!-- 가운데 정렬  -->
  <div class="box">
  <div class="wrapper text-center">
    <!-- 제목  --> 
    <section>
      <h2>회원가입</h2>
    </section>
    
    <section>
      <form name="login" action="index.html" method="post"><br>
        <!-- 아이디  -->
        <div class="row">
          <h5 class="col-md-4 inline"> 아 이 디</h5>
          <p class="sm_msg">최대 20자까지 입력 가능합니다.</p>
          <div class="col-md-8">
            <input type="text" id="userInputId" name="user_ID" placeholder="아이디 입력" maxlength="20" size="31" pattern="[a-zA-Z0-9]{0, 20}" required /> &nbsp;
            <!-- 중복확인(모달)  -->
            <!-- Button trigger modal -->
            <button type="button" id="checkIdBtn" class="btn text-white btn-sm" style="background-color: #7244FE;" data-bs-toggle="modal" data-bs-target="#OverlappingCheck1">
              중복확인
            </button>
            <div id="checkIdResult"></div>	
            <!-- Modal -->
            <div class="modal fade" id="OverlappingCheck1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">ID 중복확인</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body" id="resultModal"></div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">닫 &nbsp;기</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><br>
        <!-- 비밀번호 -->
        <div class="row">
          <h5 class="col-md-9 inline">비밀번호/확인</h5>
          <p class="sm_msg">영문/숫자/특수문자를 조합하여 기재하세요.</p> 
          <div class="col-md-9">
            <input type="password" name="user_PW1" value="123456" size="21" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{0,100}$" required />&nbsp;&nbsp;
             <!-- 비밀번호 확인 -->
             <input type="password" name="user_PW2" value="123456" size="21" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{0,100}$" required />
          </div>
        </div><br>
        <!-- 이름 --> 
        <div class="row">
          <h5 class="col-md-9 inline"> 이 &nbsp;&nbsp;&nbsp;름</h5>
          <div class="col-md-9">
            <input type="text" name="user_name" value="" size="45">
          </div>
        </div><br>
        <!-- 생년월일 -->  
        <div class="row">
          <h5 class="col-md-9 inline"> 생년월일</h5>
          <div class="col-md-9">
            <select name="year" id="year">
              <option value=""> 선택 </option>
              <option value="1970">1970</option>
              <option value="1971">1971</option>
              <option value="1972">1972</option>
              <option value="1973">1973</option>
              <option value="1974">1974</option>
              <option value="1975">1975</option>
              <option value="1976">1976</option>
              <option value="1977">1977</option>
              <option value="1978">1978</option>
              <option value="1979">1979</option>
              <option value="1980">1980</option>
              <option value="1981">1981</option>
              <option value="1982">1982</option>
              <option value="1983">1983</option>
              <option value="1984">1984</option>
              <option value="1985">1985</option>
              <option value="1986">1986</option>
              <option value="1987">1987</option>
              <option value="1988">1988</option>
              <option value="1989">1989</option>
              <option value="1990">1990</option>
              <option value="1991">1991</option>
              <option value="1992">1992</option>
              <option value="1993">1993</option>
              <option value="1994">1994</option>
              <option value="1995">1995</option>
              <option value="1996">1996</option>
              <option value="1997">1997</option>
              <option value="1998">1998</option>
              <option value="1999">1999</option>
              <option value="2000">2000</option>
              <option value="2001">2001</option>
              <option value="2002">2002</option>
              <option value="2003">2003</option>
              <option value="2004">2004</option>
              <option value="2005">2005</option>
              <option value="2006">2006</option>
              <option value="2007">2007</option>
              <option value="2008">2008</option>
              <option value="2009">2009</option>
              <option value="2010">2010</option>
              <option value="2011">2011</option>
              <option value="2012">2012</option>
              <option value="2013">2013</option>
              <option value="2014">2014</option>
              <option value="2015">2015</option>
              <option value="2016">2016</option>
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
            </select> <span class="date">년</span> &nbsp;
            <select name="month">
              <option value=""> 선택 </option>
              <option value="1"> 1</option>
              <option value="2"> 2</option>
              <option value="3"> 3</option>
              <option value="4"> 4</option>
              <option value="5"> 5</option>
              <option value="6"> 6</option>
              <option value="7"> 7</option>
              <option value="8"> 8</option>
              <option value="9"> 9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            </select> <span class="date">월</span> &nbsp;
            <select name="day">
              <option value=""> 선택 </option>
              <option value="1"> 1</option>
              <option value="2"> 2</option>
              <option value="3"> 3</option>
              <option value="4"> 4</option>
              <option value="5"> 5</option>
              <option value="6"> 6</option>
              <option value="7"> 7</option>
              <option value="8"> 8</option>
              <option value="9"> 9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
              <option value="24">24</option>
              <option value="25">25</option>
              <option value="26">26</option>
              <option value="27">27</option>
              <option value="28">28</option>
              <option value="29">29</option>
              <option value="30">30</option>
              <option value="31">31</option>
            </select> <span class="date">일</span>
          </div>
        </div><br>
        <!-- 성별 --> 
        <div class="row">
          <h5 class="col-md-9 inline"> 성 &nbsp;&nbsp;&nbsp;별</h5>

          <div class="col-md-9">&nbsp;
            <div class="btn-group gender " role="group" aria-label="Basic radio toggle button group">
              <input type="radio" class="btn-check mainColor" name="gender" id="male" value="g1" autocomplete="off" checked>
              <label class="btn btn-outline-primary" for="male">남 &nbsp;&nbsp;성</label>

              <input type="radio" class="btn-check mainColor" name="gender" id="female" value="g2" autocomplete="off">
              <label class="btn btn-outline-primary" for="female">여 &nbsp;&nbsp;성</label>
            </div>
          </div>
        </div><br>
        <!-- 휴대전화 -->
        <div class="row">
          <h5 class="col-md-3 inline"> 휴대전화</h5>
          <p class="sm_msg">휴대전화 번호는 로그인 정보 분실시에 활용됩니다.</p>
          <!-- 드랍다운 박스 --> 
          <div class="col-md-9"> 
            <select name="company" id="company">
              <option value=""> 통신사 </option>
              <option value="1">SKT</option>
              <option value="2">KT</option>
              <option value="3">LG U+</option>
              <option value="4">알뜰폰</option>
            </select>
            <!-- 연락처 텍스트칸 -->
            <input type="text" name="user_phone" placeholder="010-****-****" pattern="^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$" required /> &nbsp;
            <!-- 인증번호(모달) -->   
            <!-- Button trigger modal -->
            <button type="button" class="btn text-white btn-sm" style="background-color: #7244FE;" data-bs-toggle="modal" data-bs-target="#CertificationNumber">
		          인증번호
            </button>
            <!-- Modal -->
            <div class="modal fade" id="CertificationNumber" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">인증번호 발송</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    인증번호 확인하세여~
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">닫 &nbsp;&nbsp;&nbsp;기</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- 인증번호 텍스트칸 -->
            <p class="sm_msg"></p><br>
            <input type="text" name="certification" placeholder="6자리 인증번호를 입력하세요" size=31 pattern="[0-9]{6}" required /> &nbsp;
            <!-- 확인(모달) -->
            <!-- Button trigger modal -->
            <button type="button" class="btn text-white btn-sm" style="background-color: #7244FE;" data-bs-toggle="modal" data-bs-target="#Checking">
              확 &nbsp;&nbsp;&nbsp;인
            </button> 		
            <!-- Modal -->
            <div class="modal fade" id="Checking" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">인증번호 검사</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    번호 맞아여! <br> 
                    번호 아니예여~ 
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">닫기</button>
                  </div>
                </div>
              </div>	
            </div> 
          </div>
        </div><br><br>
        <!-- 가입하기 --> 
        <div class="row flex center"> 
          <div class="col-md-12">
            <button type="submit" class="btn text-white btn-sm" style="background-color: #7244FE; width:120px;">가입하기</button>&nbsp;&nbsp;&nbsp;
            <!-- 취소 --> 
            <button type="button" class="btn text-white btn-sm" style="background-color: #7244FE; width:120px;" onclick="window.close();">취 &nbsp;&nbsp;&nbsp;소</button>
            <br><br> 
          </div>
        </div>
      </form>
    </section>
  </div>
  </div>
  
 <!-- 부트스트랩 적용 --> 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   
 <!--  <script>
	function openWin1() { 
		window.open("http://localhost:8080/JoinPage/OverlappingCheck.html", "중복확인", "width=350, height=150, toolbar=no, menubar=no, scrollbars=no, resizable=yes"); 
	} 
	function openWin2() { 
		window.open("http://localhost:8080/JoinPage/CertificationNumber.html", "인증번호", "width=350, height=150, toolbar=no, menubar=no, scrollbars=no, resizable=yes"); 
	} 
	function openWin3() { 
		window.open("http://localhost:8080/JoinPage/Checking.html", "확인", "width=350, height=150, toolbar=no, menubar=no, scrollbars=no, resizable=yes"); 
	} 
	function closeWin1() { 
		window.close(); 
	} 
  </script>  --> 
     
</body>

</html>