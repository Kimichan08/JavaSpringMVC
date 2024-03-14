<!-- [ navigation menu ] start -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<nav class="pcoded-navbar  ">
	<div class="navbar-wrapper  ">
		<div class="navbar-content scroll-div ">

			<div class="">
				<div class="main-menu-header">
					<img class="img-radius"
						src="${baseURL }/resources/assets/images/user/kimichan.jpg"
						alt="User-Profile-Image">
					<div class="user-details">
						<span>Kimichan</span>
					</div>
				</div>
			</div>

			<ul class="nav pcoded-inner-navbar ">
				<li class="nav-item pcoded-menu-caption"><label>Navigation</label>
				</li>
				<li class="nav-item pcoded-hasmenu"><a href="#!"
					class="nav-link "><span class="pcoded-micon"><i
							class="feather icon-file-text"></i></span><span class="pcoded-mtext">Category</span></a>
					<ul class="pcoded-submenu">
						<li><a href="${baseURL }/admin/danh-muc-san-pham"
							target="_self">List Category</a></li>
						<li><a href="${baseURL }/admin/them-moi-danh-muc"
							target="_self">Add Category</a></li>
					</ul></li>
				<li class="nav-item pcoded-hasmenu"><a href="#!"
					class="nav-link "><span class="pcoded-micon"><i
							class="feather icon-file-text"></i></span><span class="pcoded-mtext">Product</span></a>
					<ul class="pcoded-submenu">
						<li><a href="${baseURL }/admin/danh-sach-san-pham"
							target="_self">List Product</a></li>
						<li><a href="${baseURL }/admin/them-moi-san-pham"
							target="_self">Add Product</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
<header
	class="navbar pcoded-header navbar-expand-lg navbar-light header-dark">

	<div class="m-header">
		<a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
		<a href="#!" class="b-brand"> <!-- ========   change your logo hear   ============ -->
			<img src="${baseURL }/resources/assets/images/logo.png" alt=""
			class="logo"> <img
			src="${baseURL }/resources/assets/images/logo-icon.png" alt=""
			class="logo-thumb">
		</a> <a href="#!" class="mob-toggler"> <i
			class="feather icon-more-vertical"></i>
		</a>
	</div>
	<div class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto">
		</ul>
		<ul class="navbar-nav ml-auto">
			<li>
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown"> <i
						class="icon feather icon-bell"></i>
					</a>
				</div>
			</li>
			<li>
				<div class="dropdown drp-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i
						class="feather icon-user"></i>
					</a>
					<div class="dropdown-menu dropdown-menu-right profile-notification">
						<div class="pro-head">
							<img src="${baseURL }/resources/assets/images/user/kimichan.jpg"
								class="img-radius" alt="User-Profile-Image"> <span>Kimichan</span>

						</div>
						<ul class="pro-body">
							<li><a href="user-profile.html" class="dropdown-item"><i
									class="feather icon-user"></i> Profile</a></li>
							<li><a href="<c:url value='/admin/logout' />"
								class="dropdown-item" title="Logout"> <i
									class="feather icon-log-out"></i> Logout
							</a></li>

						</ul>
					</div>
				</div>
			</li>
		</ul>
	</div>


</header>
