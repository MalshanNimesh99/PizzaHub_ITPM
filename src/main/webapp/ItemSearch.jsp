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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
.icon-bar {
  width: 100%;
  background-color:#f2f2f0;
  overflow: hidden;
  position: fixed;
  height: 50px;box-shadow: 0 4px 2px -2px gray;
}
.searchM{width: 55%;float: left;height: 50px; background-color:#f1f1f1; border: none; color:color:black; padding-left:15px; }
.notiM{ width: 10%;float: left; height: 50px; padding-left:20px;background-color:#f1f1f1;color:black; padding-top: 10px;}
.msgM{ width: 10%;float: left; height: 50px; padding-left:20px;background-color:#f1f1f1;color:black; padding-top: 10px;}
.lgoutbtnM{ width: 25%;float: left; height: 50px; padding-left:20px;background-color:#999696;color:#c9c6c5; padding-top: 10px;}
.lgoutbtnM:hover{ background-color:#c9c6c5;color:#999696; }

.icon-bar a {
  text-align: center;
  transition: all 0.3s ease;
  color: black;
  font-size: 18px;
  text-decoration: none;
}

.sidebarG1{ margin-top: 20px;}

body {
  margin: 0;
  font-family: "Lato", sans-serif;
 
}

.sidebar {
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  width: 215px;
  background-color:#e6e3e3;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.adminlogo{
	width: 50px; height: 40px;
}

.adminlogo2{
	width: 50px; height: 40px; margin-bottom: 10px;
}

#myBtn{
	margin-right: -250px;
}
.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.content {
  margin-left: 200px;
  padding: 1px 16px;
  height:600px; 
  background-image: url("Images/Pizza-Website-Background-3.jpg"); 
  background-repeat: no-repeat;
  background-size: cover;
}

.Bodycontent{
margin-top: 80px;

}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
 

.sidebar a {float: left;}

div.content {margin-left: 0;}
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

.modal-body {padding: 2px 16px;;}

.modal-footer {
  padding: 2px 16px;;
  color: white;
}

.cancelbtn{
	width: 100px;
}

.lgoutbtn{
	width: 100px;
}


/*  body*/
.formBody{
margin: 20px 0px 100px 70px;
	width: 600px;
	height: auto;
}

.bdform {
	
	background-color: white;
	opacity: 0.8;
	width: 60%;
	border: 2px solid black;
	border-radius: 10px;
	color: black;
}

.lbl{
	font-weight: 500;
}

.inpt {
	border: 1px outset silver;
}


</style>

<title>Search Item</title>
</head>
<body>
<div class="sidebar">
  <div style="box-shadow: 0 4px 2px -2px gray; height: 50px;padding-top: 10px; background-color:#f2f2f0;"><img class="adminlogo" src="Images/adminAvatar.png">  Administrator</div>
  <div class="sidebarG1">
  <a  href="AdminDashboard.jsp"><i class='fas fa-home' style='font-size:20px;color:black'></i>  Dashboard</a>
  <a  href="ItemInsert.jsp"><i class='far fa-plus-square' style='font-size:20px;color:blue'></i> Add Items</a>
  <a class="active" href="ItemSearch.jsp"><i class='fas fa-search' style='font-size:20px;color:green'></i> Search Items</a>
  <a href="ItemsViewAll.jsp"><i class='fas fa-table' style='font-size:20px;color:brown'></i> View Items</a>
  <a href="ItemReportGenerate.jsp"><i class='fas fa-download' style='font-size:20px;color:black'></i> Generate Report</a>
  </div>
  
</div>

<div class="content">
	<div class="icon-bar">
	  <div class="searchM" ></div>
	  <a class="notiM" href="#"><i class="material-icons" style="font-size:25px">notifications</i><span class="badge">8</span></a>
	  <a class="msgM" href="#"><i class="material-icons" style="font-size:25px">chat</i><span class="badge">3</span></a>
	  <div id="myBtn" class="lgoutbtnM"><a href="#"> Log out</a></div> 
	</div>
	<div class="Bodycontent">
	<h3 style="margin-left: 40px;">Add Items</h3>
		<div class="formBody">
			<form method="post" action="SearchItemCodeServlet" class=" needs-validation"  novalidate>
			
			<div class="mb-3 row g-3">
				<div class="col-md-7">
					<label class="form-label lbl">Search By Item Code</label> 
					<input type="text" name="itemCode" class="form-control form-control-sm inpt" placeholder="Item Code" required>
					<div class="invalid-feedback">Please enter an Item Code.</div>
				</div>
					
				<div class="col-md-5">
					<button class="btn btn-primary" style="width: 100px;margin-top: 27px;" type="submit">Search</button>
				</div>
			</div>
			</form>	
			
			
		<form method="post" action="SearchItemCatServlet" class=" needs-validation"  novalidate>
			<div class="mb-3 row g-3">
				<div class="col-md-7">
					<label class="form-label lbl">Select By Category</label> 
					<select name="itemCategory" class="form-control form-control-sm inpt" required>
							<option selected value="">select category</option>
							<option value="Pizza">Pizza</option>
							<option value="Appetizer">Appetizer</option>
							<option value="Rice">Rice</option>
							<option value="Beverages">Beverages</option>
						</select>
						<div class="invalid-feedback">Please select the category.</div>
				</div>
					
				<div class="col-md-5">
					<button class="btn btn-primary" style="width: 100px;margin-top: 27px;" type="submit">Search</button>
				</div>
			</div>
			</form>	
		
		</div>
	</div>
</div>



<!-- The Modal -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <h2>Log out</h2>
    </div>
    <div class="modal-body">
      <p>Are you sure you want to log out?</p>
    </div>
    <div class="modal-footer">
        <button type="button" onclick="document.getElementById('myModal').style.display='none'" class="btn btn-secondary cancelbtn">Cancel</button>
        <button type="button" onclick="document.location='Home.jsp'" class="btn btn-danger lgoutbtn">Log out</button>
    </div>
  </div>

</div>




</body>
<script type="text/javascript">
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
'use strict'
var forms = document.querySelectorAll('.needs-validation')

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


// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</html>