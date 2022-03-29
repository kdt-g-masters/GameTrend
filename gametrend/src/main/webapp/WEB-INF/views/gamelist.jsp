<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/jquery-3.6.0.min.js"></script>    
<script type="text/javascript">
	$(document).ready(function(){
		$("ul.dropdown-menu > li > a").on('click',function(i){
			$('#dropdownMenuLink').html($(this).text());
			$("ul.dropdown-menu > li > a").removeClass('active');
			$('.paging li').removeClass('active');
			$(this).addClass('active');
			$('.paging li:eq(0)').addClass('active');			
			
		}); 
		
		/* switch($("ul.dropdown-menu > li > a").text()){
		case "PC": 
			$.ajax()
			$("img.main-thumbnail-img").each(function(i){
				$(this).attr('src','images/pc/'+ pcImg[i]);
			});
			$(".title > h4").each(function(i){
				$(this).html(pcName[i]);
			});				
			$('.main-thumbnail-box').on('click',function(){
				location.href = '/sub';
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
				location.href = '/sub';
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
				location.href = '/sub';
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
					location.href = '/sub';
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
				location.href = '/sub';
			});
	} */
		$('.paging li').on('click',function(){
			$('.paging li').removeClass('active');
			$(this).addClass('active');
			location.href ='list?page='+$(this).text();
		});
	});//ready end
	</script>
	 <div class="main-thumbnail-part">
	  	<div class="container-fluid">
			<div class="btn-group dropdown d-flex col-md-2">
				<a class="btn btn-primary dropdown-toggle" href="" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown">
					PC</a>
	  			<ul class="dropdown-menu center" id="platform" aria-labelledby="dropdownMenuLink">
	    			<li value="pc" class="active" ><a class="dropdown-item" id="pc" href="<%=request.getContextPath() %>/list?page=1">PC</a></li>
	    			<li value="PlayStation"><a class="dropdown-item" id="PlayStation" href="#">Play Station</a></li>
	    			<li value="Xbox"><a class="dropdown-item" id="Xbox" href="#">Xbox</a></li>
	    			<li value="Switch"><a class="dropdown-item" id="Switch" href="#">Switch</a></li>
				</ul>
			</div>
			<br><br>
		</div>
	
		<div class="container-fluid center">
			<div class="row">
				<% int i = 0; %>
				<c:forEach items="${paginglist}" var="dto">
				<div class="col-md-4">
					<div class="main-thumbnail-box">
						<div><img src="resources/images/thumbnail/${dto.thumbnail}" class="main-thumbnail-img">
						</div> 
						<div class="main-thumbnail-description">
							<button class="btn btn-primary rank position-relative"><b>${dto.gameNo}</b>
							</button><br>
							<div class="title"><h4>${dto.name}</h4></div><br>
							<span class="badge hashtag btn-outline-primary rounded-outline-pill">${dto.genre1}</span>
						</div>
					</div>
				</div>
				<% ++i;
				if(i%3 == 0) { %>
			</div>
			<div class="row">
				 <%} %>
			</c:forEach>
			<!-- 페이지리스트 -->
				<div class="paging" role="toolbar" aria-label="Toolbar with button groups">
					<ul class="btn-group col-xs-2" role="group" aria-label="First group">
						<li class="btn btn-outline-primary">1</li>
						<li class="btn btn-outline-primary">2</li>
						<li class="btn btn-outline-primary">3</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="space" style="height:500"></div> 