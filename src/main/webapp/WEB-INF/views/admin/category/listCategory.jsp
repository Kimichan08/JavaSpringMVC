<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>

<div class="pcoded-main-container px-3 py-3">
	<h2 class="text-center text-success font-weight-bold " >LIST
		CATEGORY</h2>
	<a href="${baseURL }/admin/them-moi-danh-muc" class="btn btn-info rounded mb-2">Add a new category</a>
	<table class="table container">
		<thead>
			<tr>
				<th scope="col">Category ID</th>
				<th scope="col">Category Name</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${categories}">
				<tr>
					<th scope="row">${c.cateId}</th>
					<td>${c.cateName}</td>
					<td class="text-center">
						<a href="${baseURL }/admin/cap-nhat-danh-muc?id=${c.cateId}" class="btn btn-primary">Edit</a>
						<a href="${baseURL }/admin/xoa-danh-muc?id=${c.cateId}" onclick="return confirm('Are you sure remove a category?')" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>