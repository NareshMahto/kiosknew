<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Event Training</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="Login Form Template" name="keywords" />
<meta content="Login Form Template" name="description" />

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon" />

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
<!-- Font Awesome CDN Link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- Style CSS -->
<link rel="stylesheet" href="./assets/css/style.css" />
<!-- Responsive CSS -->
<link rel="stylesheet" href="./assets/css/responsive.css" />

<style>
.navbar {
	background: #f9f9f9;
	text-align: center;
	padding: 15px 0;
	box-shadow: 1px 3px 6px #d3d3d3;
}

.navbar img {
	width: 170px;
}

.wrapper.login-3 {
	margin: 0 auto;
	width: 100%;
	max-width: 1140px;
	min-height: calc(100vh - 98px);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

.wrapper .container {
	position: relative;
	width: 100%;
	max-width: 400px;
	height: auto;
	display: flex;
	background: #ffffff;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	padding: 0;
}

/* * * * * Login 3 CSS * * * * */
.container.login-3 {
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.login-3 .col-right {
	width: 100%;
	padding: 25px 20px;
	display: flex;
	align-items: center;
}

.login-3 h2 {
	margin: 0 0 15px 0;
	font-size: 25px;
	font-weight: 700;
	text-align: center;
}

.login-3 p {
	margin: 0 0 20px 0;
	font-size: 20px;
	font-weight: 500;
	line-height: 30px;
}

.login-3 .form-right {
	position: relative;
	width: 100%;
	color: #666666;
}

.login-3 .form-right p:last-child {
	margin: 0;
}

.login-3 .form-right label {
	display: block;
	width: 100%;
	margin-bottom: 2px;
	letter-spacing: 0.5px;
}

.login-3 .form-right label span {
	color: #ff574e;
	padding-left: 2px;
}

.login-3 .form-right input, .login-3 .form-right select {
	display: block;
	width: 100%;
	height: 40px;
	padding: 0 10px;
	font-size: 16px;
	letter-spacing: 1px;
	outline: none;
	border: 1px solid #cccccc;
	border-radius: 5px;
}

.login-3 .form-right input:focus, .login-3 .form-right select:focus {
	border-color: #03233d;
	box-shadow: none;
}

.login-3 .form-right a.btn {
	color: #ffffff;
	background: linear-gradient(to right, #03233d, #104671);
	border-color: #03233d;
	outline: none;
	cursor: pointer;
	width: 100%;
}

.login-3 .form-right a.btn:hover {
	color: #03233d;
	background: #fff;
}

.form-right .inputs_box {
	position: relative;
}

.form-right label {
	font-size: 16px;
	line-height: 20px;
	font-weight: 400;
}

.form-right .inputs_box input, .form-right .inputs_box select {
	height: 40px;
	padding: 0 38px;
}

.form-right .inputs_box i {
	position: absolute;
	top: 33px;
	left: 12px;
	font-size: 18px;
	color: #021a47;
}

.form-right .inputs_box .error {
	color: red;
}

@media ( max-width : 575.98px) {
	.login-3 .container {
		flex-direction: column;
	}
	.login-3 .col-right {
		width: 100%;
		margin: 0;
		padding: 30px;
		-webkit-clip-path: none;
		clip-path: none;
	}
	.wrapper {
		padding: 0 12px;
	}
	.login-3 .login-text h1 {
		font-size: 32px;
		margin-bottom: 7px;
	}
}
</style>
</head>
<body>
	<div class="navbar justify-content-center">
		<img src="./assets/images/csc-logo.png" alt="Logo" />
	</div>
	<div class="wrapper login-3">
		<div class="container">
			<div class="col-right">
				<div class="form-right">
					<h2>Login</h2>
					<form action="userLogin" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<div class="form-group inputs_box mb-3">
							<label for="username">Email</label> <input type="text"
								class="form-control" name="username" id="username"
								autocomplete="off" placeholder="Email id" /> <i
								class="fa fa-user" aria-hidden="true"></i> <span
								id="usernameerror" class="error"></span>
						</div>

						<div class="form-group inputs_box mb-3">
							<label for="password">Password</label> <input type="password"
								class="form-control" name="password" id="password"
								autocomplete="off" placeholder="Password" /> <i
								class="fa fa-lock login-user"></i> <span id="passworderror"
								class="error"></span>
						</div>

						<!-- <div class="form-group inputs_box mb-3">
							<label for="exampleFormControlSelect2">Role</label> <select
								class="form-select custom-select-value" name="role" id="role">
								<option value="">Select Role</option>
								<option value="admin">Admin</option>
								<option value="admin">Sub-Admin</option>
								<option value="StateTeam">State Team</option>
								<option value="Management">VLE</option>
							</select> <i class="fa fa-tasks" aria-hidden="true"></i> <span
								id="roleerror" class="error"></span>
						</div> -->

						
						
						<button type="submit" class="btn btn-login">Log in</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!--Jquery JS -->
	<script src="./assets/js/jquery.min.js"></script>
	<!--Popper JS -->
	<script src="./assets/js/popper.min.js"></script>
	<!--Bootstrap JS -->
	<script src="./assets/js/bootstrap.min.js"></script>
</body>
</html>
