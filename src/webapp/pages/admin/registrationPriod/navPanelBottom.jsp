<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String context = request.getContextPath();
response.setHeader("X-Content-Type-Options", "nosniff");
%>
<div class="mb-3 d-flex justify-content-between">
	<a href="<%=context%>/admin/registration-priods/?type=${type}"
		class="btn btn-success" type="submit"> <i
		class="fas fa-chevron-left"></i> Back
	</a>
	<button class="btn btn-success" type="submit">
		<i class="fas fa-check"></i> Save
	</button>
</div>