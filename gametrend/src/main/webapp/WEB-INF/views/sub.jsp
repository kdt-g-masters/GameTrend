<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
<title>리그 오브 레전드</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="resources/css/sub.css" rel="stylesheet">
<script src="resources/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$("#reviewinsert").on('click', function () {
		$.ajax({
			url: '<%=request.getContextPath() %>/insertReview' ,
			data: {'reviewNo':$("#reviewNo").val(), 'userId':$("#reviewuserId").val(), 'gameNo':$("#reviewgameNo").val(), 'contents':$("#contents").val(), 'stars':$("#stars").val(), 'createAt':$("#createAt").val() } ,
			type: 'POST' ,
			dataType: 'json',
			success: function (a) {
				alert(JSON.stringify(a));
				$.ajax({
					url: '<%=request.getContextPath() %>/countreviewgameno',
					data: {'gameNo':1} ,
					dataType: 'json',
					success: function(countreview){
						$("#reviewcount").html("<h3>리뷰수=" + countreview + "</h3>");
					}
				});
				
				$.ajax({
					url: '<%=request.getContextPath() %>/reviewgameno',
					data: {'gameNo':1} ,
					dataType: 'json',
					success: function (list) {
						var j = (list.length - 1);
						$('#review1').append("<div style=\"background-color: black;\"><p>" + list[0].userId + "<br>" +list[0].createAt + "</p><p>" + list[0].contents + "</p></div>");
					}
				});
				
			}//success end
		});//ajax end
	});//on end
	
	$.ajax({
		url: '<%=request.getContextPath() %>/countreviewgameno',
		data: {'gameNo':1} ,
		dataType: 'json',
		success: function(countreview){
			$("#reviewcount").html("<h3>리뷰수=" + countreview + "</h3>");
		}
	});//ajax end
	
	$.ajax({
		url: '<%=request.getContextPath() %>/reviewgameno',
		data: {'gameNo':1} ,
		dataType: 'json',
		success: function (list) {
			for(var i = 0; i < list.length; i++){
				$('#review1').append("<div style=\"background-color: black;\"><p>" + list[i].userId + "<br>" +list[i].createAt + "</p><p>" + list[i].contents + "</p></div>");
			}
		}
	});
	
	var cnt = 0;
	$('#star').on('click', function () {
		cnt++;
		if(cnt == 1){
			$('#star5').attr('class', 'bi bi-star-half');
			$('#star5-1').attr('d', 'M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z');
		}
		else if(cnt == 2){
			$('#star5').attr('class', 'bi bi-star-fill');
			$('#star5-1').attr('d', 'M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z');
		}
		else if(cnt == 3){
			$('#star4').attr('class', 'bi bi-star-half');
			$('#star4-1').attr('d', 'M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z');
		}
		else if(cnt == 4){
			$('#star4').attr('class', 'bi bi-star-fill');
			$('#star4-1').attr('d', 'M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z');
		}
		else if(cnt == 5){
			$('#star3').attr('class', 'bi bi-star-half');
			$('#star3-1').attr('d', 'M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z');
		}
		else if(cnt == 6){
			$('#star3').attr('class', 'bi bi-star-fill');
			$('#star3-1').attr('d', 'M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z');
		}
		else if(cnt == 7){
			$('#star2').attr('class', 'bi bi-star-half');
			$('#star2-1').attr('d', 'M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z');
		}
		else if(cnt == 8){
			$('#star2').attr('class', 'bi bi-star-fill');
			$('#star2-1').attr('d', 'M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z');
		}
		else if(cnt == 9){
			$('#star1').attr('class', 'bi bi-star-half');
			$('#star1-1').attr('d', 'M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z');
		}
		else if(cnt == 10){
			$('#star1').attr('class', 'bi bi-star-fill');
			$('#star1-1').attr('d', 'M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z');
		}
		else{
			cnt=0;
			$('#star1').attr('class', 'bi bi-star');
			$('#star1-1').attr('d','M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z');
			$('#star2').attr('class', 'bi bi-star');
			$('#star2-1').attr('d','M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z');
			$('#star3').attr('class', 'bi bi-star');
			$('#star3-1').attr('d','M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z');
			$('#star4').attr('class', 'bi bi-star');
			$('#star4-1').attr('d','M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z');
			$('#star5').attr('class', 'bi bi-star');
			$('#star5-1').attr('d','M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z');
		}
	});//star end	
});//jquary end
</script>
</head>

<body>
	<%@ include file="navbar.jsp" %>	
	<main>
		<div class="hidden" id="tema">
			<div class="left" id="tema1">
				<h1>리그 오브 레전드 <br> (League of Legends)</h1>
				<img id="img1" src="images/thumbnail/1.jpg">
				<p>PC</p>
				<p>2011년 12월 4일</p>
				<p>MOBA, AOS</p>
			</div>
			
			<div class="right" id="ratings" style="margin-bottom: 10px;">
				<div style="float: left;">
					<h2 id="star">별점:<svg id="star5" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path id="star5-1" d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/></svg>
							<svg id="star4" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path id="star4-1" d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/></svg>
							<svg id="star3" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path id="star3-1" d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/></svg>
							<svg id="star2" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path id="star2-1" d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/></svg>
							<svg id="star1" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path id="star1-1" d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/></svg>
					</h2>
				</div>
				
				<div id="reviewcount" style="float: right;"></div>
			</div>
			
			<div class="right" id="explain">
				<h2>게임 설명</h2>
				<p> 리그 오브 레전드는 세계 최고의 MOBA(Multiplayer Online Battle Arena) 게임입니다. 
				끝없이 이어지는 실시간 전투와 협동을 통한 팀플레이, RTS와 RPG를 하나의 게임에서 동시에 즐길 수 있는 새로운 장르의 온라인 게임입니다. 
				두 팀은 각기 독특한 특성과 플레이스타일을 자랑하는 강력한 챔피언을 소환하여, 다양한 모드의 전장에서 정면 대결을 펼칩니다. 
				신규 챔피언이 끊임없이 추가되며, 지속적인 업데이트가 이루어지고, 흥미진진한 e스포츠 대회의 중심이기도 한 리그 오브 레전드에서 많은 동료 소환사들과 함께 박진감 넘치는 전투를 즐겨보세요!</p>
			</div>
		</div>
		
		<h3>트레일러, 게임이미지 && 스크린샷</h3>
		<div class="hidden1" style="background-color: black;">
			<div style="float: left; margin-bottom: 0px; margin-right: 8px;">
				<iframe width="390" height="315" src="https://www.youtube.com/embed/mDYqT0_9VR4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<img class="img2" src="images/screenshot/1_1.jpg">
			<img class="img2" src="images/screenshot/1_2.jpg">
			<img class="img2" src="images/screenshot/1_3.jpg">
			<img class="img2" src="images/screenshot/1_4.jpg">
		</div>
		
		<h3>리뷰</h3>
		<div class="hidden">
			<div class="left" id="review1">
				<p>리뷰내용</p>
			</div>
			
			<div class="right">
				<h4>리뷰 쓰기</h4>
				<form action="">
					<input id="reviewNo" type="text" value="<% Random random = new Random(); %><%= random.nextInt(9999)+1 %>" hidden>
					아이디:<input id="reviewuserId" type="text">
					<input id="reviewgameNo" type="text" value="1" hidden>
					별점:<input id="stars" type="text">
					<input id="createAt" type="text" value="<%Date now = new Date(); SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %><%=formatter.format(now) %>" hidden>
					<textarea id="contents" rows="10" cols="70" style="width: 80%;"></textarea>
					<br>
					<input id="reviewinsert" type="button" value="리뷰 입력" style="background-color: #7244FE; color: #FFFFFF">
				</form>
			</div>
		</div>
		
		<h3>게임 추천</h3>
		<div class="hidden1">
			<table>
				<tr><td><div class="recommendation" style="background-color: #B9A1FF;"><a><img class="img3" src="images/gta1.jpg"><p>그랜드 테프트 오토 V</p><p>PS3</p><p>2013년 9월 17일</p></a></div></td>
					<td><div class="recommendation" style="background-color: #B9A1FF;"><a><img class="img3" src="images/gta1.jpg"><p>그랜드 테프트 오토 V</p><p>PS3</p><p>2013년 9월 17일</p></a></div></td>
					<td><div class="recommendation" style="background-color: #B9A1FF;"><a><img class="img3" src="images/gta1.jpg"><p>그랜드 테프트 오토 V</p><p>PS3</p><p>2013년 9월 17일</p></a></div></td>
					<td><div class="recommendation" style="background-color: #B9A1FF;"><a><img class="img3" src="images/gta1.jpg"><p>그랜드 테프트 오토 V</p><p>PS3</p><p>2013년 9월 17일</p></a></div></td>
					<td><div class="recommendation" style="background-color: #B9A1FF;"><a><img class="img3" src="images/gta1.jpg"><p>그랜드 테프트 오토 V</p><p>PS3</p><p>2013년 9월 17일</p></a></div></td></tr>
			</table>
		</div>
	</main>
	<div class="space" style="height:500"></div>
	<%@ include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>