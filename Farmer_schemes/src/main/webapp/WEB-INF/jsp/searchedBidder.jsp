<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
  border: 1px solid black; 
    border-collapse: collapse;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center> <h1> BIDDER REGISTERED</h1>
<form action="approve.do" method="post">
	<input type="hidden" value="${bidder1.b_email}" name="email">
<table>
 <tr>
  	<th>full_name</th>
	<th>contact_no</th>
	<th>f_email</th>
	<th>address</th>
	<th>city</th>
	<th>state</th>
	<th>pincode</th>
	<th>account_no</th>
	<th>ifsc_code</th>
	<th>adhar_no</th>
	<th>adhar_fname</th> 
	<th>pan_fname </th>
	<th>trader_license_fname </th>
	<th>password </th>
	<th>status</th>
	
  </tr>
	 <tr>
            <td>${bidder1.full_name}</td>
          	<td>${bidder1.contact_no}</td>
          	<td>${bidder1.b_email}</td>
          	<td>${bidder1.address}</td>
          	<td>${bidder1.city}</td>
          	<td>${bidder1.state}</td>
          	<td>${bidder1.pincode}</td>
          	<td>${bidder1.account_no}</td>
          	<td>${bidder1.ifsc_code}</td>
          	<td>${bidder1.adhar_no}</td>
          	<td>${bidder1.adhar_fname}</td>
          	<td>${bidder1.pan_fname}</td>
          	<td>${bidder1.trader_license_fname}</td>
          	<td>${bidder1.password}</td> 
      		<td>${bidder1.status}</td> 
      		
          	
        </tr>
     
</table>
<br>
<input type="radio" name="action" value="Approved" checked>Approved
  <input type="radio" name="action" value="Rejected"> Rejected<br>
  <input type="submit" name="submit" value="Take Action">   
<br>
<br>


</form>
</center>
</body>
</html>