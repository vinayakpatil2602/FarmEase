<%@page import="com.farm.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.farm.DbConnect"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<link rel="stylesheet" href="../component/sidebar.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/sidebar.js"></script>
<title>Admin Dashboard</title>

<style type="text/css">
.nav-item {
	padding: 3px !important;
}

.list-group-item {
	padding: 8px !important;
}

.container1 {
	background-color: lightgrey;
	border-radius: 8px;
}

h2, h4 {
	padding: 3px;
}

.mydiv:hover {
	transform: translateY(-10px)
}

.glow {
	font-size: 80px;
	color: #fff;
	text-align: center;
	-webkit-animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from { 
  text-shadow :0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073,
	0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }

  to {
	text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px
		#ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
</style>
</head>

<body>
		<!-- Vertical navbar start -->
	<div class="bg-white vertical-nav" id="sidebar">

		<div class="bg-light py-4 px-3 mb-1">
			<p class="font-weight-bold text-uppercase px-3 sidebar-title text-danger text-center">FarmEase Ordering System</p>

			<div class="media d-flex align-items-center">
				<img src="../Images/admin.png" width="90" height="90"
					class="mr-3 rounded-circle img-thumbnail shadow-sm">

				<div class="media-body">
					<h4 class="mb-0">Admin</h4>
				</div>
			</div>
		</div>

		<ul class="nav flex-column bg-white">

			<li class="nav-item"><a href="dashboard.jsp"
				class="nav-link text-dark bg-light"> <i
					class="fas fa-tachometer-alt fa-fw mr-3 text-primary"></i>
					Dashboard
			</a></li>
			
						<li class="nav-item"><a href="view_User.jsp"
				class="nav-link text-dark bg-light"><i class="fas fa-users fa-fw mr-3 text-primary"></i> 
					View User
			</a></li>
			
			<li class="nav-item"><a href="view_Booking.jsp"
				class="nav-link text-dark bg-light"><i class="fas fa-book-reader fa-fw mr-3 text-primary"></i>
					View Booking
			</a></li>

			<li class="nav-item dropdown"><a href=""
				class="nav-link dropdown-toggle text-dark bg-light" id="navbardrop"
				data-toggle="dropdown"> <i class="fab fa-product-hunt fa-fw mr-3 text-primary"></i> Product</a>

				<div class="dropdown-menu">
					<a href="addProduct.jsp" class="dropdown-item">Add Product</a> 
					<a href="viewProduct.jsp" class="dropdown-item">View Product</a>
				</div>
			</li>
			
			<li class="nav-item dropdown"><a href=""
				class="nav-link dropdown-toggle text-dark bg-light" id="navbardrop"
				data-toggle="dropdown"> <i class="fab fa-codepen fa-fw mr-3 text-primary"></i> Category</a>

				<div class="dropdown-menu">
					<a href="addCategory.jsp" class="dropdown-item">Add Category</a> 
					<a href="viewCategory.jsp" class="dropdown-item">View Category</a>
				</div>
			</li>
			
			<li class="nav-item"><a href="search.jsp"
				  class="nav-link text-dark bg-light"> <i
					class="fas fa-tachometer-alt fa-fw mr-3 text-primary"></i>
					Search
			   </a></li>
			   				
				<li class="nav-item dropdown"><a href=""
				class="nav-link dropdown-toggle text-dark bg-light" id="navbardrop"
				data-toggle="dropdown"> <i
					class="fas fa-cloud-moon-rain fa-fw mr-3 text-primary"></i> Report</a>

				<div class="dropdown-menu">
					<a href="betweenBookingQueries.jsp" class="dropdown-item">Booking B/W Dates</a>
				</div></li>
				
			<li class="nav-item"><a href="../logout"
				class="nav-link text-dark bg-light"> <i
					class="fas fa-power-off fa-fw mr-3 text-primary"></i>
					Logout
			</a></li>
			
		</ul>
	</div>


	<!-- Vertical navbar end -->

	<!-- content placeholder start -->

	<div class="page-content p-4" id="content">
		<a data-toggle="modal" data-target="#exampleModalCenter" title="logout" class="text-white float-right"><i
			class="fas fa-power-off"></i> <b>Logout</b></a>

		<button id="sidebarCollapse" type="button"
			class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4">
			<i class="fas fa-bars mr-2"></i> <small
				class="text-uppercase font-weight-bold">Toggle</small>
		</button>

<!-- Logout Model -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="text-center">
        <h4>Do You Want to Logout</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
        </div>
      </div>
     </div> 
    </div>
  </div>
<!-- Close Logout Model -->
  <%
    String msg=request.getParameter("msg");
    if("valid".equals(msg))
    {
  %>
    <script>
		alert("New Product Add Successfully..");
		window.location.assign("viewProduct.jsp");
	</script>  	
  <%
    }
  %>
<div class="container card shadow m-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange">Add New Product</h5>
             <br>
 <div class="row">
    <div class="col-sm-12">
        <form method="post" enctype="multipart/form-data" action="../Upload">
            <div class="form-row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Product Name</label>   
                        <input type="text" name="pname" class="form-control" placeholder="Product Name" required>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Product Category</label>   
                        <select name="pcat" class="form-control" required>
                        <%
                                     try
                                      {
                                    	Connection con= DbConnect.Connect();
	                                    Statement st = con.createStatement();
	                                    ResultSet rs = st.executeQuery("select category_name from category");
	                                    while(rs.next())
	                                    {
	                                   %>
	                                       <option value="<%=rs.getString("category_name")%>"><%=rs.getString("category_name")%></option>
	                                   <%
	                                    }
                                     }

								catch(Exception e){
									out.print(e);
                                }
								%>
								</select>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Product Price</label>   
                        <input type="text" name="price" class="form-control" placeholder="Product Price" required>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Product Photo</label>   
                        <input type="file" name="pic" accept=".jpeg,.png,.jpg" class="custom-control" required>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Discount Price</label>   
                        <input type="text" name="dprice" class="form-control" placeholder="Discount Price" required>
                    </div>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
                        
            <div class="form-group">
                <label>Description</label>
                <textarea rows="4" class="form-control" style="resize: none" name="descr" required></textarea>
            </div>
            <input type="submit" value="Save Product" class="btn btn-primary float-right">
        </form>
    </div>
</div>			


</body>
</html>