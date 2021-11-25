<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite</title>
<style>
body {
	position: relative;
	width: 100%;
	height: 0;
	background-image:
		url(https://indainam.com/wp-content/uploads/2017/10/mau-background-don-gian-01-1024x640.jpg);
}

/* Add a gray background color and some padding to the footer */
footer {
	position: relative;
	padding: 15px;
	bottom: 0;
	width: 100%;
	color: white;
	background-image:
		url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg");
}
</style>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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

			<ul class="nav navbar-nav">
				<li><a href="/ASS_SOF3011/Home">Home</a></li>
				<c:if test="${ sessionScope.acc != null }">
					<li><a href="/ASS_SOF3011/Favorite">Favorite</a></li>
				</c:if>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${ sessionScope.acc == null }">
					<li><a href="/ASS_SOF3011/Login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
				<c:if test="${ sessionScope.acc != null }">
					<li><a><b> Hi, ${ sessionScope.acc.fullname }</b></a></li>
					<li><a href="/ASS_SOF3011/myAccount"><span
							class="glyphicon glyphicon-user"></span> My Account</a></li>
					<li><a href="/ASS_SOF3011/Logout"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</c:if>

			</ul>
		</div>
	</nav>

	<div class="container">

		<c:if test="${ sessionScope.acc != null }">
			<div class="row">
				<c:forEach var="fvr" items="${ listFvr }">
					<div class="col-sm-4" align="center">
						<div class="panel panel-warning">
						<a href="/ASS_SOF3011/Details?id=${ fvr.id }" target="_blank">
							<div class="panel-heading" id="title">${ fvr.title }</div></a>
							<div class="panel-body">
								
									<%-- 		<img src="${ fvr.poster }" class="img-responsive"
									style="width: 100%" alt="Image"> --%>
									<div class="embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item"
											src="https://www.youtube.com/embed/tgbNymZ7vqY"></iframe>
									</div>
								
							</div>
							<div class="panel-footer">
								<form
									action="/ASS_SOF3011/unlike?Vdid=${ fvr.id }&Usid=${ sessionScope.acc.id }"
									method="get">
									<button
										${ sessionScope.acc != null ? 'type="submit"' : 'type="button"' }
										class="btn btn-danger" onclick="btnAlert()">
										<span class="glyphicon glyphicon-thumbs-down"></span>Unlike
									</button>
									<input id="videoId" type="hidden" name="videoId"
										value="${ fvr.id }">
									<button type="button" class="btn btn-warning"
										onclick="btnAlert()" data-toggle="modal"
										data-target="#myModal" data-id="${ fvr.id }" id="share">
										<span class="glyphicon glyphicon-share-alt"></span> Share
									</button>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:if>

		<br>
	</div>

	<!-- Footer -->
	<br>

	<footer class="container-fluid text-center">
		<strong>Fpt Poly &copy;2020. All Rights Reserved</strong>
	</footer>

	<c:if test="${ sessionScope.acc != null }">
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Chia sẻ tiểu phẩm</h4>
					</div>
					<form action="/ASS_SOF3011/SendEmailfromFvr?id=${ vidFind.id }"
						method="get">
						<div class="modal-body" id="modal-body">
							<div class="form-group">
								<input id="posterId" type="hidden" name="posterId" value="">
								<label for="email">Nhập email bạn muốn chia sẻ:</label> <input
									type="email" class="form-control" id="email"
									placeholder="Enter email" name="email">
							</div>
							<button type="submit" class="btn btn-info">Send</button>
						</div>
					</form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</c:if>

	<script type="text/javascript">
		$(document).on("click", "#share", function() {
			var myPosterId = $(this).data('id');
			$(".modal-body #posterId").val(myPosterId);
			$('#myModal').modal('show');
		});
	</script>
</body>
</html>