<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users List</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
body {
	background-image:
		url(https://indainam.com/wp-content/uploads/2017/10/mau-background-don-gian-01-1024x640.jpg);
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<ul class="nav navbar-nav nav-pills">
		
				<li><a href="/ASS_SOF3011/Admin/Videos">Videos</a></li>
				<li><a href="/ASS_SOF3011/Admin/Users">Users</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/ASS_SOF3011/Login"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">

			<div class="col-sm-2">
				<a href="/ASS_SOF3011/Admin/Users/Edit?id=0">
					<button class="btn btn-success">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</a>
			</div>

			<br>
			<div class="table-reponsive">
				<table class="table table-bordered text-center">
					<thead align="center">
						<tr class="warning">
							<th>ID</th>
							<th>UserName</th>
							<th>Password</th>
							<th>FullName</th>
							<th>Email</th>
							<th>Role</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${ listU }">
							<tr class="info">
								<td>${ user.id }</td>
								<td>${ user.username }</td>
								<td>${ user.password }</td>
								<td>${ user.fullname }</td>
								<td>${ user.email }</td>
								<td>${ user.role == 1 ? "Admin" : "User" }</td>
								<td><a href="/ASS_SOF3011/Admin/Users/Edit?id=${ user.id }">
										<button class="btn btn-primary">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
								</a></td>
								<td>
									<form action="/ASS_SOF3011/Admin/Users/Delete?id=${ user.id }"
										method="POST" class="form-delete">
										<button class="btn btn-danger" type="submit" id="btnDelete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</form>
								</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>

			<div align="center">
				<a class="btn btn-lg" href="/ASS_SOF3011/Admin/Users?page=1"> <span
					class="glyphicon glyphicon-fast-backward"></span>
				</a> <a class="btn btn-lg"
					href="/ASS_SOF3011/Admin/Users?page=${ page == 1 ? page : page - 1 }">
					<span class="glyphicon glyphicon-backward"></span>
				</a> <a class="btn btn-lg"
					href="/ASS_SOF3011/Admin/Users?page=${ page + 1 }"> <span
					class="glyphicon glyphicon-forward"></span>
				</a> <a class="btn btn-lg"
					href="/ASS_SOF3011/Admin/Users?page=${ page }"> <span
					class="glyphicon glyphicon-fast-forward"></span>
				</a>
			</div>
		</div>

		<script>
			????????$(document)
					.ready(
							function() {
								// N???u ng?????i d??ng click v??o n??t delete
								// Th?? submit form
								$('#btnDelete').click(function() {
									$(this).parent().submit();
									return false;
								});

								// N???u s??? ki???n submit form x???y ra th?? h???i ng?????i d??ng c?? ch???c kh??ng?
								$('.form-delete')
										.submit(
												function() {
													if (!confirm('B???n c?? ch???c mu???n x??a th??nh vi??n n??y kh??ng?')) {
														return false;
													}
													// Th???c hi???n x??a
													return true;
												});
							});
		</script>
</body>
</html>