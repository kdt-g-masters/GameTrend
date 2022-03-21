<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Game Trend</title>
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="resources/jquery-3.6.0.min.js"></script>
	<link href="resources/css/wishlist.css" rel="stylesheet"> 
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
	.wishlist {
		width: 70%;
		margin: auto;
	}
	.subtext {
		color: #7F7C82;
	}
	.none {
		text-decoration: none;
		color: black;
	}
	.none:hover {
		color: #A182FE;
	}
	.close {
		text-align: right;
		padding: 0;
		text-decoration: none;
	}
	#close:hover {
		background-color: #A182FE;
	}
	.nav-item:hover {
		background-color: #E8E0FF;
	}
	</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<div class="wishlist mt-5 mb-5">	
		<h2 class="pt-5 pb-5" style="display: inline-block">위시리스트</h2>
		<ul class="row row-cols-1 row-cols-md-3 g-4 row list-unstyled">
		  <li class="col">
		  	
		    <div class="card h-100">
				<a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>					
				</a>
				<a href="sub_ps1.html"  class="none">
		      <img src="https://cdn2.whatoplay.com/screenshots/56566_1630644767slide-1.jpg" class="card-img-top" alt="...">
		      
		      <div class="card-body">
		        <h5 class="card-title"><b>호라이즌 포비든 웨스트</b></h5>
		        <p class="card-text subtext">먼 미래의 종말 이후의 Horizon 세계로 돌아가서 먼 땅을 탐험하고, 더 크고 경외심을 불러일으키는 기계와 싸우고, 놀라운 새로운 부족과 조우하세요.</p>
		      </div>
		    </div>
		    </a>
		  </li>
		  <li class="col">

		    <div class="card h-100">
		    <a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>		    
		    </a>
		  	<a href="sub_xbox1.html"  class="none">		    
		      <img src="https://cdn2.whatoplay.com/screenshots/92012_1623385194slide-1.jpg" class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title"><b>엘든 링</b></h5>
		        <p class="card-text subtext">변색된 일어나서 엘든 링의 힘을 휘두르고 그 사이의 땅에서 엘든 로드가 되기 위해 은총의 인도를 받으세요.</p>
		      </div>
		    </div>
		    </a>
		  </li>
		  <li class="col">

		    <div class="card h-100">
		    <a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>		    
		    </a>
		  	<a href="sub.jsp"  class="none">		    
		      <img src="https://cdn2.whatoplay.com/screenshots/3851slide-1.jpg" class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title"><b>리그 오브 레전드</b></h5>
		        <p class="card-text subtext">League of Legends는 RTS의 속도와 강렬함과 RPG 요소가 결합된 빠르게 진행되는 경쟁 온라인 게임입니다.</p>
		      </div>
		    </div>
		    </a>
		  </li>
		  <li class="col">

		    <div class="card h-100">
		    <a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>		    
		    </a>
		  	<a href="sub_switch2.html"  class="none">		    
		      <img src="https://cdn2.whatoplay.com/screenshots/87727-1614573290625slide-1.jpeg" class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title"><b>포켓몬 레전드 아르세우스</b></h5>
		        <p class="card-text subtext">포켓몬 시리즈의 RPG 뿌리에 액션과 탐험을 결합한 Game Freak의 새로운 게임인 Pokémon Legends: Arceus에서 새로운 종류의 웅장한 Pokémon 모험을 준비하십시오.</p>
		      </div>
		    </div>
		    </a>
		  </li>
		  <li class="col">

		    <div class="card h-100">
		    <a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>		    
		    </a>
		  	<a href="sub_switch1.html"  class="none">		    
		      <img src="https://cdn2.whatoplay.com/screenshots/41293_1560832121slide-2.jpg" class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title"><b>모여봐요 동물의 숲</b></h5>
		        <p class="card-text subtext">바쁘고 바쁜 현대 생활로 인해 좌절감을 느낀다면 Tom Nook은 당신이 좋아할 만한 새로운 비즈니스 벤처를 준비했습니다. 바로 Nook Inc.</p>
		      </div>
		    </div>
		    </a>
		  </li>
		  <li class="col">

		    <div class="card h-100">
		    <a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>		    
		    </a>
		  	<a href="sub_pc2.html"  class="none">		    
		      <img src="https://cdn2.whatoplay.com/screenshots/12276_1623406144slide-2.jpg" class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title"><b>로스트 아크</b></h5>
		        <p class="card-text subtext">끝없는 깊이의 매혹적인 세계에서 로스트아크를 향한 여정을 시작하세요.</p>
		      </div>
		    </div>
		    </a>
		  </li>		  
		</div>
	</ul>
<div class="space" style="height:500"></div>
<%@ include file="footer.jsp" %>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>