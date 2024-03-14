<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />
<style>
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	right: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

button {
	background-color: #ff9999;
	color: white;
	padding: 10px 15px;
	margin: 5px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.yesno {
	display: block;
	width: 100%;
	margin-top: 5px;
}

.yesno:hover {
	background-color: #ffcccc;
}
</style>
<header id="site-header" class="site-header header-v2">
	<div class="header-desktop">
		<div class="header-wrapper">
			<div class="section-padding">
				<div class="section-container large p-l-r">
					<div class="row">
						<div
							class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-12 header-left">
							<div class="header-page-link">
								<!-- Search -->
								<div class="search-box">
									<div class="search-toggle">
										<i class="icon-search"></i>
									</div>
								</div>
							</div>
						</div>

						<div
							class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 header-center">
							<div class="site-navigation left">
								<nav id="main-navigation">
									<ul id="menu-main-menu" class="menu">
										<li
											class="level-0 menu-item  ">
											<a href="home">Home</a>
										</li>
										<li class="level-0 menu-item "><a
											href="shop">Shop</a>
									</ul>
								</nav>
							</div>

							<div class="site-logo">
								<a href="home"> <img width="400" height="79"
									src="${baseURL }/resources/media/logo.png"
									alt="Mojuri – Jewelry Store HTML Template" />
								</a>
							</div>

							<div class="site-navigation right">
								<nav id="main-navigation">
									<ul id="menu-main-menu" class="menu">
										<li
											class="level-0 menu-item mega-menu mega-menu-fullwidth align-center">
											<a href="blog"><span
												class="menu-item-text">Blog</span></a>
										</li>
										<li class="level-0 menu-item"><a href="contact"><span
												class="menu-item-text">Contact</span></a></li>
									</ul>
								</nav>
							</div>
						</div>

						<div
							class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-12 header-right">
							<div class="header-page-link">
								<!-- Login -->

								<!-- <div class="login-header icon">
									<a class="" href="logincus" style="text-decoration: none"><i
										class="icon-user"></i></a>

								</div> -->

								<c:choose>
									<c:when test="${not empty user}">
										<img
											src="https://i.pinimg.com/564x/ec/82/5c/ec825c98aee27617b9e7bd4f57d16dbd.jpg"
											class="shopping-cart mr-3"
											style="width: 45px; height: 45px; border-radius: 50%; cursor: pointer;"
											id="logoutLink">
										<div id="logoutModal" class="modal">
											<div class="modal-content">
												<span class="close">&times;</span>
												<p class="text-center text-uppercase">Do you want to logout?</p>
												<form action="<c:url value="/logoutcus"/>" method="post">
													<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}" />
													<button type="submit" id="confirmLogout" class="yesno">Yes</button>
												</form>
												<button id="cancelLogout" class="yesno">No</button>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="login-header icon">
											<a class="" href="logincus" style="text-decoration: none"><i
												class="icon-user"></i></a>
												</div>
									</c:otherwise>
								</c:choose>


								<!-- Cart -->
								<div class="mojuri-topcart dropdown light">
									<div class=" mini-cart top-cart">
										<div class="remove-cart-shadow"></div>
										<a class=" cart-icon" href="cart" role="button"
											 aria-haspopup="true" 
											aria-expanded="false">
											<div class="icons-cart">
												<i class="icon-large-paper-bag"></i>
											</div>
										</a>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<script>
	document.getElementById('logoutLink').addEventListener('click', function() {
		document.getElementById('logoutModal').style.display = 'block';
	});

	document.getElementById('cancelLogout').addEventListener('click',
			function() {
				document.getElementById('logoutModal').style.display = 'none';
			});

	document.getElementById('confirmLogout').addEventListener('click',
			function() {
				window.location.href = '/logout';
			});

	window.onclick = function(event) {
		var modal = document.getElementById('logoutModal');
		if (event.target == modal) {
			modal.style.display = 'none';
		}
	};

	document.getElementsByClassName('close')[0].addEventListener('click',
			function() {
				document.getElementById('logoutModal').style.display = 'none';
			});
</script>