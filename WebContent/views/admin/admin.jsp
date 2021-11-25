<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
			<ul class="nav navbar-nav">
				
				<li><a href="/ASS_SOF3011/Admin/Videos">Videos</a></li>
				<li><a href="/ASS_SOF3011/Admin/Users">Users</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				
				<li><a href="/ASS_SOF3011/Login"><span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
<!-- 		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#favorites"><b class="text-primary">Favorites</b></a></li>
			<li><a data-toggle="tab" href="#favoUsers"><b class="text-primary">Favorite Users</b></a></li>
			<li><a data-toggle="tab" href="#sharedFriend"><b class="text-primary">Shared Friend</b></a></li>
		</ul> -->

		<div class="tab-content">
<!--  -->		<div id="favorites" class="tab-pane fade in active">
				<jsp:include page="${ viewsFavorites }"></jsp:include>
			</div> 
			<div id="favoUsers" class="tab-pane fade">
				<jsp:include page="${ viewsFavorite_User }"></jsp:include>
			</div>
			<div id="sharedFriend" class="tab-pane fade">
				<jsp:include page="${ viewsShared_Friend }"></jsp:include>
			</div>
		</div>

	</div>
</body>
</html>
 --%>