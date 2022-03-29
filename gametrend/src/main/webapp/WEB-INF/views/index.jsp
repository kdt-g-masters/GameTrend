<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Game Trend</title>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="resources/css/index.css"/>
	<script src="resources/jquery-3.6.0.min.js"></script>
	<script src="resources/js/index.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("ul.dropdown-menu > li > a").on('click',function(i){
		$('#dropdownMenuLink').html($(this).text());
		$("ul.dropdown-menu > li > a").removeClass('active');
		$('.paging li').removeClass('active');
		$(this).addClass('active');
		$('.paging li:eq(0)').addClass('active');			
		switch($(this).text()){
			case "PC": 
				$.ajax
				$("img.main-thumbnail-img").each(function(i){
					$(this).attr('src','images/pc/'+ pcImg[i]);
				});
				$(".title > h4").each(function(i){
					$(this).html(pcName[i]);
				});				
				$('.main-thumbnail-box').on('click',function(){
					location.href = 'sub_pc1.html';
				});
				$()
				break;
			case "Play Station":
				$("img.main-thumbnail-img").each(function(i){
					$(this).attr('src','images/ps/'+ psImg[i]);
				});
				$(".title > h4").each(function(i){
					$(this).html(psName[i]);
				});
				$('.main-thumbnail-box, .rank').on('click',function(){
					location.href = 'sub_ps1.html';
				});
				break;
			case "Xbox":
				$("img.main-thumbnail-img").each(function(i){
					$(this).attr('src','images/xbox/'+ xboxImg[i]);
				});
				$(".title > h4").each(function(i){
					$(this).html(xboxName[i]);
				});
				$('.main-thumbnail-box, .rank').on('click',function(){
					location.href = 'sub_xbox1.html';
				});
				break;
			case "Switch":

				$("img.main-thumbnail-img").each(function(i){
					$(this).attr('src','images/switch/'+ switchImg[i]);
				});
				$(".title > h4").each(function(i){
					$(this).html(switchName[i]);
				});
				$('.main-thumbnail-box, .rank').on('click',function(){
						location.href = 'sub_switch1.html';
				});
				break;
			default:
				$("img.main-thumbnail-img").each(function(i){
					$(this).attr('src','images/pc/'+ pcImg[i]);
				});
				$(".title > h4").each(function(i){
					$(this).html(pcName[i]);
				});
				$('.main-thumbnail-box, .rank').on('click',function(){
					location.href = 'sub_pc1.html';
				});
		}
	});
	$('.paging li').on('click',function(){
		$('.paging li').removeClass('active');
		$(this).addClass('active');
		location.href ='lsit?page='+$(this).text();
	});
});//ready end
	</script>
</head>
<body>
	<!-- navbar -->
	<%@ include file="navbar.jsp" %>
	<!-- 슬라이드 이미지 부분-->
	<%@ include file="carousel.jsp" %>
	<br><hr>
	<!-- gamelist-->
	<%@ include file="gamelist.jsp" %>
	
	<div class="space" style="height:500"></div> 
	
	<!-- footer -->
	<%@ include file="footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>