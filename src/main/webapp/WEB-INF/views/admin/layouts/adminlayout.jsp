<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Home</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/css/bootstrap.min.css" />

<!-- Favicon icon -->
<link rel="icon" href="${baseURL }/resources/assets/images/favicon.icon"
	type="image/x-icon">

<!-- vendor css -->
<link rel="stylesheet" href="${baseURL }/resources/assets/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>

	<div id="container">

		<tiles:insertAttribute name="menubar" />

		<tiles:insertAttribute name="body" />

	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"></script>
	<script src="${baseURL }/resources/assets/js/vendor-all.min.js"></script>
	<script src="${baseURL }/resources/assets/js/pcoded.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.min.js"></script>

</body>

</html>