<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />
<div id="content" class="site-content" role="main">
	<div class="section-padding">
		<div class="section-container p-l-r">
			<div class="row">
				<div
					class="col-xl-3 col-lg-3 col-md-12 col-12 sidebar left-sidebar md-b-50 p-t-10">
					<!-- Block Post Search -->
					<div class="block block-post-search">
						<div class="block-title">
							<h2>Search</h2>
						</div>
						<div class="block-content">
							<form class="search-from" action="shop">
								<input type="text" name="keyword" placeholder="Search...">
								<button class="btn" type="submit">
									<i class="icon-search"></i>
								</button>
							</form>
						</div>
					</div>
					<!-- Block Product Categories -->
					<div class="block block-product-cats">
						<div class="block-title">
							<h2>Categories</h2>
						</div>
						<div class="block-content">
							<div class="product-cats-list">
								<ul>
									<c:forEach items="${listCategory }" var="c">
										<li><a href="${baseURL }/category/${c.cateId}">${c.cateName } </a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<!-- Block Product Filter -->
					<div class="block block-product-filter clearfix">
						<div class="block-title">
							<h2>Brands</h2>
						</div>
						<div class="block-content">
							<ul class="filter-items image">
								<li><a href="shop-grid-left.html"><span><img
											src="${baseURL }/resources/media/brand/1.jpg" alt="Brand"></span></a></li>
								<li><a href="shop-grid-left.html"><span><img
											src="${baseURL }/resources/media/brand/2.jpg" alt="Brand"></span></a></li>
								<li><a href="shop-grid-left.html"><span><img
											src="${baseURL }/resources/media/brand/3.jpg" alt="Brand"></span></a></li>
								<li><a href="shop-grid-left.html"><span><img
											src="${baseURL }/resources/media/brand/4.jpg" alt="Brand"></span></a></li>
								<li><a href="shop-grid-left.html"><span><img
											src="${baseURL }/resources/media/brand/5.jpg" alt="Brand"></span></a></li>
							</ul>
						</div>
					</div>

					<!-- Block Products -->
					<div class="block block-products"></div>
				</div>

				<div class="col-xl-9 col-lg-9 col-md-12 col-12">

					<div class="tab-content">
						<div class="tab-pane fade show active" id="layout-grid"
							role="tabpanel">
							<div class="products-list grid">
								<div class="row">
									<c:forEach items="${listPage}" var="p">
										<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
											<div class="products-entry clearfix product-wapper">
												<div class="products-thumb">
													<div class="product-lable">
														<div class="hot">Hot</div>
													</div>
													<div class="product-thumb-hover">
														<a href="shop-details.html"> <img width="600"
															height="600" src="${baseURL}/uploads/${p.image}"
															class="post-image" alt=""> <img width="600"
															height="600" src="${baseURL}/uploads/${p.image}"
															class="hover-image back" alt="">
														</a>
													</div>
													<div class="product-button">
														<div class="btn-add-to-cart" data-title="Add to cart">
															<a rel="nofollow" href="cart" class="product-btn button">Add
																to cart</a>
														</div>

													</div>
												</div>
												<div class="products-content">
													<div class="contents text-center">
														<h3 class="product-title">
															<a href="detail/${p.proId}">${p.proName}</a>
														</h3>
														<span class="price">$${p.price},00</span>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>

				<nav class="pagination">
					<ul class="pagination">
						<c:choose>
							<c:when test="${(empty(param.keyword))}">
								<li class="page-item"><a class="page-link"
									href="?pageno=${totalPage-1}" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<c:forEach var="i" begin="1" end="${totalPage}">
									<li class="page-item"><a class="page-link"
										href="?pageno=${i}">${i}</a></li>
								</c:forEach>
								<li class="page-item"><a class="page-link"
									href="?pageno=${totalPage}" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>

							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="?pageno=${totalPage}" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<c:forEach var="i" begin="1" end="${totalPage}">
									<li class="page-item"><a class="page-link"
										href="?pageno=${i}&keyword=${param.keyword}">${i}</a></li>
								</c:forEach>
								<li class="page-item"><a class="page-link"
									href="?pageno=${totalPage}" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
</div>