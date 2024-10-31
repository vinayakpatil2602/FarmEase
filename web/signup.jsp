<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup Page</title>
<%@include file="component/allCss.jsp" %>
<%@include file="component/navbar.jsp" %>

<script type="text/javascript">
    function checkpassword(){
    	if(document.signup.password.value!=document.signup.confirmpassword.value){
    		alert('Password and Confirm Password field does not match');
    		document.signup.confirmpassword.focus();
    		return false;
    	}
    	return true;
    }
  </script>
  
</head>
<style>
body{
opacity: 0.7;
}
</style>
<body style="background-image: url('./Images/5.jpeg') ;">

    <%
        String msg=request.getParameter("msg");
		if ("validMsg".equals(msg)) {
	%>
	<script>
		alert("Registration Successfully...");
		window.location.assign("login.jsp");
	</script>
	<%
		}
	%>
	<div class="container card shadow my-5 bg-dark">
	 <div class="card-body text-white">
		<h2 style="margin-top: 20px" align="center">Registration Form</h2>
		<hr>

		<div class="container-fluid" style="width: 70%; margin-top: 5%">
			<form method="post" action="signup" name="signup" enctype="multipart/form-data">
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">First Name</label> <input type="text"
							class="form-control" placeholder="Enter First Name" name="firstname"
							id="inputEmail4">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Last Name</label> <input type="text"
							class="form-control" name="lastname" placeholder="Enter Last Name"
							id="inputPassword4">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label> <input
							type="password" class="form-control" name="password"
							id="inputPassword4" placeholder="Enter Password">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Confirm Password</label> <input
							type="password" class="form-control" name="confirmpassword"
							id="inputPassword4" placeholder="Enter Password Again">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="email"
							placeholder="Enter Email">
					</div>

					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">Contact</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Enter Contact Detail" name="contact">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">City</label> <input type="text"
							class="form-control" id="exampleInputPassword1"
							placeholder="Enter City" name="city">
					</div>

					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">Full Address</label> <textarea class="form-control" id="exampleInputPassword1"
							placeholder="Enter Address Detail" name="address"></textarea>
					</div>
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
	</div>
</body>
</html>