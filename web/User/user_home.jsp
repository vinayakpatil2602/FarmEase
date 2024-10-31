<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="com.farm.Product"%>
<%@page import="com.farm.DbConnect"%>
<%@page import="com.farm.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
<%@include file="allCss.jsp" %>
<%@include file="navbar1.jsp" %>

<link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script src="../js/jquery.min.js"></script>
<script src="../js/script.js" type="text/javascript"></script>
<script src="../js/move-top.js" type="text/javascript"></script>
<script type="text/javascript" src="js/easing.js"></script> 
        
</head>
<body>

 <div id="demo" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
  </ul>
  <!-- The slideshow -->
  <div class="carousel-inner" style="width:100%;height:550px">
    <div class="carousel-item active">
      <img src="../Images/n1.jpg" alt="Los Angeles" style="width:100%;height:550px">
    </div>
    <div class="carousel-item">
      <img src="../Images/n2.jpg" alt="Chicago" style="width:100%;height:550px">
    </div>
    <div class="carousel-item">
      <img src="../Images/n3.jpg" alt="New York" style="width:100%;height:550px">
    </div>

    <div class="carousel-item">
      <img src="../Images/n4.jpg" alt="New York" style="width:100%;height:550px">
    </div>

    <div class="carousel-item">
      <img src="../Images/n5.jpg" alt="New York" style="width:100%;height:550px">
    </div>
    
    <div class="carousel-item">
      <img src="../Images/n6.jpg" alt="New York" style="width:100%;height:550px">
    </div>
    
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<!-- Show Categories pic -->
    <%
	    String succMsg = (String) session.getAttribute("succMsg");
		if (succMsg != null) {
	%>
	<script>
		alert("Logout Successfully...");
		window.location.assign("index.jsp");
	</script>
	<%
		session.removeAttribute("succMsg");
		}
	%>
<br>
<div class="container">
  <br>
		<h2 class="text-danger mt-5">Features Product</h2>
         <hr>
		<div class="row mb-5">

       
<div class="main">
    <div class="content">
        <%
            if (session.getAttribute("msg") != null) {
        %>
        <div class="row">
            <div class="col-sm-5 mx-auto">
                <div class="alert alert-success text-center p-1 my-1">
                    <strong><%= session.getAttribute("msg")%></strong>
                </div>
            </div>
        </div>
        <%
                session.removeAttribute("msg");
            }
        %>
        <div class="section group">
           <%
               try {
				Connection con1 = DbConnect.Connect();
				Statement st = con1.createStatement();
				ResultSet rs = st.executeQuery("select * from product_db where featured='Yes'");
				int i = 0;
				while (rs.next()) {
					i++;
                              
            %>
            
            <div class="grid_1_of_4 images_1_of_4 overflow-hidden">
                <a href="cart.jsp?prodid=<%= rs.getInt("prodid")%>&qty=1">
                    <img height="200" width="200" src="../Images/<%= rs.getString("photo")%>" alt="" /></a>
                    
                <h2 class="p-2 border mt-1"><%= rs.getString("pname")%></h2>       

                <p class="p-0"><%= rs.getString("pcat")%></p>
                <p class="p-1"><span class="strike">&#8377;<%= rs.getString("price")%></span>
                                <span class="price">&#8377;<%= rs.getString("disc_price")%></span></p>
                <% if (!rs.getString("instock").equals("In Stock")) {%>
                <div class="pos-absolute" 
                     style="transform: rotate(-45deg);top:125px;left:-90px;width:420px">
                    <div class="alert alert-danger font-weight-bold p-2 ">
                        <%= rs.getString("instock")%>
                    </div>
                </div> 
                               
                <div class="button mr-0">
                    <a href="javascript:void(0)">Add to Cart</a>
                </div>
                <div class="button ml-0"><span><a href="javascript:void(0)" class="details">Details</a></span></div>                
                
                <% } else { %>
                
                <div class="button mr-0">
                    <a href="../Operation?prodid=<%= rs.getInt("prodid")%>&qty=1">Add to Cart</a>
                </div>
                <div class="button ml-0"><span><a href="cart.jsp?prodid=<%= rs.getInt("prodid")%>" class="details">Details</a></span></div>                
                
                <% } %>
            </div>
            <%
				}
				} catch (Exception e) {
					out.print(e);
				}
			%>
        </div>
     </div>
     </div>
</div>
</div>
</body>
</html>