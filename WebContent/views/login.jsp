<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
<style>
html {
	height: 100%;
}

body {
	height: 100%;
	margin: 0;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

/* Text Align */
.text-c {
	text-align: center;
}

.text-l {
	text-align: left;
}

.text-r {
	text-align: right
}

.text-j {
	text-align: justify;
}

/* Text Color */
.text-whitesmoke {
	color: whitesmoke
}

.text-darkyellow {
	color: rgba(255, 235, 59, 0.432)
}

/* Lines */
.line-b {
	border-bottom: 1px solid #FFEB3B !important;
}

/* Buttons */
.button {
	border-radius: 3px;
}

.form-button {
	background-color: rgba(255, 235, 59, 0.24);
	
	color: #435591;
}
.form-button:hover, .form-button:focus, .form-button:active,
	.form-button.active, .form-button:active:focus, .form-button:active:hover,
	.form-button.active:hover, .form-button.active:focus {
	background-color: rgba(255, 235, 59, 0.473);
	border-color: rgba(255, 235, 59, 0.473);
	color: #e6e6e6;
}

.button-l {
	width: 100% !important;
	padding: 8px;
}

/* Margins g(global) - l(left) - r(right) - t(top) - b(bottom) */
.margin-g {
	margin: 15px;
}

.margin-g-sm {
	margin: 10px;
}

.margin-g-md {
	margin: 20px;
}

.margin-g-lg {
	margin: 30px;
}

.margin-l {
	margin-left: 15px;
}

.margin-l-sm {
	margin-left: 10px;
}

.margin-l-md {
	margin-left: 20px;
}

.margin-l-lg {
	margin-left: 30px;
}

.margin-r {
	margin-right: 15px;
}

.margin-r-sm {
	margin-right: 10px;
}

.margin-r-md {
	margin-right: 20px;
}

.margin-r-lg {
	margin-right: 30px;
}

.margin-t {
	margin-top: 15px;
}

.margin-t-sm {
	margin-top: 10px;
}

.margin-t-md {
	margin-top: 20px;
}

.margin-t-lg {
	margin-top: 30px;
}

.margin-b {
	margin-bottom: 15px;
}

.margin-b-sm {
	margin-bottom: 10px;
}

.margin-b-md {
	margin-bottom: 20px;
}

.margin-b-lg {
	margin-bottom: 30px;
}

/* Bootstrap Form Control Extension */
.form-control, .border-line {
	background-color: #5f5f5f;
	background-image: none;
	border: 1px solid #424242;
	border-radius: 1px;
	color: inherit;
	display: block;
	padding: 6px 12px;
	transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s
		ease-in-out 0s;
	width: 100%;
}

.form-control:focus, .border-line:focus {
	border-color: #FFEB3B;
	background-color: #616161;
	color: #e6e6e6;
}

.form-control, .form-control:focus {
	box-shadow: none;
}

.form-control::-webkit-input-placeholder {
	color: #BDBDBD;
}

/* Container */
.container-content {
	background-color: #3a3a3aa2;
	color: inherit;
	padding: 15px 20px 20px 20px;
	border-color: #FFEB3B;
	border-image: none;
	border-style: solid solid none;
	border-width: 1px 0;
}

/* Backgrounds */
.main-bg {
	background: #424242;
	background-image :url(https://indainam.com/wp-content/uploads/2017/10/mau-background-don-gian-01-1024x640.jpg);
}

/* Login & Register Pages*/
.login-container {
	max-width: 400px;
	z-index: 100;
	margin: 0 auto;
	padding-top: 100px;
}

.login.login-container {
	width: 300px;
}

.wrapper.login-container {
	margin-top: 140px;
}

.logo-badge {
	color: #e6e6e6;
	font-size: 80px;
	font-weight: 800;
	letter-spacing: -10px;
	margin-bottom: 0;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

</head>
<body class="main-bg">
	<div class="login-container text-c animated flipInX">
		<div>
			<h1 class="logo-badge text-whitesmoke">
				<span class="fa fa-user-circle"></span>
			</h1>
		</div>
		<h1 class="text-whitesmoke">Login</h1>
		<div class="container-content">
			<p class="text-danger">${ error }</p>
			<form class="margin-t" action="/ASS_SOF3011/Login" method="post">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Username"
						name="username" required>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="*****"
						name="password" required>
				</div>
				<button type="submit" class="form-button button-l margin-b">Sign
					In</button>
			</form>
			<a class="text-darkyellow" data-toggle="modal"
				data-target="#modalForgot" style="cursor: pointer;"><small>Forgot your
					password?</small></a>
			<p class="text-whitesmoke text-center">
				<small>Do not have an account?</small>
			</p>
			<a class="text-darkyellow" data-toggle="modal"
				data-target="#modalSignUp" style="cursor: pointer;"><small>Sign Up</small></a>

			<p class="margin-t text-whitesmoke">
				<small>Fpt Poly &copy;2021. All Rights Reserved</small>
			</p>
		</div>
	</div>

	<!-- Modal Sign Up -->
	<div class="modal fade" id="modalSignUp" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="container-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="text-whitesmoke" align="center">Sign Up</h4>
				</div>
				<form action="/ASS_SOF3011/SignUp" method="post">
					<div class="modal-body">
						<div class="form-content">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="User Name *" name="usernameR" required/>
									</div>
									<div class="form-group">
										<input type="password" class="form-control"
											placeholder="Password *" name="passwordR" required/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Full Name *" name="fullnameR" required/>
									</div>
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Email *" name="emailR" required/>
									</div>
								</div>
							</div>
							<button type="submit" class="form-button button-l margin-b">Submit</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
	
	<!-- Modal Forgot -->
	<div class="modal fade" id="modalForgot" role="dialog">
		<div class="modal-dialog modal-sm">

			<!-- Modal content-->
			<div class="container-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="text-whitesmoke" align="center">Forgot Password</h4>
				</div>
				<form action="/ASS_SOF3011/ForgotPassword" method="post">
					<div class="modal-body">
						<div class="form-content">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="User Name *" name="usernameF" required/>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Email *" name="emailF" required/>
									</div>
								</div>
							</div>
							<button type="submit" class="form-button button-l margin-b">Submit</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>