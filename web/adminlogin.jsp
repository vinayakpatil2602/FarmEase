<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- font awesome cdn -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
body {
	opacity: 0.9;
}
</style>

</head>
<body style="background-image: url('../Images/header.jpg')">
	<br>
	<div class="row">
		<div class="col-lg-5 m-auto">
			<div class="card mt-5 bg-dark">
				<div class="card-title text-center mt-3">
					<img src="./Images/ab.jpg" width="150" height="150">
					<h2 style="color: white" class="mt-1">Admin Login</h2>
				</div>

				<%
					String validMsgg = (String) session.getAttribute("validMsgg");
					String invalidMsgg = (String) session.getAttribute("invalidMsgg");

					if (validMsgg != null) {
				%>
				<script>
					alert("Logged in Successfully");
					window.location.assign("admin/dashboard.jsp");
				</script>
				<%
					session.removeAttribute("validMsgg");
					}
				%>
				<%
					if (invalidMsgg != null) {
				%>
				<script>
					alert("Invalid Creadential !! Please Try Again..");
				</script>
				<%
					session.removeAttribute("invalidMsgg");
					}
				%>


				<div class="card-body">
					<form action="adminlogin" method="post">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i
									class="fa fa-user fa-2x"></i>
								</span>
							</div>
							<input type="text" name="username" class="form-control py-3"
								placeholder="Enter User Name">
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i
									class="fa fa-lock fa-2x"></i>
								</span>
							</div>
							<input type="password" name="password" class="form-control py-3"
								placeholder="Enter Password">
						</div>

						<input type="submit" value="Login" class="btn btn-success px-5">
						<a href="index.jsp" class="float-right mt-2 text-white">Go
							Back To Home</a>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>