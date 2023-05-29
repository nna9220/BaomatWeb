<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String context = request.getContextPath();
%>

<meta http-equiv="Content-Security-Policy" content="
    default-src 'self' unsafe-eval' 'unsafe-inline';
    style-src 'self' https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A== http://java.sun.com/jsp/jstl/core https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css';
    script-src 'self' https://cdn.jsdelivr.net/npm/dompurify@2.3.0/dist/purify.min.js https://cdnjs.cloudflare.com https://cdn.jsdelivr.net 'sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3' https://cdnjs.cloudflare.com 'sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==' 'nonce-2726c7f26c';
    font-src 'self' https://cdnjs.cloudflare.com;
    img-src 'self' http://www.w3.org/2000/svg https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-news.png https://fit.hcmute.edu.vn/Resources/Images/SubDomain/fit/logo-cntt2021.png https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930;
    connect-src 'self';
">

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-XSS-Protection" content="1; mode=warn">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=context%>/assets/css/styles.css"
	type="text/css" />
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
	defer></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

