<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />

<div class="pcoded-main-container px-3 py-3">
	<h2 class="text-center text-success font-weight-bold ">UPDATE
		CATEGORY</h2>
	<f:form method="post" action="cap-nhat-danh-muc" modelAttribute = "category">
	<f:input type="hidden" path="cateId" cssClass="form-control"/> 
		<div class="form-group">
			<label for="exampleInputEmail1">Category Name</label>
			<f:input path="cateName" cssClass="form-control"/> 
		</div>
		<button type="submit" class="btn btn-primary">Update</button>
	</f:form>
	
	<a href="${baseURL }/admin/danh-muc-san-pham" class="btn btn-info mt-3">Back List Category</a>

</div>