<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<div id="content" class="site-content" role="main">
	<div class="shop-details zoom" data-product_layout_thumb="scroll"
		data-zoom_scroll="true" data-zoom_contain_lens="true"
		data-zoomtype="inner" data-lenssize="200" data-lensshape="square"
		data-lensborder="" data-bordersize="2" data-bordercolour="#f9b61e"
		data-popup="false">
		<div class="product-top-info">
			<div class="section-padding">
				<div class="section-container p-l-r">
					<div class="row">

						<div class="product-images col-lg-7 col-md-12 col-12">
							<div class="row">

								<div class="col-md-2">
									<div class="content-thumbnail-scroll"></div>
								</div>
								<div class="col-md-10">
									<div class="scroll-image main-image">

										<img width="900" height="900"
											src="${baseURL}/uploads/${product.image}" alt="" title="">

									</div>
								</div>
							</div>
						</div>

						<div class="product-info col-lg-5 col-md-12 col-12 ">
							<h1 class="title">${product.proName}</h1>
							<span class="price"> <span>$${product.price},00</span>
							</span>
							<div class="description">
								<p>${product.descriptions}</p>
							</div>
							<div class="variations">
								<table cellspacing="0">
								</table>
							</div>
							<div class="buttons">
								<div class="add-to-cart-wrap">
									<div class="quantity">
										<button type="button" class="plus">+</button>
										<input type="number" class="qty" step="1" min="0" max=""
											name="quantity" value="1" title="Qty" size="4" placeholder=""
											inputmode="numeric" autocomplete="off">
										<button type="button" class="minus">-</button>
									</div>
									<form action="${baseURL}/cart" method="post"
										class="btn-add-to-cart" style="background:#ff9999!important;line-height: 20px!important">
										<input type="hidden" name="productId" value="${product.proId}">
										<button type="submit" tabindex="0">Add to cart</button>
									</form>
								</div>
								<div class="btn-quick-buy" data-title="Wishlist">
									<button class="product-btn">Buy It Now</button>
								</div>


							</div>
							<div class="product-meta">
								<span class="sku-wrapper">SKU: <span class="sku">D2300-3-2-2</span></span>
								<span class="posted-in">Category: <a
									href="shop-grid-left.html" rel="tag">Bracelets</a></span> <span
									class="tagged-as">Tags: <a href="shop-grid-left.html"
									rel="tag">Hot</a>, <a href="shop-grid-left.html" rel="tag">Trend</a></span>
							</div>
							<div class="social-share">
								<a href="#" title="Facebook" class="share-facebook"
									target="_blank"><i class="fa fa-facebook"></i>Facebook</a> <a
									href="#" title="Twitter" class="share-twitter"><i
									class="fa fa-twitter"></i>Twitter</a> <a href="#" title="Pinterest"
									class="share-pinterest"><i class="fa fa-pinterest"></i>Pinterest</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="product-tabs">
			<div class="section-padding">
				<div class="section-container p-l-r">
					<div class="product-tabs-wrap">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#description" role="tab">Description</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#additional-information" role="tab">Additional
									information</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#reviews" role="tab">Reviews </a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="description"
								role="tabpanel">
								<p>${product.descriptions}</p>
							</div>
							<div class="tab-pane fade" id="additional-information"
								role="tabpanel">
								<table class="product-attributes">
									<tbody>
										<tr class="attribute-item">
											<th class="attribute-label">Color</th>
											<td class="attribute-value">Antique, Chestnut, Grullo</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="tab-pane fade" id="reviews" role="tabpanel">
								<div id="reviews" class="product-reviews">
									<div id="comments">
										<h2 class="reviews-title">
											1 review for <span>Bora Armchair</span>
										</h2>
										<ol class="comment-list">
											<li class="review">
												<div class="content-comment-container">
													<div class="comment-container">
														<img src="${baseURL }/resources/media/user.jpg"
															class="avatar" height="60" width="60" alt="">
														<div class="comment-text">
															<div class="rating small">
																<div class="star star-5"></div>
															</div>
															<div class="review-author">Peter Capidal</div>
															<div class="review-time">January 12, 2023</div>
														</div>
													</div>
													<div class="description">
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing
															elit. Nam fringilla augue nec est tristique auctor. Donec
															non est at libero vulputate rutrum. Morbi ornare lectus
															quis justo gravida semper. Nulla tellus mi, vulputate
															adipiscing cursus eu, suscipit id nulla.</p>
													</div>
												</div>
											</li>
										</ol>
									</div>
									<div id="review-form">
										<div id="respond" class="comment-respond">
											<span id="reply-title" class="comment-reply-title">Add
												a review</span>
											<form action="#" method="post" id="comment-form"
												class="comment-form">
												<p class="comment-notes">
													<span id="email-notes">Your email address will not
														be published.</span> Required fields are marked <span
														class="required">*</span>
												</p>
												<p class="comment-form-comment">
													<textarea id="comment" name="comment"
														placeholder="Your Reviews *" cols="45" rows="8"
														aria-required="true"></textarea>
												</p>
												<div class="content-info-reviews">
													<p class="comment-form-author">
														<input id="author" name="author" placeholder="Name *"
															type="text" value="" size="30" aria-required="true">
													</p>
													<p class="comment-form-email">
														<input id="email" name="email" placeholder="Email *"
															type="email" value="" size="30" aria-required="true">
													</p>
													<p class="form-submit">
														<input name="submit" type="submit" id="submit"
															class="submit" value="Submit">
													</p>
												</div>
											</form>
											<!-- #respond -->
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product-related">
			<div class="section-padding">
				<div class="section-container p-l-r">
					<div class="block block-products slider">
						<div class="block-title">
							<h2>Related Products</h2>
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
														<div class="contents">
															<h3 class="product-title">
																<a href="${p.proId}">${p.proName}</a>
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
		</div>
	</div>
</div>
<!-- #content -->