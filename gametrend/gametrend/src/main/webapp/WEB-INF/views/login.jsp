<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="resources/css/login.css" rel="stylesheet">
<script src="resources/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#login").on('click', function(){ //로그인결과 받아오는 것
		$.ajax({
			url: '<%=request.getContextPath() %>/login',
			data: {'id':$("#id").val(), 'password':$("#password").val()},
			type : 'post', 
			dataType: 'json',
			success: function(a){ 
				//alert(JSON.stringify(a));
				if(a == 1){
				alert("정상 로그인 되셨습니다")
				location.replace('http://localhost:8080/gametrend/');
				
				}else{
				$("#eee").html("아이디 또는 비밀번호가 일치하지 않습니다");						
				}
				
			}//success end
			
		});//ajax end
	
	});//onend
	
}); //ready end 
</script>

<script type="text/javascript">

window.onload = function(){
	document.getElementById('find').onclick = function(){
		window.open("login2.jsp", 'newpage', "width = 600, height = 500, top = 100, left = 100, resizable=yes, location = yes");
		}
	document.getElementById('entry').onclick = function(){
		window.open("join.jsp", 'joinpage', "width = 1000, height = 1000, top = 100, left = 100, resizable=yes, location = yes");
		}
	// 비회원 로그인 주석처리
	/* 	document.getElementById('aaa').onclick = function(){
		window.open("login3.jsp", 'login3', "width = 600, height = 500, top = 100, left = 100, resizable=yes, location = yes");
		} */
	//아이디 또는 비밀번호가 일치하지 않습니다 빈칸 주석처리	
	document.getElementById('id').onkeyup = function(){document.getElementById('eee').innerHTML = '';
		
	}
}

</script>

</head>
<body>
<div id="box">
	<form action = "">
		<div id= 'line'>
			<a href = "index.jsp"><img src = 'resources/images/logo.png'></img></a><br>
			<input class = "form-control me-2" id = 'id' type= "text" name = "id" placeholder= "아이디">
			<input class = "form-control me-2" id = 'password' type = 'password' name = 'password' placeholder = "비밀번호">
			<input id="keep" type = 'checkbox' name = 'keep' value = '자동로그인'> 로그인 상태 유지 <br>
			<div id = 'eee'></div><br>
			<div><input class="btn btn-primary" id = 'login' type="button" name = 'button' value = '로그인'></div>
			<div><input class = "btn btn-outline-primary" id = 'find' type = 'button' name = 'find' value = '아이디/비밀번호 찾기'></div>
			<input class = "btn btn-outline-primary" id = 'entry' type = 'button' name = 'entry' value = '회원가입'>
			<!-- <input class = "btn btn-outline-primary" id = 'aaa' type = 'button'	name = 'button' value = '비회원 로그인'> -->
		</div>
	</form>
</div>
</body>
</html>

