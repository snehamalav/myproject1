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
<center> <h1>FARMER REGISTERED</h1>
<form action="approve1.do" method="post">
<input type="hidden" value="${farmer1.f_email}" name="email">

<table>
 <tr>
  	<th>Full Name</th>
	<th>Contact No.</th>
	<th>Farmer Email</th>
	<th>Address</th>
	<th>City</th>
	<th>State</th>
	<th>Pincode</th>
	<th>Land Area</th>
	<th>Land Address</th>
	<th>Land Pincode</th>
	<th>Account No</th>
	<th>IFSC Code</th>
	<th>Adhar No</th>
	<th>Adhar file</th> 
	<th>Pan file </th>
	<th>Certificate File </th>
	<th>Password </th>
	<th>Status</th>
	
  </tr>
   
        <tr>
            <td>${farmer1.full_name}</td>
          	<td>${farmer1.contact_no}</td>
          	<td>${farmer1.f_email}</td>
          	<td>${farmer1.address}</td>
          	<td>${farmer1.city}</td>
          	<td>${farmer1.state}</td>
          	<td>${farmer1.pincode}</td>
          	<td>${farmer1.land_area}</td>
          	<td>${farmer1.land_address}</td>
          	<td>${farmer1.land_pincode}</td>
          	<td>${farmer1.account_no}</td>
          	<td>${farmer1.ifsc_code}</td>
          	<td>${farmer1.adhar_no}</td>
          	<td>${farmer1.adhar_fname}</td>
          	<td>${farmer1.pan_fname}</td>
          	<td>${farmer1.certificate_fname}</td>
          	<td>${farmer1.password}</td> 
      		<td>${farmer1.status}</td> 
          	
        </tr>
     
</table>
<br>
<br>
<input type="radio" name="action" value="Approved" checked>Approve 
  <input type="radio" name="action" value="Rejected"> Reject<br><br>
  <input type="submit" name="submit" value="Take Action">  
  </form>
</center>

</body>
</html>