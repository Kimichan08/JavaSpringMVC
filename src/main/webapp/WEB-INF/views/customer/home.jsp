<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />
<div id="site-main" class="site-main">
	<div id="main-content" class="main-content">
		<div id="primary" class="content-area">
			<div id="content" class="site-content" role="main">
				<section class="section">
					<!-- Block Sliders (Layout 2) -->
					<div class="block block-sliders layout-2 auto-height nav-center">
						<div class="slick-sliders" data-autoplay="true" data-dots="true"
							data-nav="true" data-columns4="1" data-columns3="1"
							data-columns2="1" data-columns1="1" data-columns1440="1"
							data-columns="1">
							<div class="item slick-slide">
								<div class="item-content">
									<div class="content-image">
										<img width="1920" height="1080"
											src="${baseURL }/resources/media/slider/2-1.jpg"
											alt="Image Slider">
									</div>
									<div
										class="item-info horizontal-center vertical-middle text-center">
										<div class="content">
											<div class="subtitle-slider">TRANSPARENT. HONEST.
												REVOLUTIONARY.</div>
											<h2 class="title-slider">Spring Collection</h2>
											<a class="button button-slider button-black"
												href="shop">SHOP NOW</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item slick-slide">
								<div class="item-content">
									<div class="content-image">
										<img width="1920" height="1080"
											src="${baseURL }/resources/media/slider/2-2.jpg"
											alt="Image Slider">
									</div>
									<div
										class="item-info horizontal-center vertical-middle text-center">
										<div class="content">
											<div class="subtitle-slider">30% OFF ALL ORDER</div>
											<h2 class="title-slider">New Arrivals</h2>
											<a class="button button-slider button-black"
												href="shop">SHOP NOW</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item slick-slide">
								<div class="item-content">
									<div class="content-image">
										<img width="1920" height="1080"
											src="${baseURL }/resources/media/slider/2-3.jpg"
											alt="Image Slider">
									</div>
									<div
										class="item-info horizontal-center vertical-middle text-center">
										<div class="content">
											<div class="subtitle-slider">30% OFF ALL ORDER</div>
											<h2 class="title-slider">Oh, Hello Newness!</h2>
											<a class="button button-slider button-black"
												href="shop">SHOP NOW</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="section section-padding m-b-70">
					<div class="section-container">
						<!-- Block Intro (Layout 2) -->
						<div class="block block-intro layout-2 text-center">
							<div class="block-widget-wrap">
								<div class="intro-image animation-horizontal">
									<img width="120" height="107"
										src="${baseURL }/resources/media/banner/intro-2.png" alt="">
								</div>
								<h2 class="intro-title">MOJURI JEWERLY</h2>
								<div class="intro-text">To provide the best designer
									jewelry at a reasonable price, while revolutionizing the
									jewelry industry with transparency and honesty.</div>
							</div>
						</div>
					</div>
				</section>

				<section class="section section-padding m-b-70">
					<div class="section-container">
						<!-- Block Banners (Layout 3) -->
						<div class="block block-banners layout-3 banners-effect">
							<div class="block-widget-wrap">
								<div class="row">
									<div class="section-column left">
										<div class="section-column-inner">
											<div class="block-widget-banner layout-3">
												<div class="bg-banner">
													<div class="banner-wrapper banners">
														<div class="banner-image">
															<a href="shop-grid-left.html"> <img width="527"
																height="737"
																src="${baseURL }/resources/media/banner/banner-2-1.jpg"
																alt="Banner Image">
															</a>
														</div>
														<div class="banner-wrapper-infor">
															<div class="info">
																<div class="content">
																	<h3 class="title-banner">Curated by color</h3>
																	<div class="banner-image-description">Brighten up
																		your look with vibrant gemstone jewelry.</div>
																	<a class="button button-outline"
																		href="shop">SHOP NOW</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="section-column right">
										<div class="section-column-inner">
											<div class="block-widget-banner layout-3">
												<div class="bg-banner">
													<div class="banner-wrapper banners">
														<div class="banner-image">
															<a href="shop-grid-left.html"> <img width="527"
																height="600"
																src="${baseURL }/resources/media/banner/banner-2-2.jpg"
																alt="Banner Image">
															</a>
														</div>
														<div class="banner-wrapper-infor">
															<div class="info">
																<div class="content">
																	<h3 class="title-banner">Make the connection</h3>
																	<div class="banner-image-description">Brighten up
																		your look with vibrant gemstone jewelry.</div>
																	<a class="button button-outline"
																		href="shop">SHOP NOW</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="block-widget-banner layout-3">
												<div class="bg-banner">
													<div class="banner-wrapper banners">
														<div class="banner-image">
															<a href="shop-grid-left.html"> <img width="411"
																height="438"
																src="${baseURL }/resources/media/banner/banner-2-3.jpg"
																alt="Banner Image">
															</a>
														</div>
														<div class="banner-wrapper-infor">
															<div class="info">
																<div class="content">
																	<h3 class="title-banner">Soak up the savings</h3>
																	<div class="banner-image-description">Brighten up
																		your look with vibrant gemstone jewelry.</div>
																	<a class="button button-outline"
																		href="shop">SHOP NOW</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section
					class="section section-padding background-img bg-img-3 p-t-60 p-b-70 m-b-70">
					<div class="section-container">
						<!-- Block Products (Layout 2) -->
						<div class="block block-products layout-2 slider">
							<div class="block-widget-wrap">
								<div class="block-title">
									<h2 style="color: #cb8161" class="text-center text-uppercase">Trending
										Products</h2>
								</div>
								<div class="block-content">
									<div class="content-product-list slick-wrap">
										<div class="slick-sliders products-list grid"
											data-slidestoscroll="true" data-dots="false" data-nav="1"
											data-columns4="1" data-columns3="2" data-columns2="2"
											data-columns1="3" data-columns1440="4" data-columns="4">
											<c:forEach items="${listProduct}" var="p">

												<div class="item-product slick-slide">
													<div class="items">
														<div class="products-entry clearfix product-wapper">
															<div class="products-thumb">
																<div class="product-lable">
																	<div class="hot">Hot</div>
																</div>
																<div class="product-thumb-hover">
																	<a href="shop-details.html"> <img width="600"
																		height="600" src="${baseURL}/uploads/${p.image}"
																		class="post-image" alt=""> <img width="600"
																		height="600"
																		src="${baseURL}/uploads/${p.image}"
																		class="hover-image back" alt="">
																	</a>
																</div>
																<div class="product-button">
																	<div class="btn-add-to-cart" data-title="Add to cart">
																		<a rel="nofollow" href="cart" class="product-btn button">Add
																			to cart</a>
																	</div>
																	<span class="product-quickview" data-title="Quick View">
																		<a href="detail/${p.proId}" class="quickview quickview-button">Quick
																			View <i class="icon-search"></i>
																	</a>
																	</span>
																</div>
															</div>
															<div class="products-content">
																<div class="contents">
																	<h3 class="product-title">
																		<a href="detail/${p.proId}">${p.proName}</a>
																	</h3>
																	<span class="price">$${p.price },00</span>
																</div>
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
					</div>
				</section>

				<section class="section section-padding m-b-70">
					<div class="section-container">
						<!-- Block Intro (Layout 3) -->
						<div class="block block-intro layout-3">
							<div class="block-widget-wrap">
								<div class="row">
									<div class="section-column left">
										<div class="intro-wrap">
											<h2 class="intro-title">
												Jewellery Online<br> at the Most Affordable Price
											</h2>
											<div class="intro-item">Behind our 15-year success is
												our panel of expert jewellers who have been scouring the
												entire globe in pursuit of the best and most stunning
												jewellery that can be offered at affordable price for you.</div>
											<div class="intro-item">Visit our online catalogue and
												shop for the finest earrings, rings, bracelets, watches,
												silver, and the most luxurious gemstones.</div>
											<div class="intro-btn">
												<a href="shop-grid-left.html"
													class="button button-outline animation-horizontal">Read
													more</a>
											</div>
										</div>
									</div>
									<div
										class="section-column right animation-horizontal hover-opacity">
										<img width="690" height="498"
											src="${baseURL }/resources/media/banner/intro-2.jpg"
											alt="intro">
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="section section-padding top-border p-t-70 m-b-70">
					<div class="section-container">
						<!-- Block Product Categories -->
						<div class="block block-product-cats slider round-border">
							<div class="block-widget-wrap">
								<div class="block-title">
									<h2 style="color: #cb8161" class="text-center text-uppercase">Top
										Categories</h2>
								</div>
								<div class="block-content">
									<div class="product-cats-list slick-wrap">
										<div class="slick-sliders content-category" data-dots="0"
											data-slidestoscroll="true" data-nav="1" data-columns4="2"
											data-columns3="3" data-columns2="3" data-columns1="5"
											data-columns1440="5" data-columns="5">
											<c:forEach items="${listCategory}" var="c">
												<div class="item item-product-cat slick-slide">
													<div class="item-product-cat-content">
														<div class="product-cat-content-info">
															<h2 class="item-title font-weight-bold">
																<a href="shop-grid-left.html">${c.cateName}</a>
															</h2>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="section section-padding top-border p-t-70 m-b-70">
					<div class="section-container">
						<!-- Block Testimonial -->
						<div class="block block-testimonial layout-2">
							<div class="block-widget-wrap">
								<div class="block-title text-center text-uppercase">
									<h2 class="m-3" style="color: #cb8161">Happy Clients Says</h2>
								</div>
								<div class="block-content mt-3">
									<div class="testimonial-wrap slick-wrap">
										<div class="slick-sliders" data-slidestoscroll="true"
											data-slidestoscroll="true" data-nav="1" data-dots="0"
											data-columns4="1" data-columns3="1" data-columns2="1"
											data-columns1="2" data-columns="3">
											<div class="testimonial-content">
												<div class="item">
													<div class="testimonial-item">

														<h2 class="testimonial-title mt-3">Amazing piece of
															history</h2>
														<div class="testimonial-excerpt">Blood bank canine
															teeth larynx occupational therapist oncologist optician
															plaque spinal tap stat strep...</div>
													</div>
													<div class="testimonial-image image-position-top">
														<div class="thumbnail">
															<img width="110" height="110"
																src="${baseURL }/resources/media/testimonial/1.jpg"
																alt="">
														</div>
														<div class="testimonial-info">
															<h2 class="testimonial-customer-name">Robet Smith</h2>
														</div>
													</div>
												</div>
											</div>
											<div class="testimonial-content">
												<div class="item">
													<div class="testimonial-item">
														<h2 class="testimonial-title">Fabulous Grounds</h2>
														<div class="testimonial-excerpt">Blood bank canine
															teeth larynx occupational therapist oncologist optician
															plaque spinal tap stat strep...</div>
													</div>
													<div class="testimonial-image image-position-top">
														<div class="thumbnail">
															<img width="110" height="110"
																src="${baseURL }/resources/media/testimonial/2.jpg"
																alt="">
														</div>
														<div class="testimonial-info">
															<h2 class="testimonial-customer-name">Saitama One</h2>
														</div>
													</div>
												</div>
											</div>
											<div class="testimonial-content">
												<div class="item">
													<div class="testimonial-item">
														<h2 class="testimonial-title">Great vineyard tour and
															tasting!</h2>
														<div class="testimonial-excerpt">Blood bank canine
															teeth larynx occupational therapist oncologist optician
															plaque spinal tap stat strep...</div>
													</div>
													<div class="testimonial-image image-position-top">
														<div class="thumbnail">
															<img width="110" height="110"
																src="${baseURL }/resources/media/testimonial/3.jpg"
																alt="">
														</div>
														<div class="testimonial-info">
															<h2 class="testimonial-customer-name">Sara Colinton</h2>
														</div>
													</div>
												</div>
											</div>
											<div class="testimonial-content">
												<div class="item">
													<div class="testimonial-item">
														<h2 class="testimonial-title">Stunning Design</h2>
														<div class="testimonial-excerpt">Blood bank canine
															teeth larynx occupational therapist oncologist optician
															plaque spinal tap stat strep...</div>
													</div>
													<div class="testimonial-image image-position-top">
														<div class="thumbnail">
															<img width="110" height="110"
																src="${baseURL }/resources/media/testimonial/4.jpg"
																alt="">
														</div>
														<div class="testimonial-info">
															<h2 class="testimonial-customer-name">Shetty Jamie</h2>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="section m-b-0">
					<!-- Block Instagram -->
					<div>
						<h3 class="text-center" style="color: #cb8161">BLOCK
							INSTAGRAM</h3>
					</div>
					<div class="block block-instagram slider no-space">
						<div class="slick-wrap">
							<div class="slick-sliders fullwidth" data-dots="false"
								data-item_row="1" data-nav="false" data-columns4="1"
								data-columns3="2" data-columns2="3" data-columns1="4"
								data-columns="5">
								<div class="item slick-slide">
									<a class="instagram" href="#"> <img width="450"
										height="450"
										src="${baseURL }/resources/media/banner/instagram-1.jpg"
										alt="Image Slider">
									</a>
								</div>
								<div class="item slick-slide">
									<a class="instagram" href="#"> <img width="450"
										height="450"
										src="${baseURL }/resources/media/banner/instagram-2.jpg"
										alt="Image Slider">
									</a>
								</div>
								<div class="item slick-slide">
									<a class="instagram" href="#"> <img width="450"
										height="450"
										src="${baseURL }/resources/media/banner/instagram-3.jpg"
										alt="Image Slider">
									</a>
								</div>
								<div class="item slick-slide">
									<a class="instagram" href="#"> <img width="450"
										height="450"
										src="${baseURL }/resources/media/banner/instagram-4.jpg"
										alt="Image Slider">
									</a>
								</div>
								<div class="item slick-slide">
									<a class="instagram" href="#"> <img width="450"
										height="450"
										src="${baseURL }/resources/media/banner/instagram-5.jpg"
										alt="Image Slider">
									</a>
								</div>
								<div class="item slick-slide">
									<a class="instagram" href="#"> <img width="450"
										height="450"
										src="${baseURL }/resources/media/banner/instagram-6.jpg"
										alt="Image Slider">
									</a>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<!-- #content -->
		</div>
		<!-- #primary -->
	</div>
	<!-- #main-content -->
</div>