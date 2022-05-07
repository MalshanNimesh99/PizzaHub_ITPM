<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<%
String paymentID = request.getParameter("paymentID");
String telephone = request.getParameter("cusContact");
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
ResultSet resultSet1 = null;
ResultSet resultSet2 = null;
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="./Styles/Semantic-UI-CSS-master/semantic.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<style type="text/css">
* {
    margin: 0;
    padding: 0;
    font-family: "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
    box-sizing: border-box;
    font-size: 14px;
}

img {
    max-width: 100%;
}

body {
    -webkit-font-smoothing: antialiased;
    -webkit-text-size-adjust: none;
    width: 100% !important;
    height: 100%;
    line-height: 1.6;
}

/* Let's make sure all tables have defaults */
table td {
    vertical-align: top;
}

/* -------------------------------------
    BODY & CONTAINER
------------------------------------- */
body {
    background-color: #f6f6f6;
    background-image: url("Images/bg6.png");
    background-repeat: no-repeat;
  background-size: cover;background-attachment: fixed; 
}

.body-wrap {
    
    width: 100%;
}

.container {
    display: block !important;
    max-width: 600px !important;
    margin: 0 auto !important;
    /* makes it centered */
    clear: both !important;
}

.content {
    max-width: 600px;
    margin: 0 auto;
    display: block;
    padding: 20px;
}

/* -------------------------------------
    HEADER, FOOTER, MAIN
------------------------------------- */
.main {
    background: #fff;
    border: 1px solid #e9e9e9;
    border-radius: 3px;
}

.content-wrap {
    padding: 20px;
}

.content-block {
    padding-bottom: 20px;
}

.header {
    width: 100%;
    margin-bottom: 20px;
}

.footer {
    width: 100%;
    clear: both;
    color: #999;
    padding: 20px;
}
.footer a {
    color: #999;
}
.footer p, .footer a, .footer unsubscribe, .footer td {
    font-size: 12px;
}

/* -------------------------------------
    TYPOGRAPHY
------------------------------------- */
h1, h2, h3 {
    font-family: "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
    color: #000;
    margin: 40px 0 0;
    line-height: 1.2;
    font-weight: 400;
}

h1 {
    font-size: 32px;
    font-weight: 500;
}

h2 {
    font-size: 24px;
}

h3 {
    font-size: 18px;
}

h4 {
    font-size: 14px;
    font-weight: 600;
}

p, ul, ol {
    margin-bottom: 10px;
    font-weight: normal;
}
p li, ul li, ol li {
    margin-left: 5px;
    list-style-position: inside;
}

/* -------------------------------------
    LINKS & BUTTONS
------------------------------------- */
a {
    color: #1ab394;
    text-decoration: underline;
}

.btn-primary {
    text-decoration: none;
    color: #FFF;
    background-color: #1ab394;
    border: solid #1ab394;
    border-width: 5px 10px;
    line-height: 2;
    font-weight: bold;
    text-align: center;
    cursor: pointer;
    display: inline-block;
    border-radius: 5px;
    text-transform: capitalize;
}

/* -------------------------------------
    OTHER STYLES THAT MIGHT BE USEFUL
------------------------------------- */
.last {
    margin-bottom: 0;
}

.first {
    margin-top: 0;
}

.aligncenter {
    text-align: center;
}

.alignright {
    text-align: right;
}

.alignleft {
    text-align: left;
}

.clear {
    clear: both;
}

/* -------------------------------------
    ALERTS
    Change the class depending on warning email, good email or bad email
------------------------------------- */
.alert {
    font-size: 16px;
    color: #fff;
    font-weight: 500;
    padding: 20px;
    text-align: center;
    border-radius: 3px 3px 0 0;
}
.alert a {
    color: #fff;
    text-decoration: none;
    font-weight: 500;
    font-size: 16px;
}
.alert.alert-warning {
    background: #f8ac59;
}
.alert.alert-bad {
    background: #ed5565;
}
.alert.alert-good {
    background: #1ab394;
}

/* -------------------------------------
    INVOICE
    Styles for the billing table
------------------------------------- */
.invoice {
    margin: 40px auto;
    text-align: left;
    width: 80%;
}
.invoice td {
    padding: 5px 0;
}
.invoice .invoice-items {
    width: 100%;
}
.invoice .invoice-items td {
    border-top: #eee 1px solid;
}
.invoice .invoice-items .total td {
    border-top: 2px solid #333;
    border-bottom: 2px solid #333;
    font-weight: 700;
}

/* -------------------------------------
    RESPONSIVE AND MOBILE FRIENDLY STYLES
------------------------------------- */
@media only screen and (max-width: 640px) {
    h1, h2, h3, h4 {
        font-weight: 600 !important;
        margin: 20px 0 5px !important;
    }

    h1 {
        font-size: 22px !important;
    }

    h2 {
        font-size: 18px !important;
    }

    h3 {
        font-size: 16px !important;
    }

    .container {
        width: 100% !important;
    }

    .content, .content-wrap {
        padding: 10px !important;
    }

    .invoice {
        width: 100% !important;
    }
}

.btnD{
	float: right; margin: 10px 10px 0px 0px;
}

.btn-lg{
	float: left; margin: 10px 10px 0px 10px;
}
</style>
<title>Receipt</title>
</head>
<body>

<button class="btn btn-secondary btn-lg" onclick="document.location='Home.jsp'">
			Home <i class="fa fa-home" style="font-size:18px"></i></button>

<button class="btn btn-secondary btnD" onclick="document.location='DeliveryHomaPage.jsp'">
					Delivery Options <i style="font-size: 15px;" class="fa fa-rocket"></i></button>
					
<button class="btn btn-secondary btnD"  onclick="print()">
					Download Report <i style="font-size: 15px;" class="fa fa-print"></i></button>
					
<table class="body-wrap bg" >
 <tbody>
   <tr>
       <td class="container" width="600">
           <div class="content" id="list">
               <table class="main" width="100%" cellpadding="0" cellspacing="0">
                   <tbody>
                   	 <tr>
                        <td class="content-wrap aligncenter">
                           <table width="100%" cellpadding="0" cellspacing="0">
                             	<tbody>
                             		<tr>
                                    	<td class="content-block">
                                    		<h2>Pizza Hub</h2>
                                    		<h4 style="font-style: italic;" >We have excellent quality of pizzas...</h4>
                                    	</td>
                                	</tr>
                                	<tr>
                                    	<td class="content-block">
                                        	<table class="invoice">
                                            	<tbody>
                                            		<%
													try{
													connection = DriverManager.getConnection(connectionUrl+database, userid, password);
													statement=connection.createStatement();
													String sql1 ="select * from pizzahub_db.order where telephone='"+telephone+"'";
													resultSet1 = statement.executeQuery(sql1);
													while(resultSet1.next()){
													%>
                                            		<tr>
                                            		
                                                		<td style="text-transform: capitalize; font-weight: bolder;">Dear <%=resultSet1.getString("name") %>,<br>Have a nice day...!<br></td>
                                            		</tr>
                                            		<tr>
                                                		<td>
                                                    		<table class="invoice-items" cellpadding="0" cellspacing="0">
                                                        		<tbody>
                                                        			<tr>
                                                            			<td><%=resultSet1.getString("flavour") %> Flavour</td>
                                                        			</tr>
                                                        			<tr>
                                                            			<td><%=resultSet1.getString("type") %> <%=resultSet1.getString("size") %></td>
                                                            			<td class="alignright">Rs.1500.00</td>
                                                        			</tr>
                                                        			
                                                        			<tr class="total">
                                                            			<td class="alignright" width="80%">Total</td>
                                                            			<td class="alignright">Rs.1500.00</td>
                                                        			</tr>
                                                    			</tbody>
															</table>
                                                		</td>
                                            		</tr>
                                            		<%
													}
													connection.close();
													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
                                     			</tbody>
                            
                                     			<tbody>
                                            		<%
													try{
													connection = DriverManager.getConnection(connectionUrl+database, userid, password);
													statement=connection.createStatement();
													String sql2 ="select * from payments where paymentID='"+paymentID+"'";
													resultSet2 = statement.executeQuery(sql2);
													while(resultSet2.next()){
													%>
                                            		<tr>
                                                		<td style="text-transform: capitalize; font-weight: bolder;"><br><br>Card Holder's Name: <%=resultSet2.getString("cName") %><br>Payment ID :<%=resultSet2.getString("paymentID") %></td>
                                            		</tr>
                                            		<tr>
                                                		
                                            		</tr>
                                            		<%
													}
													connection.close();
													} catch (Exception e) {
													e.printStackTrace();
													}
													%>
                                     			</tbody>
                                     		</table>
                                    	</td>
                                	</tr>
                                	<tr>
                                    	<td class="content-block">
                                        	<h2 style="color: red;" >Thanks For Order..!</h2>
                                    		<h4 style="font-style: italic;" ><%= (new java.util.Date()).toLocaleString()%></h4>
                                     	</td>
                                	</tr>
                           	 </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
             </table>
            </div>
                           
                <div class="footer">
                    <table width="100%">
                        <tbody>
                        	<tr>
                            	<td style="color: black;" class="aligncenter content-block">Questions? Email <a style="color: black;" href="mailto:">support@pizzahub.com</a></td>
                        	</tr>
                    	</tbody>
                    </table>
                </div>
        	</td>
    	</tr>
	</tbody>
 </table>

</body>
<script type="text/javascript">

function print() {
	var element = document.getElementById("list");
	var opt = {
			margin: 1,
			filename: 'ReceiptPizzaHub.pdf',
			image: { type:'jpeg', quality:1 },
			html2canvas: {scale:2},
			jsPDF:{unit: 'in' , format:'letter', orientation:'landscape'}
	};
	html2pdf().from(element).set(opt).save();
}
</script>
</html>