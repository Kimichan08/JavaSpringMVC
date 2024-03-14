<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<div class="pcoded-main-container px-3 py-3">
	<h2 class="text-center text-success font-weight-bold ">ADD PRODUCT</h2>
	<f:form method="post" action="them-moi-san-pham"
		modelAttribute="product" enctype="multipart/form-data">
		<div class="form-group">
			<label for="exampleInputEmail1">Product ID</label>
			<f:input path="proId" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Product Name</label>
			<f:input path="proName" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Price</label>
			<f:input path="price" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Sale Price</label>
			<f:input path="salePrice" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Image</label> <input type="file"
				name="file" class="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Descriptions</label>
			<f:input path="descriptions" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Quality</label>
			<f:input path="quality" cssClass="form-control" />
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Category ID</label>
			<f:select path="cateId" items="${categories}" itemLabel="cateName"
				itemValue="cateId"
				cssClass="form-control rounded-0 border bg-white mb-3 px-3">
			</f:select>

		</div>

		<div class="form-group">
			<div class="form-group">
				<label for="exampleInputPassword1">Status</label>

				<f:select path="status"
					cssClass="form-control rounded-0 border bg-white mb-3 px-3">
					<f:option value="1">Stocking</f:option>
					<f:option value="0">Out of stock</f:option>
				</f:select>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Add</button>
	</f:form>

	<a href="${baseURL }/admin/danh-sach-san-pham"
		class="btn btn-info mt-3">Back List Product</a>

</div>