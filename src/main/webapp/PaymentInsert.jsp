<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String idorder = request.getParameter("idorder");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pizzahub_db";
String userid = "root";
String password = "root123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Payment</title>
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
padding-left:50px;
padding-right:50px;
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

.inptname{ width: 250px; border:1px solid grey;}
.inptcnum{ width: 300px; border:1px solid grey;}
.inptex{ width: 130px; border:1px solid grey;}
.inptcvv{ width: 130px; border:1px solid grey;}
</style>

<title>Add Item</title>
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
		
  		<br>
		<%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from pizzahub_db.order where idorder='"+idorder+"'";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
				<form method="post" action="AddPaymentServlet" class=" needs-validation"  novalidate>
				
			<div class="mb-3">
			  <label class="form-label lbl">Customer Name</label>
			  <input type="text" name="cusName" class="form-control form-control-sm " value="<%=resultSet.getString("name") %>" style="text-transform: capitalize; font-weight: bolder;" readonly>
			  </div>
			  <div class="mb-3">
			  <label class="form-label lbl">Customer Contact Number</label>
			  <input type="text" name="cusContact" class="form-control form-control-sm " value="<%=resultSet.getString("telephone") %>" style="text-transform: capitalize; font-weight: bolder;" readonly>
			  </div>
				<br><br>
				<h4 class="col-md-12 title2">Please enter your card details here...</h4>
				<br>
			<div class="mb-3">
			  <label class="form-label lbl">Card Holder name</label>
			  <input type="text" name="cHName" class="form-control form-control-sm inptname" placeholder="Name..." style="text-transform: capitalize;" required>
			  <div class="invalid-feedback">
				      Please enter the Card Holder name.
				</div>
			</div>
			
			<div class="mb-3">
			  <label class="form-label lbl">Card Number</label>
			  <div class="row g-1" style="margin-left:0.5px;">
			  <input type="text" id="cnum" name="cardNumber" class="form-control form-control-sm inptcnum" placeholder="XXXX XXXX XXXX XXXX" required>
			  <img src="Images/atm cards.png" style="width: 30px; height: 30px; margin-left: 5px;">
			  </div>
			  <div class="invalid-feedback">
				      Please enter the Card Number.
				</div>
			</div>
			
			<div class="mb-3 row g-3">
			<div class="col-md-6">
			<label class="form-label lbl">Expire month</label>
			  <select name="expDatem" class="form-control form-control-sm inptex" required>
						<option selected value="">mm</option>
						<option value="1">1</option><option value="2">2</option><option value="4">4</option><option value="5">5</option>
						<option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option>
						<option value="10">10</option><option value="11">11</option><option value="12">12</option>
					</select>
			</div>
			<div class="col-md-3">
					<label class="form-label lbl">Expire year</label>
			  		<select name="expDatey" class="form-control form-control-sm inptex"  required>
						<option selected value="">yy</option>
						<option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option>
						<option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option>
						<option value="2030">2030</option><option value="2031">2031</option><option value="2032">2032</option><option value="2033">2033</option>
						<option value="2034">2034</option><option value="2035">3205</option><option value="2036">3206</option><option value="2037">2037</option>
					</select>
					</div>
			  <div class="invalid-feedback">
				      Please enter the Expire Date.
				</div>
			</div>
			
			
			<div class="mb-3">
			  <label class="form-label lbl">CVN</label>
			  <input type="number" name="cvv" class="form-control form-control-sm inptcvv" placeholder="cvv" data-maxlength="3" oninput="this.value=this.value.slice(0,this.dataset.maxlength)" required>
			  <div class="invalid-feedback">
				      Please enter the cvv.
				</div>
			</div>
			<div class="mb-3" style=" margin:50px 0px 0px 160px;">
			  <button class="btn btn-primary" style="width: 200px;" type="submit">Add</button>
			 
			  <button class="btn btn-danger" style="width: 200px;" type="reset">Clear</button>
			</div>
        </form>
        <%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%> 
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
            <li>
              <a href="AdminLogin.jsp" class="text-white">Admin</a>
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

<!-- <script type="text/javascript">
        window.addEventListener('beforeunload', function (e) {
            e.preventDefault();
            e.returnValue = '';
        });
</script> -->
</body>
<script type="text/javascript">
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
'use strict'

// Fetch all the forms we want to apply custom Bootstrap validation styles to
var forms = document.querySelectorAll('.needs-validation')

// Loop over them and prevent submission
Array.prototype.slice.call(forms)
 .forEach(function (form) {
   form.addEventListener('submit', function (event) {
     if (!form.checkValidity()) {
       event.preventDefault()
       event.stopPropagation()
     }

     form.classList.add('was-validated')
   }, false)
 })
})()



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




var input = document.getElementById("cnum");

input.onkeydown = function () {
    if (input.value.length > 0) {

        if (input.value.length % 4 == 0) {
            input.value += "    ";
        }
    }
}


</script>
</html>