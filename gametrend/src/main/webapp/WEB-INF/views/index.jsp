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
	<script src="resources/js/index.js"></script>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	
	<%@ include file="carousel.jsp" %>
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
								<span class="position-absolute top-10 start-100 translate-middle badge rounded-pill">Hot</span>
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