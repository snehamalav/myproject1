 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="css/style.css">

<style>
/* .choice {
   float: left;
   display:inline;
   
    
}*/              
				table {
                    border: 1px solid black;
                border-collapse: collapse;
                color: #588c7e;
                font-family: monospace;
                font-size: 14px;
              
     
                }
                td{ border: 1px solid black;
                
                   border-collapse: collapse;}
               th {
                background-color: #588c7e;
                border: 1px solid black;
                color: white;
                   border-collapse: collapse;
                }
                tr {
                background-color: #f2f2f2;
                border: 1px solid black;
                   border-collapse: collapse;
                }
                </style>
        
</head>
<body>
 <div class="topnav">
                <a href="Home1.html">Home</a>
                <!-- <a href="Farmerreg.html">Register</a> -->
                <div class="dropdown">
                      <button class="dropbtn">Register
                               </button>
                      <div class="dropdown-content">
                        <a href="Farmerreg.html">Farmer</a>
                        <a href="Bidderreg.html">Bidder</a>
                      </div>
                  </div> 
                <!-- <a href="logint.html">Login</a> -->
                <div class="dropdown">
                      <button class="dropbtn">Login
                               </button>
                      <div class="dropdown-content">
                        <a href="login.html">Admin</a>
                        <a href="loginf.html">Farmer</a>
                        <a href="loginb.html">Bidder</a>
                      </div>
                  </div> 
                <a href="About.html">About Us</a>
                <a href="Contact.html">Contact Us</a>
                
                </div>
<center>
<form class="Reg" action="approvecrop.do" method="post">
<input type="hidden" value="${crop1.c_id}" name="email">
 
<h3> LIST OF CROP REQUEST</h3>
<table>
<!--  <tr>
<th>crop1 ID </th> 
  <th>Farmer Email </th> 
 	<th>CROP Type</th>
  	<th>CROP Name</th>
	<th>Fertilizer Type</th>
	<th>Start Date</th>
	<th>End Date</th>
	<th>Quantity</th>
	<th>Base Price</th>
	<th>Increment Value</th>
	<th>Status</th>

		
  </tr> -->
        
        	<tr><th>crop1 ID  <td>${crop1.c_id}</td> </th> </tr>
        	<tr><th>Farmer Email  </th><td>${crop1.farmer.f_email}</td></th></tr>
            <tr><th>CROP Type  <td>${crop1.crop_type}</td></th></tr>
          	<tr><th>CROP Name <td>${crop1.crop_name}</td></th></tr>
          	<tr><th>Fertilizer Type <td>${crop1.fertilizer_type}</td></th></tr>
          	<tr><th>Start Date <td>${crop1.start_date}</td></th></tr>
          	<tr><th>End Date <td>${crop1.end_date}</td></th></tr>
          	<tr><th>Quantity  <td>${crop1.quantity}</td></th></tr>
          	<tr><th>Base Price <td>${crop1.base_price}</td></th></tr>
          	<tr><th>Increment Value <td>${crop1.increment_value}</td></th></tr>
          	<tr><th>Status <td>${crop1.status}</td></th></tr>
     
  </table>
<br>
<br>
<br>

  	<input type="radio" name="action" value="Approved" checked/> Approve
    <input type="radio" name="action" value="Rejected"/> Reject

  
 <br><br><br>

 
  <button><input type="submit" name="submit" value="Take Action"> </button> 
 

  </form>
 </center>
  


<div class="footer">
        <li><a target="_blank" href="https://india.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img2.jpg"></a></li>
        <li><a target="_blank" href="https://digitizeindia.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img3.jpg"></a></li>
        <li><a target="_blank" href="https://data.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img4.jpg"></a></li>
        <li><a target="_blank" href="https://meity.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img5.jpg"></a></li>
      </div>
</body>
</html> 