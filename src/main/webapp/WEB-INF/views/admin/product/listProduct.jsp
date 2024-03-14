<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<div class="pcoded-main-container px-3 py-3">

	<div class="add d-flex justify-content-between">
		<form action="danh-sach-san-pham" class="d-flex">

			<div class="form-group me-2">
				<input type="text" name="keyword" class="form-control"
					placeholder="Search...">

			</div>
			<div class="form-group me-2">
				<button class="btn btn-info" type="submit">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</div>
		</form>

	</div>

	<h2 class="text-center text-success font-weight-bold ">LIST
		CATEGORY</h2>
	<a href="${baseURL }/admin/them-moi-san-pham"
		class="btn btn-info rounded mb-2">Add a new product</a>
	<table class="table container">
		<thead>
			<tr>
				<th scope="col">Product ID</th>
				<th scope="col">Product Name</th>
				<th scope="col">Price</th>
				<th scope="col">Sale Price</th>
				<th scope="col">Image</th>
				<th scope="col">Category ID</th>
				<th scope="col">Status</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${listPage}">
				<tr>
					<th scope="row">${p.proId}</th>
					<td>${p.proName}</td>
					<td>${p.price}</td>
					<td>${p.salePrice}</td>
					<td><img alt="" src="${baseURL}/uploads/${p.image}"
						style="width: 90px; hight: auto" /></td>
					<td>${p.category.cateName}</td>
					<td>${p.status == 1 ? "Stocking" : "Out of stock"}</td>
					<td class="text-center">
						<a href="" class="btn btn-info"><i
							class="fa-solid fa-bars"></i>
						</a> 
						<a href="${baseURL }/admin/cap-nhat-san-pham?id=${p.proId}"
						class="btn btn-primary"><i class="fa-regular fa-pen-to-square"></i></a>

						<a href="${baseURL }/admin/xoa-san-pham?id=${p.proId}"
						onclick="return confirm('Are you sure?')" class="btn btn-danger"><i
							class="fa-solid fa-trash"></i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<ul class="pagination">
		<c:choose>
			<c:when test="${(empty(param.keyword))}">
				<li class="page-item"><a class="page-link"
					href="?pageno=${totalPage-1}" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach var="i" begin="1" end="${totalPage}">
					<li class="page-item"><a class="page-link" href="?pageno=${i}">${i}</a></li>
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


</div>