<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">



<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>



<title>Order Details</title>
</head>
<body><head>


<style type="text/css">
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
   background-image: url("Images/headerImg2.jpg");
   background-repeat: no-repeat;
  background-size: cover;
  height: 150px;
}

#navbar {
  overflow: hidden;
  background-color: #261e06;
  z-index: 2;
}

#navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #f7eb65;
  color: black;
}

#navbar a.active {
  background-color: #04AA6D;
  color: white;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 70px;
}

.searchBar {
  float: right;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  border: none;
  border-radius: 5px;
  font-size: 17px;
}
/*  body*/

.innerBody{padding-top:70px;
padding-bottom:100px;
	background-image: url("Images/iiimg.jpeg");
   background-repeat: no-repeat;
  background-size: cover;background-attachment: fixed;
  z-index: 1;
}

.headertxt1{ color: white; text-shadow:2px 2px black;padding: 20px 0px 0px 700px; font-weight: bold;font-size:35px;}
.headertxt2{ color: white; text-shadow:2px 2px black; padding: 10px 0px 0px 675px; font-weight: bold;font-size: 25px;}

.txt3{color: black; text-shadow:1px 1px black;padding: 10px 0px 0px 80px; font-weight: bold;font-size:35px;}

.txt4{color: black; text-shadow:0px 0px black;padding: 5px 0px 0px 80px; font-weight: bold;font-size:20px;margin-left:120px}

.txt5{color: black; text-shadow:0px 0px black;padding: 5px 0px 0px 20px; font-weight: bold;font-size:20px;margin-left:80px;}

.bdform{
padding-top:20px;
padding-bottom:20px;
padding-left:100px;
padding-right:100px;
background-color: white;
opacity:0.8;
display: block;
  margin-left: auto;
  margin-right: auto;
  width: 60%;
  border:2px solid black;
  border-radius: 10px;
  color: black;
  
}
.lbl{
	font-weight: bold;
}

.inpt{
border:1px solid grey;
}

</style>
</head>
<body>
<!-- header -->
<div class="header">
	<img src="Images/PizzaHubLogo-removebg.png" style="float:left; height: 130px; width: 200px;">
	<div class="headertxt">
	<h2 class="headertxt1">Pizza Hub</h2>
  	<p class="headertxt2">We have excellent quality of pizza</p>
	</div>
</div>

<div id="navbar">
  <a  href="Home.jsp">Home</a>
  <a href="javascript:void(0)">Menu</a>
  <a href="OrderInsert.jsp">Order Now</a>
  <a href="javascript:void(0)">Contact</a>
  <input class="searchBar" type="text" placeholder="Search..">
</div>

<!--/ header -->

<div class="innerBody" >

<div class="bdform" >
<div id="list">
<h2 class="txt3" style="margin-left: 150px;">Order Details</h2>
  		<br>
  		
  		
<table >
	           <c:forEach var="o" items="${OrdDetails}">
	   
            	<c:set var="idorder" value="${o.idorder}"/>
           		<c:set var="name" value="${o.name}"/>  
		        <c:set var="address" value="${o.address}"/> 
		        <c:set var="telephone" value="${o.telephone}"/> 
		        <c:set var="flavour" value="${o.flavour}"/>
		        <c:set var="type" value="${o.type}"/>
		        <c:set var="size" value="${o.size}"/>
		        <c:set var="cheese" value="${o.cheese}"/>
		        <c:set var="instructions" value="${o.instructions}"/>
            
            
            	<tr>
                    <td><h4 class="txt4">Order ID </h4></td>
                    <td><h4 class="txt5">${o.idorder} </h4></td>
                </tr>
                <tr>
                    <td><h4 class="txt4">Name     </h4></td>
                     <td><h4 class="txt5">${o.name}</h4></td>
                </tr> 
                <tr>
                    <td><h4 class="txt4">Address  </h4></td>
                    <td><h4 class="txt5">${o.address}</h4></td>
                </tr> 
                <tr>
                <tr>
                    <td><h4 class="txt4">Telephone </h4></td>
                    <td><h4 class="txt5">${o.telephone}</h4></td>
                </tr> 
                <tr>
                    <td><h4 class="txt4">Flavour </h4></td>
                    <td><h4 class="txt5">${o.flavour}</h4></td>
                </tr>
                <tr>
                    <td><h4 class="txt4">Type </h4></td>
                    <td><h4 class="txt5">${o.type}</h4></td>
                </tr>
                <tr>
                    <td><h4 class="txt4">Size </h4></td>
                    <td><h4 class="txt5">${o.size}</h4></td>
                </tr>
                <tr>
                    <td><h4 class="txt4">Cheese </h4></td>
                    <td><h4 class="txt5">${o.cheese}</h4></td>
                </tr>
                <tr>
                    <td><h4 class="txt4">Instructions </h4></td>
                    <td><h4 class="txt5">${o.instructions}</h4></td>
                </tr>
                
       			</c:forEach> 
       			
</table>
</div>

<c:url value="OrderUpdate.jsp" var="updateOrd">
  <c:param name="idorder" value="${idorder}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="address" value="${address}"/>
  <c:param name="telephone" value="${telephone}"/>
  <c:param name="flavour" value="${flavour}"/>
  <c:param name="type" value="${type}"/>
  <c:param name="size" value="${size}"/>
  <c:param name="cheese" value="${cheese}"/>
  <c:param name="instructions" value="${instructions}"/>
</c:url>
<br>
<a style="marging-left:50px;" href="${updateOrd}">
 <input type="button"  class="btn btn-dark" style="width:30%;margin-left:150px;"name="update" value="Update Order"> 
</a>


  <c:url value="OrderDelete.jsp" var="DeleteOrd">
    <c:param name="idorder" value="${idorder}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="address" value="${address}"/>
  <c:param name="telephone" value="${telephone}"/>
  <c:param name="flavour" value="${flavour}"/>
  <c:param name="type" value="${type}"/>
  <c:param name="size" value="${size}"/>
  <c:param name="cheese" value="${cheese}"/>
  <c:param name="instructions" value="${instructions}"/>
  </c:url>
  
<a href="${DeleteOrd}">
  <input type="button" class="btn btn-warning"style="width: 30%;" name="delete" value="Delete Order" >
</a>
<br>
<br> 
<div>   
    <c:url value="PaymentInsert.jsp" var="confirmOrd">
	  <c:param name="idorder" value="${idorder}"/>
	</c:url>
	
<a href="${confirmOrd}">
  <input style="width: 60%;margin-left:150px;" type="button" name="Confirm" class="btn btn-danger confirmbtn" value="Confirm Order">
</a>
<br><br>



           
           
           </div>
           
           </div>
           
                              
<button class="btnd btn btn-secondary"  style="float:right;margin: 0px 10px 10px 0px" onclick="print()">Download Report <i class="fa fa-download"></i></button>          
</div>

 <!-- Footer -->
<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1 fa fa-facebook" href="#!" role="button"></a>
      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1 fa fa-twitter" href="#!" role="button"></a>
      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1 fa fa-google" href="#!" role="button"></a>
      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1 fa fa-instagram" href="#!" role="button"></a>
      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1 fa fa-linkedin" href="#!" role="button"></a>
    </section>
    <!-- Section: Social media -->

    
    <!-- Section: Form -->

    <!-- Section: Text -->
    <section class="mb-4">
      <p>
        There's nothing cookie-cutter about Pizza Hub. 
        Not our pizzas. Not our people. And definitely not the way we live life. 
        Around here, we don't settle for anything less than food we're proud to serve.
      </p>
    </section>
    <!-- Section: Text -->

    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row" style="font-size: 12px;">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Order Now</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">PROMOS</a>
            </li>
            <li>
              <a href="#!" class="text-white">APPETIZERS</a>
            </li>
            <li>
              <a href="#!" class="text-white">DESSERTS</a>
            </li>
            <li>
              <a href="#!" class="text-white">BEVERAGES</a>
            </li>
            <li>
              <a href="#!" class="text-white">PASTAS</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">About</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">CAREERS</a>
            </li>
            <li>
              <a href="#!" class="text-white">ABOUT US</a>
            </li>
            <li>
              <a href="#!" class="text-white">FEEDBACK</a>
            </li>
            <li>
              <a href="#!" class="text-white">HOTLINE</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Policy</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">TERMS & CONDITIONS</a>
            </li>
            <li>
              <a href="#!" class="text-white">PRIVACY POLICY</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">My PizzaHub</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Sign in</a>
            </li>
            <li>
              <a href="#!" class="text-white">Register</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
  <a class="text-white" href="#">2022 Pizza Hub, Inc. All rights reserved</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->
</body>
<script type="text/javascript">



window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}

function print() {
	var element = document.getElementById("list");
	var opt = {
			margin: 1,
			filename: 'Order Report.pdf',
			image: { type:'jpeg', quality:1 },
			html2canvas: {scale:2},
			jsPDF:{unit: 'in' , format:'letter', orientation:'landscape'}
	};
	html2pdf().from(element).set(opt).save();
}
</script>
</html>