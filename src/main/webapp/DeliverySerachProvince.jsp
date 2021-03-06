<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Province</title>
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

</head>
<body>
	<!-- header malshm -->
	<div class="header">
		<img src="photos/pizHub.jpeg"
			style="float: left; padding: 15px; height: 130px; width: 200px; border-radius: 25px;">
	</div>

	<div id="navbar">
		<a href="Home.jsp">Home</a> <a href="javascript:void(0)">Menu</a> <a
			href="javascript:void(0)">Order Now</a> <a href="javascript:void(0)">Contact</a>
	</div>
	</br>
	<!--/ header -->
	
	<style>
.myDiv4Searchbar {
	width: 100px;
	cursor: pointer;
}

.myDiv4SearchImage {
	position: absolute;
	margin-top: 419px;
	margin-left: 0x;
}

.myDiv4SearchPara {
	background-color: white;
	padding: 12px 12px 12px 12px;
	border-radius: 20px;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	border-radius: 5px; /* 5px rounded corners */
}

input[type=text] {
	margin-top: 20px;
	margin-right: 16px;
	font-size: 25px;
	border: 3px solid red;
	width: 900px;
	cursor: pointer;
}
</style>
</head>
<body>
	<center>
		<div class="">
			<form method="post" action="DeliverySerchThird">
				<dev class=""> <input type="text" id="search" name="search"
					placeholder="Searche Here According To The Province" required>
				</dev>
				<input
					style="background-color: #4CAF50; /* Green */ border: none; color: white; padding: 11px 32px; text-align: center; text-decoration: none; font-size: 16px;"
					" type="submit" value="Search">
			</form>
		</div>
		</br>
		<div class="">
			<center class="myDiv4SearchPara card container h-100">Searche
				deliveries according to the trovince. Pizza Hub, a subsidiary of
				Yum! Brands, is the world's largest pizza company and home of Pan
				Pizza. Pizza Hut began 60 years ago in Wichita, Kansas, and today is
				an iconic global brand that delivers more pizza, pasta and wings
				than any other restaurant in the world. Since its inception in 1993,
				Pizza Hut has fast become a household name across Sri Lanka. With
				its first restaurant at Union Place, Colombo 2, Pizza Hut became the
				first international restaurant chain to begin operations in Sri
				Lanka. Pizza Hut is a brand name belonging to global restaurant
				chain Yum Brands Incorporated which is based in USA. It is the
				world's largest restaurant company which also owns KFC & Taco Bell.
				In 1999, Pizza Hut ventured into the home delivery service setting
				yet another innovative milestone in Sri Lanka. With the launch of
				its island-wide delivery hotline 011 2 729729, Pizza Hut delivery
				rose swiftly to provide 50% of the restaurant's net sales. To date,
				Pizza Hut Sri Lanka employs over 1800 staff members with diverse
				backgrounds. As an equal opportunity employer, Pizza Hut utilizes 1%
				of its annual income towards training and welfare. The company
				strongly believes in creating a results oriented fun working
				environment. Over the past 24 years, Pizza Hut has grown from
				strength to strength. At Pizza Hut, we believe in delighting the
				senses of each and every customer. This is why all dine-in outlets
				offer a unique family friendly dine-in experience whilst effectively
				capturing the gastronomic palate of the Sri Lankan consumer with
				innovative additions to its menu. Currently Pizza Hut serves a wide
				range of pizza toppings with an exciting selection of special crusts
				as well as appetizers, pastas, rice, desserts and beverages.</center>
	</center>
	</br>
	</div>
	<dev class="myDiv4SearchImage"> <img src="./DelivryImages/1c.jpg"
		width="1340" height="220" alt="img"> </dev>

	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
		<!-- Grid container -->
		<div class="container p-4">
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
