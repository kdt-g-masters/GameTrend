<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/gametrend/resources/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
<!-- BootStrap 적용  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="/gametrend/resources/css/Join.css" rel="stylesheet" />
<link href="/gametrend/resources/css/index.css" rel="stylesheet"/>
<!-- 글꼴 적용 -->	
<link href="https://webfontworld.github.io/kopus/KoPubWorldDotum.css" rel="stylesheet">
</head>
<body>
	<div class="box2">
		<div class="resultBox">
			<img src='/gametrend/resources/images/logo.png' id="resultPageLogo"></img>						
			<c:if test="${ result == 1 }">
				<h2>회원 가입을 완료했습니다.</h2>
				<a class = "btn btn-primary" href="login">로그인 페이지로 이동</a>
				<a class = "btn btn-outline-primary" href="#">메인 화면으로 이동</a>
			</c:if>
			<c:if test="${ result == 0 }">
				<h3>회원가입 실패</h3>
			</c:if>
		</div>
	</div>
</body>
</html>