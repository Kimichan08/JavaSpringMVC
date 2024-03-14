<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<div id="site-main" class="site-main">
	<div id="main-content" class="main-content">
		<div id="primary" class="content-area">
			<div id="title" class="page-title">
				<div class="section-container">
					<div class="content-title-heading">
						<h1 class="text-title-heading">Shopping Cart</h1>
					</div>
					<div class="breadcrumbs">
						<a href="index.html">Home</a><span class="delimiter"></span><a
							href="shop-grid-left.html">Shop</a><span class="delimiter"></span>Shopping
						Cart
					</div>
				</div>
			</div>

			<div id="content" class="site-content" role="main">
				<div class="section-padding">
					<div class="section-container p-l-r">
						<div class="shop-cart">
							<div class="row">
								<div class="col-xl-8 col-lg-12 col-md-12 col-12">
									<form class="cart-form" action="#" method="post">
										<div class="table-responsive">
											<table class="cart-items table" cellspacing="0">
												<thead>
													<tr>
														<th class="product-thumbnail">Product</th>
														<th class="product-price">Price</th>
														<th class="product-quantity">Quantity</th>
														<th class="product-subtotal">Subtotal</th>
														<th class="product-remove">&nbsp;</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${listCart}" var="c">
														<tr class="cart-item">
															<td class="product-thumbnail"><a
																href="shop-details.html"> <img width="600"
																	height="600" src="${baseURL}/uploads/${c.product.image}"
																	class="product-image" alt="">
															</a>
																<div class="product-name">
																	<a href="shop-details.html">${c.product.proName}</a>
																</div></td>
															<td class="product-price"><span class="price">${c.totalPrice }</span>
															</td>
															<td class="product-quantity">
																<div class="quantity">
																	<button type="button" class="minus">-</button>
																	<input type="number" class="qty" step="1" min="0"
																		max="" name="quantity" value="${c.quantity}"  size="4"
																		placeholder="" inputmode="numeric" autocomplete="off">
																	<button type="button" class="plus">+</button>
																</div>
															</td>
															<td class="product-subtotal"><span>${c.totalPrice }</span></td>
															<td class="product-remove"><a href="#"
																class="remove">�</a></td>
														</tr>
													</c:forEach>
													<tr>
														<td colspan="6" class="actions">
															<div class="bottom-cart">
																
																<h2>
																	<a href="shop-grid-left.html">Continue Shopping</a>
																</h2>
																<button type="submit" name="update_cart" class="button"
																	value="Update cart">Update cart</button>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
								<div class="col-xl-4 col-lg-12 col-md-12 col-12">
									<div class="cart-totals">
										<h2>Cart totals</h2>
										<div>
											<div class="cart-subtotal">
												<div class="title">Subtotal</div>
												<div>
													<span>$480.00</span>
												</div>
											</div>
											<div class="shipping-totals">
												<div class="title">Shipping</div>
												<div>
													<ul class="shipping-methods custom-radio">
														<li><input type="radio" name="shipping_method"
															data-index="0" value="free_shipping"
															class="shipping_method" checked="checked"><label>Free
																shipping</label></li>
														<li><input type="radio" name="shipping_method"
															data-index="0" value="flat_rate" class="shipping_method"><label>Flat
																rate</label></li>
													</ul>
													<p class="shipping-desc">Shipping options will be
														updated during checkout.</p>
												</div>
											</div>
											<div class="order-total">
												<div class="title">Total</div>
												<div>
													<span>$480.00</span>
												</div>
											</div>
										</div>
										<div class="proceed-to-checkout">
											<a href="shop-checkout.html" class="checkout-button button">
												Proceed to checkout </a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-cart-empty">
							<div class="notices-wrapper">
								<p class="cart-empty">Your cart is currently empty.</p>
							</div>
							<div class="return-to-shop">
								<a class="button" href="shop-grid-left.html"> Return to shop
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- #content -->
		</div>
		<!-- #primary -->
	</div>
	<!-- #main-content -->
</div>