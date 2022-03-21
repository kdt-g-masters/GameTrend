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
<style>
@font-face {
    font-family: 'KoPubDotumMedium';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/KoPubDotumMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

* {
	font-family: 'KoPubDotumMedium';
}
#a{
	width : 300px;
    height : 300px;
    margin : 0 auto;
	}
	
input[type=text]{
	font-size: 15px;
	width: 299px;
	height: 40px;
	margin : 2px;
	}
	
#find{
	font-size: 15px;
	width : 297px;
	height: 40px;
	margin : 5px;
}
h4{
 text-align : center
}

img{
	width : 270px;
	height: 180px;
	margin: 20px;
	}

</style>
<script src="resources/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	
});
</script>
</head>
<body>
<div id="box">
	<div id= 'a'>
		<a href = "index.jsp"><img src = 'images/logo.png'></img></a><br>
		<h4>아이디 / 비밀번호 찾기</h4><br>
		<div>이름을 입력하세요</div>
		<input class = "form-control me-2" type = 'text' name = 'name' placeholder= "이름">
		<div>등록된  휴대폰 번호를 입력하세요</div>
		<input class = "form-control me-2" type= 'text' name="user_phone" placeholder="010-****-****">
		<div>등록된 이메일 주소를 입력하세요</div>
		<input class = "form-control me-2" type= 'text' name="email" placeholder="이메일">
		<input class = "btn btn-primary" id = 'find' type = 'button' name = 'find' value = '확인'>
	</div>
</div>
</body>
</html>