<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<div class="pcoded-main-container px-3 py-3">
	<h2 class="text-center text-success font-weight-bold ">ADD
		CATEGORY</h2>
	<form method="post" action="them-moi-danh-muc" modelAttribute = "categories">
		<div class="form-group">
			<label for="exampleInputEmail1">Category Name</label>
			<input	type="text" name="cateName" class="form-control" /> 
		</div>
		<button type="submit" class="btn btn-primary">Add</button>
	</form>
	
	<a href="${baseURL }/admin/danh-muc-san-pham" class="btn btn-info mt-3">Back List Category</a>

</div>