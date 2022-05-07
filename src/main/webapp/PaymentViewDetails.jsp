<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
</head>
<body><head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style>
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

.innerBody{padding-top:40px;
padding-bottom:100px;
	background-image: url("Images/bg6.png");
   background-repeat: no-repeat;
  background-size: cover;background-attachment: fixed; 
}
.headertxt1{ color: white; text-shadow:2px 2px black;padding: 20px 0px 0px 700px; font-weight: bold;font-size:35px;}
.headertxt2{ color: white; text-shadow:2px 2px black; padding: 10px 0px 0px 675px; font-weight: bold;font-size: 25px;}

.bdform{
padding-top:20px;
padding-bottom:20px;

background-color: white;
opacity:0.8;
display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
  border:1px solid black;
  border-radius: 10px;
  color: black;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.lbl{
	font-weight: bold;
}

.ab{
background-color: #e6e6e6;
border-radius: 5px; margin-left: 20px;
margin-right: 20px;
}
.cd{
background-color: #e1e3e6;
border-radius: 5px;margin-left: 20px;
margin-right: 20px;
}


/* The Modal (background) */
.modal {

  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 50%; height:150px;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

/* The Close Button */
.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color:#ff001e;
  color: white;
}

.modal-body { padding: 2px 16px;;}

.modal-footer {
  padding: 2px 16px;;
  color: white;
}

.cancelbtn{
	width: 100px;
}

.confirmbtn{
	width: 200px;
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
  <a href="javascript:void(0)">Order Now</a>
  <a href="javascript:void(0)">Contact</a>
  <input class="searchBar" type="text" placeholder="Search..">
</div>

<!--/ header -->
<div class="innerBody">
<div class="bdform">
<h4 class="col-md-12 title2">Please check your details and confirm the payment....</h4>
  		<br>
	           <c:forEach var="p" items="${paymentDetails}">
	   
            	<c:set var="paymentID" value="${p.paymentID}"/>
           		<c:set var="cName" value="${p.cName}"/> 
		        <c:set var="cardNumber" value="${p.cardNumber}"/>
		        <c:set var="expDatem" value="${p.expDatem}"/>
		        <c:set var="expDatey" value="${p.expDatey}"/>
		        <c:set var="cvv" value="${p.cvv}"/>
		        <c:set var="cusName" value="${p.cusName}"/>
		        <c:set var="cusContact" value="${p.cusContact}"/>
            
            
            <div class="row mb-1 ab" >
			    <label class="col-sm-5 col-form-label lbl">Customer Name</label>
			    <label class="col-sm-5 col-form-label">: ${p.cusName}</label>
			 </div>
			 <div class="row mb-1 cd" >
			    <label class="col-sm-5 col-form-label lbl">Contact Number</label>
			    <label class="col-sm-5 col-form-label">: ${p.cusContact}</label>
			 </div>
			 <br><br>
             <div class="row mb-1 ab" style="display: none;">
			    <label class="col-sm-5 col-form-label lbl">Payment ID</label>
			    <label class="col-sm-5 col-form-label">: ${p.paymentID}</label>
			 </div>
			 
			 <div class="row mb-1 cd">
			    <label class="col-sm-5 col-form-label lbl">Card Holder's Name</label>
			    <label class="col-sm-7 col-form-label" style="text-transform: capitalize;">: ${p.cName}</label>
			 </div>
			 
			  <div class="row mb-1 ab">
			    <label class="col-sm-5 col-form-label lbl">Card Number</label>
			    <label class="col-sm-7 col-form-label">: ${p.cardNumber}</label>
			 </div>
			 
			 <div class="row mb-1 cd">
			    <label class="col-sm-5 col-form-label lbl">Expire month</label>
			    <label class="col-sm-3 col-form-label">: ${p.expDatem}</label>
			 </div>
			 
			 <div class="row mb-1 ab">
			    <label class="col-sm-5 col-form-label lbl">Expire year</label>
			    <label class="col-sm-3 col-form-label">: ${p.expDatey}</label>
			 </div>
			 
			 <div class="row mb-1 cd">
			    <label class="col-sm-5 col-form-label lbl">CVV</label>
			    <label class="col-sm-3 col-form-label">: ${p.cvv}</label>
			 </div>
			 
       	</c:forEach>          
          <br> 
<c:url value="PaymentUpdate.jsp" var="updatePay">
  <c:param name="paymentID" value="${paymentID}"/>
  <c:param name="cName" value="${cName}"/>
   <c:param name="cardNumber" value="${cardNumber}"/>
  <c:param name="expDatem" value="${expDatem}"/>
  <c:param name="expDatey" value="${expDatey}"/>
  <c:param name="cvv" value="${cvv}"/>
</c:url>
<a href="${updatePay}">
  <input class="btn btn-primary" style="width: 45%; margin-left: 30px;" type="button" name="update" value="Update Payment">
</a>


  <c:url value="PaymentDelete.jsp" var="deletePay">
    <c:param name="paymentID" value="${paymentID}"/>
  <c:param name="cName" value="${cName}"/>
  <c:param name="name" value="${name}"/>
  <c:param name="cardNumber" value="${cardNumber}"/>
  <c:param name="expDatem" value="${expDatem}"/>
  <c:param name="expDatey" value="${expDatey}"/>
  <c:param name="cvv" value="${cvv}"/>
  </c:url>
  
<a href="${deletePay}">
  <input class="btn btn-danger" style="width: 45%;" type="button" name="delete" value="Delete Payment" >
</a>

<br><br>
<button id="myBtn" class="btn btn-warning" style="width: 90%;margin-left: 30px; " >Confirm Payment</button>
</div>


<!-- The Modal -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <h2>Confirm Payment</h2>
    </div>
    <div class="modal-body">
      <p>Are you sure you want to confirm payment?</p>
    </div>
    
    
 <div class="modal-footer">   
    <c:url value="PaymentReciept.jsp" var="confirmPay">
	  <c:param name="cusContact" value="${cusContact}"/>
	  <c:param name="paymentID" value="${paymentID}"/>
	</c:url>
<a href="${confirmPay}">
  <input  type="button" name="Confirm" class="btn btn-danger confirmbtn" value="Confirm Payment">
</a>


        <button type="button" onclick="document.getElementById('myModal').style.display='none'" class="btn btn-secondary cancelbtn">Cancel</button>
       <!--  <button type="button" onclick="document.location='PaymentReciept.jsp?telephone=paymentID'" class="btn btn-danger confirmbtn">Confirm</button> -->
    </div>
  </div>

</div>



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
<!-- <script>
window.onbeforeunload = function(e) {
    return 'dfgdgdg';
 };
</script> -->

</body>
<script type="text/javascript">

//Get the modal
var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];

btn.onclick = function() {
modal.style.display = "block";
}
span.onclick = function() {
modal.style.display = "none";
}
window.onclick = function(event) {
if (event.target == modal) {
 modal.style.display = "none";
}
}


//scroll
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
</script>