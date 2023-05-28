<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String context = request.getContextPath();
request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="./partials/head.jsp" />
<title>Login - Đăng ký đề tài</title>
</head>
<body>
	<div id="root">
		<!-- Header -->
		<jsp:include page="./partials/header.jsp" />
		<main id="main">
			<div class="grid">
				<div class="form_container">
					<form id="form" action="<%=context%>/login" method="POST" onsubmit="validateForm(event);">
						<h2 class="login-label">Đăng nhập</h2>
						<div class="login_role">
							<div class="login_role-item">
								<input type="radio" id="sinhvien" value="student"
									name="role-account" checked="checked" /> <label for="sinhvien">Sinh
									viên</label>
							</div>
							<div class="login_role-item">
								<input type="radio" id="giangvien" value="teacher"
									name="role-account" /> <label for="giangvien">Giảng
									viên</label>
							</div>
							<div class="login_role-item">
								<input type="radio" id="admin" value="admin" name="role-account" />
								<label for="admin">Admin</label>
							</div>
						</div>

						<div class="login_input">
							<label for="username" class="login_input-label">Tên đăng
								nhập:</label> <input type="text" id="username" name="username"
								value="${username}"
								class="login_input-input login_input-input--boder" required />
						</div>

						<div class="login_input">
							<label for="password" class="login_input-label">Mật khẩu:</label>
							<input type="password" id="password" name="password"
							value="${password}"
								class="login_input-input login_input-input--boder" required />
						</div>
						<div>
							<p style="font-size: 1rem; color: red">${error}</p>
						</div>
						<div class="login_input">
							<div class="login_input-label"></div>
							<div class="login_input-input">
								<div class="login_input-container">
									<div>
										<a href="#">Quên mật khẩu</a>
									</div>
									<div>
										<button>Đăng nhập</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			
			<!--HTML entities onsubmit="validateForm(event);" -->
			<script nonce="2726c7f26c">
				function encodeHtmlEntities(str) {
					  var tempElement = document.createElement("textarea");
					  tempElement.textContent = str;
					  return tempElement.innerHTML;
					}
			    
			    function validateForm(event) {
		            event.preventDefault(); // Ngăn chặn việc submit form

		            let form = document.getElementById("form");
		            let textInput1 = document.getElementById("username");
		            let textInput2 = document.getElementById("password");
		            
		            console.log(textInput1.value);
		            console.log(textInput2.value);

		            let encodedTextInput1 = encodeHtmlEntities(textInput1.value);
		            let encodedTextInput2 = encodeHtmlEntities(textInput2.value);
		            
		            console.log(encodedTextInput1);
		            console.log(encodedTextInput2);
		            
		            textInput1.value = encodedTextInput1;
		            textInput2.value = encodedTextInput2;
		            
		            
		            console.log("1");

		            if (encodedTextInput1 === '' || encodedTextInput2 === '') {
		                alert('Vui lòng điền đầy đủ thông tin');
		            } else {
		            	form.submit();
		            }
		        }
			    
			    let form = document.getElementById("form");
				form.addEventListener('submit', validateForm);
			</script>
			
			<!-- DOMPurify -->
			<!-- <script src="https://cdn.jsdelivr.net/npm/dompurify@2.3.0/dist/purify.min.js"></script>
		    <script  nonce="2726c7f26c">
		        let DOMPurify = window.DOMPurify;
		        
		        function validateForm(event) {
		            event.preventDefault(); // Ngăn chặn việc submit form

		            let form = document.getElementById("form");
		            let textInput1 = document.getElementById("username");
		            let textInput2 = document.getElementById("password");
		            
		            console.log(textInput1.value);
		            console.log(textInput2.value);

		            let encodedTextInput1 = DOMPurify.sanitize(textInput1.value);
		            let encodedTextInput2 = DOMPurify.sanitize(textInput2.value);
		            
		            console.log(encodedTextInput1);
		            console.log(encodedTextInput2);
		            
		            textInput1.value = encodedTextInput1;
		            textInput2.value = encodedTextInput2;
		            
		            
		            console.log("1");

		            if (encodedTextInput1 === '' || encodedTextInput2 === '') {
		                alert('Vui lòng điền đầy đủ thông tin');
		            } else {
		            	form.submit();
		            }
		        }
		        
		        let form = document.getElementById("form");
				form.addEventListener('submit', validateForm);s
		    </script> -->
		    
		</main>
		<!-- Footer -->
		<jsp:include page="./partials/footer.jsp" />
	</div>
</body>
</html>
