<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Serch</title>

<link rel="stylesheet" href="./DeliveryCss/DeIiveryDesing.css">
<!-- header css -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/home.css">

<!-- filter -->
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

	<script>
	$(document)
			.ready(
					function() {
						$('#search').keyup(function() {
							search_table($(this).val());
						});
						function search_table(value) {
							$('#employee_table tr')
									.each(
											function() {
												var found = 'false';
												$(this)
														.each(
																function() {
																	if ($(this)
																			.text()
																			.toLowerCase()
																			.indexOf(
																					value
																							.toLowerCase()) >= 0) {
																		found = 'true';
																	}
																});
												if (found == 'true') {
													$(this).show();
												} else {
													$(this).hide();
												}
											});
						}
					});
</script>

	<!-- FILTER END JS AND LINKS -->

	<style>
.myFilter {
	background-color: #dddddd;
	position: absolute;
	margin-top: -45px;
	margin-left: 224px;
	padding: 10px 20px 30px 20px;
	border-radius: 7px;
	cursor: pointer;
}
</style>
</head>
<body>
	<br />
	<br />
	<div class="myFilter">
		<div class="container" style="width: 900px;">

			<h2 align="center">Search Nearest Branch Details</h2>
			<br />
			<div align="center">
				<input type="text" name="search" id="search" class="form-control"
					placeholder="Enter a City Name" />
			</div>
			<br /> <br />
			<div class="table-responsive">
				<center>
					<table class="table table-bordered" id="employee_table">
						<tr>
							<th width="5%">ID</th>
							<th width="10%">Main City</th>
							<th width="35%">Address</th>
							<th width="20%">Tellephone No</th>
							<th width="20%">Name</th>
							<th width="5%">Ratings</th>
						</tr>
						<tr>
							<td>175</td>
							<td>Colombo</td>
							<td>1571 Bingamon Branch Road, Barrington, IL 60010</td>
							<td>0117 729 729</td>
							<td>Ronald D. Colella</td>
							<td>32</td>
						</tr>
						<tr>
							<td>174</td>
							<td>Gampaha</td>
							<td>4005 Bird Spring Lane, Houston, TX 77002</td>
							<td>0337 500 750</td>
							<td>Nirosha Jayasinghe</td>
							<td>38</td>
						</tr>
						<tr>
							<td>173</td>
							<td>Kandy</td>
							<td>2822 River Road, Colorado Springs, CO 80903</td>
							<td>0117 729 729</td>
							<td>Mortgage loan officer</td>
							<td>52</td>
						</tr>
						<tr>
							<td>172</td>
							<td>Ampara</td>
							<td>4881 Adams Drive, Houston, TX 77002</td>
							<td>0112 729 729</td>
							<td>James V. Foreman</td>
							<td>32</td>
						</tr>
						<tr>
							<td>171</td>
							<td>Galle</td>
							<td>2672 Broaddus Avenue, Bowling Green, KY 42103</td>
							<td>0112 729 729</td>
							<td>Tractor driver</td>
							<td>45</td>
						</tr>
						<tr>
							<td>170</td>
							<td>Jaffna</td>
							<td>2653 Courtright Street, Garrison, ND 58540</td>
							<td>0112 729 729</td>
							<td>Mortgage loan officer</td>
							<td>24</td>
						</tr>
						<tr>
							<td>169</td>
							<td>Matale</td>
							<td>4097 Cambridge Place, Cockeysville, MD 21030</td>
							<td>0112 729 729</td>
							<td>Dallas V. Jones</td>
							<td>24</td>
						</tr>
						<tr>
							<td>168</td>
							<td>Anuradhapura</td>
							<td>68 Elk Creek Road, Chamblee, GA 30341</td>
							<td>0112 729 729</td>
							<td>Patricia R. Lohman</td>
							<td>40</td>
						</tr>
						<tr>
							<td>167</td>
							<td>Ratnapura</td>
							<td>3563 Wolf Pen Road, San Jose, CA 95134</td>
							<td>0112 729 729</td>
							<td>Mortgage banker</td>
							<td>32</td>
						</tr>
						<tr>
							<td>166</td>
							<td>Kolonnawa</td>
							<td>4342 Despard Street, Atlanta, GA 30331</td>
							<td>0317 500 755</td>
							<td>Lee H. Youn</td>
							<td>47</td>
						</tr>
						<tr>
							<td>165</td>
							<td>Dambulla</td>
							<td>4951 North Bend River Road, Lexington, KY 40505</td>
							<td>0112 729 729</td>
							<td>Melina T. Reza</td>
							<td>42</td>
						</tr>
						<tr>
							<td>164</td>
							<td>Katana</td>
							<td>4388 Goff Avenue, Grand Rapids, MI 49508</td>
							<td>0117 729 729</td>
							<td>Sandra P. Swain</td>
							<td>22</td>
						</tr>
						<tr>
							<td>163</td>
							<td>Moratuwa</td>
							<td>2653 Pyramid Valley Road, Cedar Rapids, IA 52404</td>
							<td>Male</td>
							<td>William C. Wright</td>
							<td>33</td>
						</tr>
						<tr>
							<td>162</td>
							<td>Negombo</td>
							<td>3827 Bingamon Road, Garfield Heights, OH 44125</td>
							<td>0112 729 729</td>
							<td>Glenda J. Stewart</td>
							<td>64</td>
						</tr>
						<tr>
							<td>161</td>
							<td>Matara</td>
							<td>3482 Pursglove Court, Rossburg, OH 45362</td>
							<td>0112 729 729</td>
							<td>Barbra K. Hurley</td>
							<td>28</td>
						</tr>
						<tr>
							<td>8</td>
							<td>Badulla</td>
							<td>1636 Walnut Hill Drive Cincinnati, OH 45202</td>
							<td>Male</td>
							<td>Clara Gilliam</td>
							<td>29</td>
						</tr>
						<tr>
							<td>7</td>
							<td>Kurunegala</td>
							<td>403 Snyder Avenue Charlotte, NC 28208</td>
							<td>0112 729 729</td>
							<td>Faller</td>
							<td>32</td>
						</tr>
						<tr>
							<td>6</td>
							<td>Trincomalee</td>
							<td>1241 Canis Heights Drive Los Angeles, CA 90017</td>
							<td>0117 729 729</td>
							<td>Nick M. Gilligan</td>
							<td>26</td>
						</tr>
						<tr>
							<td>5</td>
							<td>Puttalam</td>
							<td>63 Woodridge Lane Memphis, TN 38138</td>
							<td>0117 729 729</td>
							<td>Ronald S. Keefe</td>
							<td>24</td>
						</tr>
						<tr>
							<td>1</td>
							<td>Kilinochchi</td>
							<td>656 Edsel Road Sherman Oaks, CA 91403</td>
							<td>0112 729 729</td>
							<td>Bruce Tom</td>
							<td>36</td>
						</tr>
					</table>
				</center>
			</div>
		</div>

	</div>
</body>
</html>