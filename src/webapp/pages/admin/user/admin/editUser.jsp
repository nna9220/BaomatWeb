<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String context = request.getContextPath();
response.setHeader("X-Content-Type-Options", "nosniff");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../../partials/head.jsp"></jsp:include>
<title>Edit Admin | Topic Registration Admin</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="../../partials/sidebar.jsp"></jsp:include>
		<div id="body" class="active">
			<!-- navbar navigation component -->
			<jsp:include page="../../partials/navigation.jsp"></jsp:include>
			<!-- end of navbar navigation -->
			<div class="content">
				<div class="container">
					<div class="page-title">
						<h3>Edit Admin</h3>
					</div>
					<div class="box box-primary">
						<div class="box-body">
							<jsp:include page="./navTop.jsp"></jsp:include>
							<div class="tab-content" id="myTabContent">
								<jsp:include page="../generalPanel.jsp"></jsp:include>
								<jsp:include page="../accountPanel.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../../partials/tail.jsp"></jsp:include>
	</div>
</body>
</html>