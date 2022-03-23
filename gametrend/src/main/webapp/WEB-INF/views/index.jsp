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
<!-- 	<script type="text/javascript">
	$(document).ready(function(){
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
	});//ready end
	</script> -->
</head>
<body>
	<!-- navbar -->
	<%@ include file="include/navbar.jsp" %>
	<!-- 슬라이드 이미지 부분-->
	<%@ include file="include/carousel.jsp" %>
	<br><hr>
	<%@ include file="include/gamelist.jsp" %>
	<!-- saeha code -->
<%-- 	<div class="main-thumbnail-part">
	  	<div class="container-fluid">
			<div class="btn-group dropdown d-flex col-md-2">
				<a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown">
					PC</a>
	  			<ul class="dropdown-menu center" id="platform" aria-labelledby="dropdownMenuLink">
	    			<li value="pc" class="active" ><a class="dropdown-item" id="pc" href="list/${param.platform}">PC</a></li>
	    			<li value="PlayStation"><a class="dropdown-item" id="PlayStation" href="list/${param.platform} }">Play Station</a></li>
	    			<li value="Xbox"><a class="dropdown-item" id="Xbox" href="list/${param.platform}">Xbox</a></li>
	    			<li value="Switch"><a class="dropdown-item" id="Switch" href="#">Switch</a></li>
				</ul>
			</div>
			<br><br>
		</div>
	
		<div class="container-fluid center">
			<div class="row"><div class="col-md-4"><div class="main-thumbnail-box">
						<div><img src="resources/images/thumbnail/1.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/2.jpg" class="main-thumbnail-img">
						</div>
						<div class="main-thumbnail-description">
							<button class="btn btn-primary rank position-relative"><b>2</b>
								<!-- <span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Hot</span> -->
							</button><br>
							<div class="title"><h4>Lostark</h4></div><br>
							<span class="badge hashtag btn-outline-primary rounded-outline-pill">MMORPG</span>&nbsp;<span class="badge hashtag btn-outline-primary rounded-outline-pill">액션</span>
						</div>
					</div>
				</div>
				<div class="col-md-4"><div class="main-thumbnail-box">
						<div><img src="resources/images/thumbnail/3.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/4.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/5.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/6.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/7.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/8.jpg" class="main-thumbnail-img">
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
						<div><img src="resources/images/thumbnail/9.jpg" class="main-thumbnail-img">
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
			<!-- 페이지리스트 -->
			<%@ include file="include/paging.jsp"%>
				<!-- <div class="paging" role="toolbar" aria-label="Toolbar with button groups">
					<ul class="btn-group col-xs-2" role="group" aria-label="First group">
						<li class="btn btn-outline-primary active">1</li>
						<li class="btn btn-outline-primary">2</li>
						<li class="btn btn-outline-primary">3</li>
					</ul>
				</div> -->
			</div>
		</div>
	</div>
	<div class="space" style="height:500"></div> --%>
	
	<!-- footer -->
	<%@ include file="include/footer.jsp" %>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>