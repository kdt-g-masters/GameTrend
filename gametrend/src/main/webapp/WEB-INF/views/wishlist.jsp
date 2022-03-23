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
	<script src="/gametrend/resources/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#pagingBtn2").on('click', function() {
				$.ajax({
					url: '/gametrend/wishlist/paging',
					data: {'userId': 'id2', 'page': '1'},
					type: 'get',
					dataType: 'json',
					success: function(data) {
						var wishlist = data
						var temp = "";
						var wishlistgame;
						temp += "<c:forEach items=" + wishlist + " var='" + wishlistgame + "'>";
						$.each(wishlist, function(key, value) {
							var gameDTOthumbnail = "${value.gameDTO.thumbnail}";
							var gameDTOname = "${value.gameDTO.name}";
							var gameDTOexplanation = "${value.gameDTO.explanation}";
							
							temp += "<li class='col'>";	  	
							temp += '<div class="card h-100">';
							temp += '<a class="close" href="#">';
							temp += '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">';
							temp += '<path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>';
							temp += '<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>';
							temp += '</svg>';					
							temp +=	'</a>';
							temp +=	'<a href="#"  class="none">';
							temp += "<img src='/resources/images/thumbnail/" + gameDTOthumbnail + "' class='card-img-top' alt='...'>";
							temp += '<div class="card-body">';
							temp += '<h5 class="card-title"><b>' + gameDTOname + '</b></h5>';
							temp += '<p class="card-text subtext">' + gameDTOexplanation + '</p>';
							temp += '</div>';
							temp += '</div>';
							temp += '</a>';
							temp += '</li>';																								
							
						}); // each end
						temp += '</c:forEach>';
						$('#change').html(temp);
					}, // success end
					error: function(request, status, error) {
						$('#change').html("<h3>데이터가 존재하지 않습니다.</h3>");
					}
				}); // ajax end
			}); // on end
		}); // ready end
	</script>
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
		
		<ul class="row row-cols-1 row-cols-md-3 g-4 row list-unstyled" id="change">
		<c:forEach items="${ wishlist }" var="wishlistgame">
		  <li class="col">		  	
		    <div class="card h-100">
				<a class="close" href="#">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="#7F7C82" id="close">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>					
				</a>
				<a href="#"  class="none">				
		      <img src="/resources/images/thumbnail/${ wishlistgame.gameDTO.thumbnail }" class="card-img-top" alt="thumbnail">
		      
		      <div class="card-body">
		        <h5 class="card-title"><b>${ wishlistgame.gameDTO.name }</b></h5>
		        <p class="card-text subtext">${ wishlistgame.gameDTO.explanation }</p>
		      </div>
		    </div>
		    </a>
		  </li>
		  </c:forEach>		  
		</div>
	</ul>

		<div class="row center">  
			<div class="paging" role="toolbar" aria-label="Toolbar with button groups">
				<ul class="btn-group col-xs-2" role="group" aria-label="First group">
					<li class="btn btn-outline-primary active" id="pagingBtn1">1</li>
					<li class="btn btn-outline-primary" id="pagingBtn2">2</li>
					<li class="btn btn-outline-primary" id="pagingBtn3">3</li>
				</ul>
			</div>
		</div>
<div class="space" style="height:500"></div>
<%@ include file="footer.jsp" %>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>