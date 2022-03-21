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
	<script>
		//saeha script
		var pcImg = ['pc1.jpg','pc2.jpg','pc3.jpg','pc4.png','pc5.png','pc6.jpg','pc7.jpg','pc8.jpg','pc9.jpg'];
		var pcImg_p2 = ['pc10.jpg','pc11.jpg','pc12.jpg','pc13.png','pc14.jpg','pc15.jpg','pc16.jpg','pc17.jpg','pc18.jpg'];
		var psImg = ['ps1.jpg','ps2.png','ps3.jpg','ps4.jpg','ps5.jpg','ps6.jpg','ps7.jpg','ps8.jpg','ps9.jpg'];
		var xboxImg = ['xbox1.jpg','xbox2.jpg','xbox3.png','xbox4.jpg','xbox5.webp','xbox6.jpg','xbox7.webp','xbox8.jpg','xbox9.jpg'];
		var switchImg = ['switch1.jpg','switch2.jpg','switch3.jpg','switch4.jpg','switch5.jpg','switch6.jpg','switch7.jpg','switch8.png'
						,'switch9.jpg'];
		var pcName = ['League of Legends','Lostark','Battle Grounds','FIFA Online4','Valorant','Sudden Attack','Overwatch','Maple Story'
						,'Aion: Tower of Eternity'];
		var pcName_p2 = ['Diablo 2','Dungeon and Fighter','Starcraft','Lineage','Kart Rider','World of Warcraft','Undecember','Path of Exile'
						,'Odin'];
		var psName = ['Horizon Forbidden West','Horizon Zero Dawn','eFootball PES 2021','영웅전설 시작의 궤적','2020 도쿄 올림픽 ps4'
						,'뿌요뿌요 테트리스 2','마블 어벤져스 스탠다드 에디션','모두의 골프 VR','원피스 해적무쌍4'];
		var xboxName = ['FIFA 22','Elden Ring','사이버펑크 2077','The Witcher 3: Wild Hunt','Tennis World Tour 2','NBA 2K22','Riders Republic'
						,'시드 마이어의 문명 VI'];
		var switchName = ['모여봐요 동물의 숲','포켓몬 레전드 아르세우스','슈퍼 스매시 브라더스 얼티밋','the legend of zelda breath of the wild'
						,'Pokemon Sword and Shield','슈퍼마리오 오디세이','슈퍼마리오 파티','포켓몬스터 레츠고! 피카츄&이브이','스플래툰 2'];
		
		var psTag = ['RPG','RPG','스포츠','RPG','RPG','퍼즐','액션','스포츠','액션'];
		var xboxTag = ['스포츠','RPG','액션','RPG','스포츠','스포츠','스포츠','전략','액션'];
		var switchTag = ['커뮤니케이션','액션','액션','액션','RPG','액션','전략','RPG','TPS'];		
	
		$("ul.dropdown-menu > li > a").on('click',function(i){
			$('#dropdownMenuLink').html($(this).text());
			$("ul.dropdown-menu > li > a").removeClass('active');
			$('.paging li').removeClass('active');
			$(this).addClass('active');
			$('.paging li:eq(0)').addClass('active');			
			switch($(this).text()){
				case "PC": 
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
			$('.paging li').on('click',function(){
				$('.paging li').removeClass('active');
				$(this).addClass('active');
				if($(this).text() == '2'){
					location.href = 'index1-2.html';
				} else if($(this).text() == '3'){
					location.href = 'index1-3.html';
				}
			});
		});
	});
	</script>
</head>
<body>
	<%@ include file="navbar.jsp" %>
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
<br>
<hr>

<!-- saeha code -->
<div class="main-thumbnail-part">
  	<div class="container-fluid">
		<div class="btn-group dropdown d-flex col-md-2">
			<a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown">
				플랫폼 선택하세요.</a>
  			<ul class="dropdown-menu center" aria-labelledby="dropdownMenuLink">
    			<li><a class="dropdown-item" href="#">PC</a></li>
    			<li><a class="dropdown-item" href="#">Play Station</a></li>
    			<li><a class="dropdown-item" href="#">Xbox</a></li>
    			<li><a class="dropdown-item" href="#">Switch</a></li>
			</ul>
		</div>
		<br><br>
	</div>

	<div class="container-fluid center">
		<div class="row"><div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc1.jpg" class="main-thumbnail-img">
					</div> 
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>1</b>
							<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Hot</span>
						</button><br>
						<div class="title"><h4>League of Legends</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">MOBA</span>
					</div>
				</div>
			</div>
			<div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc2.jpg" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>2</b>
							<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Hot</span>
						</button><br>
						<div class="title"><h4>Lostark</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">MMORPG</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">액션</span>
					</div>
				</div>
			</div>
			<div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc3.jpg" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>3</b>
							<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Hot</span>
						</button><br>
						<div class="title"><h4>Battle Grounds</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">배틀로얄</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">FPS</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row"><div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc4.png" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>4</b>
							<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Hot</span>
						</button><br>
						<div class="title"><h4>FIFA Online4</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">스포츠</span>
					</div>
				</div>
			</div>
			<div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc5.png" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>5</b>
							<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Up</span>
						</button><br>
						<div class="title"><h4>Valorant</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">FPS</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">슈팅</span>
					</div>
				</div>
			</div>
			<div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc6.jpg" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>6</b>
							<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Pop</span>
						</button><br>
						<div class="title"><h4>Sudden Attack</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">FPS</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">슈팅</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row"><div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc7.jpg" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>7</b>
						</button><br>
						<div class="title"><h4>Overwatch</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">FPS</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">액션</span>
					</div>
				</div>
			</div>
			<div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc8.jpg" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>8</b>
						</button><br>
						<div class="title"><h4>Maple Story</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">모험</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">판타지</span>
					</div>
				</div>
			</div>
			<div class="col-md-4"><div class="main-thumbnail-box">
					<div><img src="resources/images/pc/pc9.jpg" class="main-thumbnail-img">
					</div>
					<div class="main-thumbnail-description">
						<button class="btn btn-primary rank position-relative"><b>9</b>
						</button><br>
						<div class="title"><h4>Aion: Tower of Eternity</h4></div><br>
						<span class="badge hashtag btn-outline-primary rounded-outline-pill">MMORPG</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">판타지</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row">  
			<div class="paging" role="toolbar" aria-label="Toolbar with button groups">
				<ul class="btn-group col-xs-2" role="group" aria-label="First group">
					<li class="btn btn-outline-primary active">1</li>
					<li class="btn btn-outline-primary">2</li>
					<li class="btn btn-outline-primary">3</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="space" style="height:500"></div>
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>