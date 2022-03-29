<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.inner{
    box-shadow: 0px -0.5px 50px #7244FE;
    background-color: #f3f1f5;
    padding: 2em;
}
.footer-logo{
    float: right;
    opacity: 50%;
}
.center{
    margin: 0 auto;
    text-align: center;
}
.copyright, .designed-by, .footer-logo{
    font-size: 0.75rem;
    line-height: 2;
}
</style>
</head>
<body>
<footer>
	<br>
	<div class="inner"><div class="footer-logo center"><img src="resources/images/logo.png" width="80px"></div><br>
	<div class="copyright center">Copyright<time>2022</time>. <a href='#'><b> G-Masters</b></a> all rights reserved.</div>
	<div class="designed-by center">Designed by <a href='https://getbootstrap.kr/docs/5.1/assets/brand/bootstrap-logo.svg'><b>Bootstrap and G-Masters</b></a></div>
	<br>
</footer>
</body>
</html>