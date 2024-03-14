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
					class="col-xl-3 col-lg-3 col-md-12 col-12 sidebar left-sidebar md-b-50">

					<!-- Block Posts -->
					<div class="block block-posts">
						<div class="block-title">
							<h2>Recent Posts</h2>
						</div>
						<div class="block-content">
							<ul class="posts-list">
								<li class="post-item"><a href="blog-details-right.html"
									class="post-image"> <img src="${baseURL }/resources/media/blog/1.jpg">
								</a>
									<div class="post-content">
										<h2 class="post-title">
											<a href="blog-details-right.html"> Bridial Fair
												Collections 2023 </a>
										</h2>
										<div class="post-time">
											<span class="post-date">May 30, 2023</span>
										</div>
									</div></li>
								<li class="post-item"><a href="blog-details-right.html"
									class="post-image"> <img src="${baseURL }/resources/media/blog/2.jpg">
								</a>
									<div class="post-content">
										<h2 class="post-title">
											<a href="blog-details-right.html"> Our Sterling Silver </a>
										</h2>
										<div class="post-time">
											<span class="post-date">Aug 24, 2023</span>
										</div>
									</div></li>
								<li class="post-item"><a href="blog-details-right.html"
									class="post-image"> <img src="${baseURL }/resources/media/blog/3.jpg">
								</a>
									<div class="post-content">
										<h2 class="post-title">
											<a href="blog-details-right.html"> New Season Modern Gold
												Earrings </a>
										</h2>
										<div class="post-time">
											<span class="post-date">Dec 06, 2023</span>
										</div>
									</div></li>
							</ul>
						</div>
					</div>

					<!-- Block Post Archives -->
					<div class="block block-post-archives">
						<div class="block-title">
							<h2>Archives</h2>
						</div>
						<div class="block-content">
							<div class="post-archives-list">
								<ul>
									<li><a href="blog-grid-left.html">May 2023</a></li>
									<li><a href="blog-grid-left.html">April 2023</a></li>
									<li><a href="blog-grid-left.html">August 2022</a></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- Block Post Tags -->
					<div class="block block-post-tags">
						<div class="block-title">
							<h2>Tags</h2>
						</div>
						<div class="block-content">
							<div class="post-tags-list">
								<ul>
									<li><a href="blog-grid-left.html">Jewelry</a></li>
									<li><a href="blog-grid-left.html">Ring Styles</a></li>
									<li><a href="blog-grid-left.html">Gift Ideas</a></li>
									<li><a href="blog-grid-left.html">Wedding</a></li>
									<li><a href="blog-grid-left.html">Bracelets</a></li>
									<li><a href="blog-grid-left.html">Necklaces</a></li>
									<li><a href="blog-grid-left.html">Unique</a></li>
									<li><a href="blog-grid-left.html">Glossary</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-9 col-lg-9 col-md-12 col-12">
					<div class="posts-list grid">
						<div class="row">
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Bridial Fair
												Collections 2023</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">July 24, 2023</span> <span
												class="post-comment">1 Comment</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/2.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Our Sterling Silver</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">August 16, 2023</span> <span
												class="post-comment">4 Comments</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/3.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">New Season Modern Gold
												Earrings</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">October 04, 2023</span> <span
												class="post-comment">3 Comments</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/4.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Glossary of Jewelry
												Terms</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">October 20, 2023</span> <span
												class="post-comment">1 Comment</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/5.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Unique First
												Anniversary Gift Ideas</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">December 11, 2023</span> <span
												class="post-comment">5 Comments</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/6.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Hypoallergenic Wedding
												Bands</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">February 07, 2023</span> <span
												class="post-comment">2 Comments</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/7.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Guide to Engagement
												Ring Styles</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">July 24, 2023</span> <span
												class="post-comment">3 Comments</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/3.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Ultimate Guide To
												Women's Wedding Bands</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">July 24, 2023</span> <span
												class="post-comment">1 Comment</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
								<div class="post-entry clearfix post-wapper">
									<div class="post-image">
										<a href="blog-details-right.html"> <img
											src="${baseURL }/resources/media/blog/1.jpg" alt="">
										</a>
									</div>
									<div class="post-content">
										<div class="post-categories">
											<a href="blog-grid-right.html">Wedding & Bridal</a>
										</div>
										<h2 class="post-title">
											<a href="blog-details-right.html">Wedding Planning Advice</a>
										</h2>
										<div class="post-meta">
											<span class="post-time">July 24, 2023</span> <span
												class="post-comment">5 Comments</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<nav class="pagination">
						<ul class="page-numbers">
							<li><a class="prev page-numbers" href="#">Previous</a></li>
							<li><span aria-current="page" class="page-numbers current">1</span></li>
							<li><a class="page-numbers" href="#">2</a></li>
							<li><a class="page-numbers" href="#">3</a></li>
							<li><a class="next page-numbers" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>