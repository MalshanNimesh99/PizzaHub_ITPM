<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Insert here</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<!-- header css js malshan -->
<style>
.header {
	background-image: url("photos/pizza-blck2.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: 150px;
}

body {
	background-image: url("photos/bacground.jpeg");
	background-repeat: repeat;
}

#navbar {
	overflow: hidden;
	background-color: #010101ba;
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

.sticky+.content {
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
</style>

<script>
	window.onscroll = function() {
		myFunction()
	};

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
<!-- end of header css js malshan -->
<style>
.deli14 {
	position: absolute;
	margin-top: -453px;
	margin-left: 702px;
}

.container {
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	border-radius: 5px; /* 5px rounded corners */
}

input[type=text], select {
	padding: 5px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 39%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>


<script>
	function InsertValidation() {

		if (document.getElementById('Fname').value == "") {
			alert("Please Enter Full Name Before You Submit The Details");
			return false;
		}
		if (document.getElementById('addLineOne').value == "") {
			alert("Please Enter AddressLine 01 Before You Submit The Details");
			return false;
		}
		if (document.getElementById('addLineTwo').value == "") {
			alert("Please Enter AddressLine 02 Before You Submit The Details");
			return false;
		}
		if (document.getElementById('PostalCo').value == "") {
			alert("Please Enter Postal code Before You Submit The Details");
			return false;
		}
		if (document.getElementById('DeliveryPro').value == "") {
			alert("Please Enter Province Before You Submit The Details");
			return false;
		}
		if (document.getElementById('eliveryCityy').value == "") {
			alert("Please Enter City Before You Submit The Details");
			return false;
		}
		if (document.getElementById('DelivertCountry').value == "") {
			alert("Please Enter Country Before You Submit The Details");
			return false;
		}
	}
</script>

</head>
<body>
	<!-- header malshm -->
	<div class="header">
		<img src="photos/pizHub.jpeg"
			style="float: left; height: 130px; width: 200px; border-radius: 25px; padding: 15px;">
	</div>

	<div id="navbar">
		<a href="Home.jsp">Home</a> <a href="javascript:void(0)">Menu</a> <a
			href="javascript:void(0)">Order Now</a> <a href="javascript:void(0)">Contact</a>
		<input class="searchBar" type="text" placeholder="Search..">
	</div>
	</br>
	<!--/ header -->

	<div class="container h-100">
		<h2 aling="center">Confirm The Details Required For Delivery</h2>
		<br>
		<table>
			<form action="DeliveryInsert" method="post"
				onsubmit="return InsertValidation()">

				<tr>
					<td>Full Name</td>
					<td><input type="text" name="Fname" id="Fname"></td>
				</tr>

				<tr>
					<td>Address Line 01</td>
					<td><input type="text" name="addLineOne" id="addLineOne"></td>
				</tr>

				<tr>
					<td>Address Line 02</td>
					<td><input type="text" name="addLineTwo" id="addLineTwo"></td>
				</tr>

				<tr>
					<td>Postal Code</td>
					<td><input type="text" name="PostalCo" id="PostalCo"
						pattern="[0-9]{5}"></td>
				</tr>

				<tr>
					<td>Province</td>
					<td><input type="text" name="DeliveryPro" id="DeliveryPro"></td>
				</tr>

				<tr>
					<td>City</td>
					<td><input type="text" name="eliveryCityy" id="eliveryCityy"></td>
				</tr>

				<tr>
					<td>Country</td>
					<td><input type="text" name="DelivertCountry"
						id="DelivertCountry"></td>
				</tr>
				<tr>
					<td>RegCust_ID</td>
					<td><input type="text" id="Pid" name="Pid"
						placeholder="Your payment ID goes here" value="2"></td>
				</tr>
		</table>
		<br> <input type="submit" name="submit" value="Insert Data">

		</form>
	</div>
	</br>

	<!-- <div class="text-center">
  		<img src="photos/bike.png" class="rounded" alt="...">
	</div> -->

	<div class="deli14">
		<img src="photos/deli18.jpg" alt="...">
	</div>

	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class=" p-4">
			<!-- Section: Social media -->
			<section class="mb-4">

				<!-- Facebook -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-facebook"
					href="#!" role="button"></a>
				<!-- Twitter -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-twitter"
					href="#!" role="button"></a>
				<!-- Google -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-google"
					href="#!" role="button"></a>
				<!-- Instagram -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-instagram"
					href="#!" role="button"></a>
				<!-- Linkedin -->
				<a class="btn btn-outline-light btn-floating m-1 fa fa-linkedin"
					href="#!" role="button"></a>
			</section>
			<!-- Section: Social media -->

			<!-- Section: Form -->
			<section class="">
				<form action="">
					<!--Grid row-->
					<div class="row d-flex justify-content-center">
						<!--Grid column-->
						<div class="col-auto">
							<p class="pt-2">
								<strong>Sign up for our newsletter</strong>
							</p>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-md-5 col-12">
							<!-- Email input -->
							<div class="form-outline form-white mb-4">
								<input type="email" id="form5Example21" class="form-control" />
								<label class="form-label" for="form5Example21">Email
									address</label>
							</div>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-auto">
							<!-- Submit button -->
							<button type="submit" class="btn btn-outline-light mb-4">
								Subscribe</button>
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
				</form>
			</section>
			<!-- Section: Form -->

			<!-- Section: Text -->
			<section class="mb-4">
				<p>Since its inception in 1993, Pizza Hub has fast become a
					household name across Sri Lanka. With its first restaurant at Union
					Place, Colombo 2, Pizza Hub became the first international
					restaurant chain to begin operations in Sri Lanka.</p>
			</section>
			<!-- Section: Text -->

			<!-- Section: Links -->
			<section class="">
				<!--Grid row-->
				<div class="row">
					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Order Now</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">PROMOS</a></li>
							<li><a href="#!" class="text-white">PIZZAS</a></li>
							<li><a href="#!" class="text-white">PASTAS</a></li>
							<li><a href="#!" class="text-white">APPETIZERS</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">About</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">CAREERS</a></li>
							<li><a href="#!" class="text-white">FEEDBACK</a></li>
							<li><a href="#!" class="text-white">HOTLINE</a></li>
							<li><a href="#!" class="text-white">BEVERAGES</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Policy</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">DESSERTS</a></li>
							<li><a href="#!" class="text-white">TERMS & CONDITIONS</a></li>
							<li><a href="#!" class="text-white"> Social Media</a></li>
							<li><a href="#!" class="text-white">items </a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">My Pizza Hub</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">SIGN IN / REGISTER</a></li>
							<li><a href="#!" class="text-white">Find Us</a></li>
							<li><a href="#!" class="text-white">logos</a></li>
							<li><a href="#!" class="text-white">Chicken</a></li>
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
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			? 2022 PizzaHuB, Inc. All rights reserved. <a class="text-white"
				href="https://mdbootstrap.com/"></a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
</body>
</html>