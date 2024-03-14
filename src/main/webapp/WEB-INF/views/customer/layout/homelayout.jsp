<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Mojuri</title>
<link rel="stylesheet"
	href="${baseURL }/resources/homeassets/css/app.css" type="text/css" />
<link rel="stylesheet"
	href="${baseURL }/resources/homeassets/css/resposive.css" type="text/css" />

<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="${baseURL }/resources/media/favicon.png">
		
		<!-- Dependency Styles -->
		<link rel="stylesheet" href="${baseURL }/resources/libs/bootstrap/css/bootstrap.min.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/feather-font/css/iconfont.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/icomoon-font/css/icomoon.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/font-awesome/css/font-awesome.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/wpbingofont/css/wpbingofont.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/elegant-icons/css/elegant.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/slick/css/slick.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/slick/css/slick-theme.css" type="text/css">
		<link rel="stylesheet" href="${baseURL }/resources/libs/mmenu/css/mmenu.min.css" type="text/css">


<!-- Google Web Fonts -->
<style type="text/css">
	.form-login-register{
		display: block !important;
	}
</style>
</head>


<body>


		<div id="container">
		<div id="page" class="hfeed page-wrapper" >

		<tiles:insertAttribute name="menubar" />

		<tiles:insertAttribute name="body" />

		<tiles:insertAttribute name="footer" />
		
		</div>

	</div>


	<script src="${baseURL }/resources/libs/popper/js/popper.min.js"></script>
		<script src="${baseURL }/resources/libs/jquery/js/jquery.min.js"></script>
		<script src="${baseURL }/resources/libs/bootstrap/js/bootstrap.min.js"></script>
		<script src="${baseURL }/resources/libs/slick/js/slick.min.js"></script>
		<script src="${baseURL }/resources/libs/mmenu/js/jquery.mmenu.all.min.js"></script>
		
		<!-- Site Scripts -->
		<script src="${baseURL }/resources/homeassets/js/app.js"></script>

</body>

</html>