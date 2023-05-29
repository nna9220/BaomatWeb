<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String context = request.getContextPath();
response.setHeader("Strict-Transport-Security", "max-age=31336000; includeSubdomains");
response.setHeader("X-Content-Type-Options", "nosniff");
%>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="Content-Security-Policy" content="
    default-src 'self' 'unsafe-eval' 'unsafe-inline';
    style-src 'self' https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==' http://java.sun.com/jsp/jstl/core https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css';
    script-src 'self' https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js https://cdn.jsdelivr.net/npm/dompurify@2.3.0/dist/purify.min.js https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3' 'sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==' 'nonce-2726c7f26c';
    font-src 'self' https://cdnjs.cloudflare.com;
    img-src 'self' http://www.w3.org/2000/svg https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-news.png https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-cntt2021.png https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930;
    connect-src 'self';
    form-action 'self'">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="<%=context%>/assets/css/admin/login.css"
	type="text/css" />
<title>Login | Topic Registration Admin</title>
</head>
<body>
	<div class="wrapper">
		<div class="auth-content">
			<div class="card">
				<div class="card-body text-center">
					<div class="mb-4">
						<img class="brand"
							src="https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-cntt2021.png"
							alt="bootstraper logo" style="height: 42px"> 
					</div>
					<h6 class="mb-4 text-muted">Login to your account</h6>
					<form action="" method="">
						<div class="mb-3 text-start">
							<label for="email" class="form-label">Email adress</label> <input
								type="email" class="form-control" placeholder="Enter Email"
								required>
						</div>
						<div class="mb-3 text-start">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" placeholder="Password"
								required>
						</div>
						<div class="mb-3 text-start">
							<div class="form-check">
								<input class="form-check-input" name="remember" type="checkbox"
									value="" id="check1"> <label class="form-check-label"
									for="check1"> Remember me on this device </label>
							</div>
						</div>
						<button class="btn btn-primary shadow-2 mb-4">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="./partials/tail.jsp"></jsp:include>
</body>
</html>