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
	<link rel="stylesheet" href="resources/css/index.css"/>
	<script src="resources/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class=".carousel container-fluid">
		<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
		  </div>
		  <div class="carousel-inner" data-bs-interval="2000">
		    <div class="carousel-item active">
		      <img src="https://cdn2.whatoplay.com/featured/Legends+of+Arceus.webp" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Pokemon Legends: Arceus</h5>
		        <p>포켓몬 시리즈의 RPG에 액션과 탐험을 결합한 Game Freak의 새로운 게임인 Pokémon Legends: Arceus에서 새로운 종류의 웅장한 Pokémon 모험을 준비하세요.</p>
		      </div>
		    </div>
		    <div class="carousel-item" data-bs-interval="2000">
		      <img src="https://cdn2.whatoplay.com/featured/eldenring.webp" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Dying Light 2 Stay Human</h5>
		        <p>당신의 독특한 능력으로 당신은 이 쇠퇴하는 대도시에서 변화의 대리인이 될 수 있습니다.</p>
		      </div>
		    </div>
		    <div class="carousel-item" data-bs-interval="2000">
		      <img src="https://cdn2.whatoplay.com/featured/Horizon+Forbidden+West+550.webp" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Sifu</h5>
		        <p>Sifu는 Absolver의 독립 스튜디오인 Sloclap의 새로운 게임입니다. 강렬한 백병전이 특징인 3인칭 액션 게임으로, 복수의 길에 있는 어린 쿵푸 학생을 조종하게 됩니다.</p>
		      </div>
		    </div>
		    <div class="carousel-item" data-bs-interval="2000">
		      <img src="https://cdn2.whatoplay.com/featured/disney+twisted-wonderland.webp" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Horizon Forbidden West</h5>
		        <p>먼 미래의 종말 이후 Horizon.s 세계로 돌아가서 먼 땅을 탐험하고, 더 크고 경외심을 불러일으키는 기계와 싸우고, 놀라운 새로운 부족을 만나세요.</p>
		      </div>
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
	</div>
	<%-- <div class=".carousel container-fluid">
		<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
		    	<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    	<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		   	 	<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    	<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
		    </div>
			<div class="carousel-inner" >
		    	<c:forEach items="${carousellist}" var="carouseldto">
		    		<div class="carousel-item active" data-bs-interval="2000">
		      			<img src="resources/carousel/'${carouseldto.image}'" class="d-block w-100" alt="...">
		      			<div class="carousel-caption d-none d-md-block">
		        			<h5>${carouseldto.title}</h5>
		        			<p>${carouseldto.subtitle}</p>
		      			</div>
		    		</div>
		  		</c:forEach>
		  	</div>
		  	<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
		    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    	<span class="visually-hidden">Previous</span>
		  	</button>
		  	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
		    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
		    	<span class="visually-hidden">Next</span>
		  	</button>
		</div>
	</div> --%>
</body>
</html>