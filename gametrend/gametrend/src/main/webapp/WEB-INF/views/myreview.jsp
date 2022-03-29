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
	<link rel="stylesheet" href="css/index.css"/>
	<script src="resources/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){

	}
</script>
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
	main {
		width: 60%;
		margin: 200px auto;
	}
</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<main>
	  <h2 class="pt-5 pb-5" style="display: inline-block">나의 리뷰</h2>	
	  <div class="row mb-2">
	    <div class="col-md-6">
	      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        <div class="col p-4 d-flex flex-column position-static">
	          <strong class="d-inline-block mb-2 text-primary">World</strong>
	          <h3 class="mb-0">Featured post</h3>
	          <div class="mb-1 text-muted">Nov 12</div>
	          <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
	          <a href="#" class="stretched-link">Continue reading</a>
	        </div>
	        <div class="col-auto d-none d-lg-block">
	          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
	
	        </div>
	      </div>
	    </div>
	    <div class="col-md-6">
	      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        <div class="col p-4 d-flex flex-column position-static">
	          <strong class="d-inline-block mb-2 text-success">Design</strong>
	          <h3 class="mb-0">Post title</h3>
	          <div class="mb-1 text-muted">Nov 11</div>
	          <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
	          <a href="#" class="stretched-link">Continue reading</a>
	        </div>
	        <div class="col-auto d-none d-lg-block">
	          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
	
	        </div>
	      </div>
	    </div>
	  </div>
	</main>
	<div class="space" style="height:500"></div>
	<%@ include file="footer.jsp" %>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>