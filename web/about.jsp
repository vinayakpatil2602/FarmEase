<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.prjdiv:hover {
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.3);
	transform: translateY(-20px)
}
</style>
<title>About Page</title>
<%@include file="component/allCss.jsp" %>
<%@include file="component/navbar.jsp" %>
</head>
<body>
	<div class="container" style="margin-top: 150px">
		<h2 class=text-center
			style="font-family: 'Monotype Corsiva'; color: #E6120E">About Us</h2>
		<div class="row">
			<div class="col-sm-4 prjdiv">
				<img src="./Images/abt.jpg" width="300" height="200" class="img-responsive">
			</div>
			<div class="col-sm-8 prjdiv"
				style="font-weight: bold; margin-top: 30px">Hola folks! It
				looks like you are here to know us better. FarmEase Ordering is a user
				friendly, easy to use website where one can order farming trelated things by just
				search products and fill up a simple products order form available
				on the website. Admin can see the product order request and deliver
				product. To use all these features you need to login first . So
				register fast and order products.</div>
		</div>
	</div>
</body>
</html>