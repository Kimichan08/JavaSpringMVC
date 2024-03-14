<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseURL" value="${pageContext.request.contextPath}" />
<div class="container">
	<div class="col-lg-5" style="margin: 0 auto;">
		<h1>Login</h1>
		<span class="text-danger">${msg}</span>
		<form action="<c:url value='loginProcess' />" method="post">
			<div class="form-group">
				<label>User Name</label> <input type="text" name="username"
					class="form-control">
			</div>
			<div class="form-group">
				<label>Password</label> <input type="password" name="password"
					class="form-control">
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<button type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>
</div>


