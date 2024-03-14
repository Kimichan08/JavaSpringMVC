<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<title>LogIn</title>
<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="" />
<meta name="keywords" content="">
<meta name="author" content="Phoenixcoded" />
<!-- Favicon icon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/assets/images/favicon.ico"
	type="image/x-icon">

<!-- vendor css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/style.css">




</head>

<!-- [ auth-signin ] start -->
<div class="auth-wrapper">
	<div class="auth-content text-center">
		<img
			src="${pageContext.request.contextPath}/resources/assets/images/logo.png"
			alt="" class="img-fluid mb-4">
		<div class="card borderless">
			<div class="row align-items-center ">
				<div class="col-md-12">
					<div class="card-body">
						<h4 class="mb-3 f-w-400">Signin</h4>
						<span class="text-danger">${msg}</span>
						<hr>
						<form action="<c:url value='loginProcess' />" method='POST'>
							<div class="form-group mb-3">
								<input type="text" class="form-control" name="username" id=""
									placeholder="User Name">
							</div>
							<div class="form-group mb-4">
								<input type="password" class="form-control" name="password"
									id="Password" placeholder="Password">
							</div>
							<button class="btn btn-block btn-primary mb-4">Signin</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/vendor-all.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/js/plugins/bootstrap.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/assets/js/pcoded.min.js"></script>

</body>

</html>
