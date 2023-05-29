<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String context = request.getContextPath();
response.setHeader("Strict-Transport-Security", "max-age=31336000; includeSubdomains");
response.setHeader("X-Content-Type-Options", "nosniff");
%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta http-equiv="Content-Security-Policy" content="
    default-src 'self' 'unsafe-eval' 'unsafe-inline';
    style-src 'self' https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==' http://java.sun.com/jsp/jstl/core https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css';
    script-src 'self' https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js https://cdn.jsdelivr.net/npm/dompurify@2.3.0/dist/purify.min.js https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3' 'sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==' 'nonce-2726c7f26c';
    font-src 'self' https://cdnjs.cloudflare.com;
    img-src 'self' http://www.w3.org/2000/svg https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-news.png https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-cntt2021.png https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930;
    connect-src 'self';
    form-action 'self'">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="<%=context%>/assets/css/error.css"
	type="text/css" />
<title>500 | Internal Server Error!</title>
</head>

<body>
	<div class="wrapper">
		<div class="page vertical-align text-center">
			<div class="page-content vertical-align-middle">
				<header>
					<h1 class="animation-slide-top">500</h1>
					<p>Internal Server Error !</p>
				</header>
				<p class="error-advise">Whoopps, something went wrong.</p>
				<a class="btn btn-primary btn-round mb-5" href="<%=context%>/">GO
					TO HOME PAGE</a>
				<footer class="page-copyright">
					<p>© 2022. All RIGHT RESERVED.</p>
				</footer>
			</div>
		</div>
	</div>
</body>

</html>
>
