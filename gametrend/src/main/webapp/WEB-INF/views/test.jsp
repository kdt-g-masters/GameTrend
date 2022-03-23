<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/gametrend/resources/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		alert("실험");
	});
</script>
</head>
<body>
	<h1>${ list }</h1>
	
	<c:forEach items="${ wishlist }" var="dto">
		<h1>${ dto.wishlistDTO.userId }</h1>
	</c:forEach>
</body>
</html>