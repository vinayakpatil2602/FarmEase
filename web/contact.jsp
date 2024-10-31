<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
<%@include file="component/navbar.jsp"%>
</head>
<body style="background-image: url('./Images/contact.jpg')">

    <%
		String successMsg = (String) session.getAttribute("successMsg");
		String errorMsg = (String) session.getAttribute("errorMsg");

		if (successMsg != null) {
	%>
	<script>
		alert("Your Message has been Send.");
		window.location.assign("contact.jsp");
	</script>
	<%
		session.removeAttribute("successMsg");
		}
	%>
	<%
		if (errorMsg != null) {
	%>
	<script>
		alert("Something went Wrong..!!");
	</script>
	<%
		session.removeAttribute("errorMsg");
		}
	%>

<section>
 <div class="container py-5">
   <div class="card">
     <div class="card-body">
       <h1 class="font-weight-light text-center py-3">Contact Us</h1>
       <div class="row">
         <div class="col-lg-6 col-md-12 col-sm-12">
          
          <div class="row pt-3">
            <div class="col-lg-1 offset-1 col-md-2 col-sm-2">
              <span style="font-size: 30px; color: cadetblue"><i class="fas fa-map-marker-alt"></i></span>
            </div>
            
             <div class="col-lg-10 col-md-9 col-sm-9">
               <h3 class="font-weight-light">Find Us at the office</h3>
               <p>Sweet Homes<br>
                 CSIBER Chowk, Kolhapur<br>
                 Maharashtra
               </p>
            </div>            
          </div>
          
          <div class="row pt-3">
            <div class="col-lg-1 offset-1 col-md-2 col-sm-2">
              <span style="font-size: 30px; color: coral"><i class="fas fa-phone-volume"></i></span>
            </div>
            
             <div class="col-lg-10 col-md-9 col-sm-9">
               <h3 class="font-weight-light">Give Us a Ring</h3>
               <p>Shurti Talane<br>
                 +91 8484932004<br>
                 Maharashtra
               </p>
            </div>            
          </div>
          
         </div>
         
               </div>
       
     </div>
   </div>
 </div>

</section>


</body>
</html>