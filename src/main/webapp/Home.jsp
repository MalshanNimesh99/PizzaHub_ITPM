<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

.headertxt1{ color: white; text-shadow:2px 2px black;padding: 20px 0px 0px 700px; font-weight: bold;font-size:35px;}
.headertxt2{ color: white; text-shadow:2px 2px black; padding: 10px 0px 0px 675px; font-weight: bold;font-size: 25px;}


</style>


<title>Home</title>
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

	<div class="card container h-100" style="width: 40rem; height: 100rem;">
		<div class="card-body">
			<h5 class="card-title">Hello,</h5>
			<p class="card-text">Some quick example text to build on the card
				title and make up the bulk of the card's content.</p>
			<button type="button" class="btn btn-success btn-lg btn-block" onclick="document.location='OrderMain.jsp'">Place
				Order</button>


		</div>
	</div>
	</br>

	<div class="card-deck">
		<div class="card">
			<img src="Images/2.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Bay Special</h5>
				<p class="card-text"> Bay Specialham, pepperoni, button mushrooms, fresh onion, green capsicum & pineapple topped with school prawns & kalamata olives.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="Images/1.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Hawaiian</h5>
				<p class="card-text">pepperoni, fresh onion & green capsicum seasoned with chilli flakes (jalapenos optional).</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="Images/3.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Supreme</h5>
				<p class="card-text">ham, button mushrooms, fresh onions, green capsicum & pineapple topped with kalamata olives.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="Images/4.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Original</h5>
				<p class="card-text"> ham, button mushrooms, fresh onions & green capsicum andm & pineapple topped with school prawns & kalamata olives.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div></br>
	
	<div class="card-deck">
		<div class="card">
			<img src="Images/5.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Super Veg</h5>
				<p class="card-text"> sun-dried tomatoes, roasted eggplant, button mushrooms, fresh onions, green capsicum & marinated artichoke topped with kalamata olives.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="Images/6.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Pesto Chicken</h5>
				<p class="card-text">breast fillet chicken, snow peas, fresh diced tomato & green capsicum on a pesto base.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="Images/7.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Lasagna</h5>
				<p class="card-text">traditional style fresh pasta sheets layered with bolognese, bechamel, napolitana sauce & mozzarella cheese.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
		<div class="card">
			<img src="Images/1.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Garden Salad</h5>
				<p class="card-text">mixed leaf/ lettuce, cucumber, capsicum, tomato & Spanish onion garnished in salad dressing.</p>
			</div>
			<div class="card-footer">
				<small class="text-muted">Last updated 3 mins ago</small>
			</div>
		</div>
	</div>
	</br>
	</br>
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

			<!-- Section: Text -->
			<section class="mb-4">
				<p>There's nothing cookie-cutter about Pizza Hub. Not our
					pizzas. Not our people. And definitely not the way we live life.
					Around here, we don't settle for anything less than food we're
					proud to serve.</p>
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
							<li><a href="#!" class="text-white">PROMOS</a></li>
							<li><a href="#!" class="text-white">APPETIZERS</a></li>
							<li><a href="#!" class="text-white">DESSERTS</a></li>
							<li><a href="#!" class="text-white">BEVERAGES</a></li>
							<li><a href="#!" class="text-white">PASTAS</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">About</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">CAREERS</a></li>
							<li><a href="#!" class="text-white">ABOUT US</a></li>
							<li><a href="#!" class="text-white">FEEDBACK</a></li>
							<li><a href="#!" class="text-white">HOTLINE</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">Policy</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">TERMS & CONDITIONS</a></li>
							<li><a href="#!" class="text-white">PRIVACY POLICY</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase">My PizzaHub</h5>

						<ul class="list-unstyled mb-0">
							<li><a href="#!" class="text-white">Sign in</a></li>
							<li><a href="#!" class="text-white">Register</a></li>
							<li><a href="AdminLogin.jsp" class="text-white">Admin</a></li>
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
			<a class="text-white" href="#">2022 Pizza Hub, Inc. All rights
				reserved</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
</body>
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
	
	
	//slide show top
	var slideIndexT = 0;
	carouselT();

	function carouselT() {
							  var a;
							  var y = document.getElementsByClassName("o-add");

							  for (a = 0; a < y.length; a++) 
							  {
							  		  y[a].style.display = "none"; 
							  }
							  slideIndexT++;
							  
							  if (slideIndexT > y.length)
							  	{
							  		slideIndexT = 1
							  	}

							  y[slideIndexT-1].style.display = "block";

							  setTimeout(carouselT, 2000); // Change image every 2 seconds

						}

</script>

</html>