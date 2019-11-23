<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html</th> charset=ISO-8859-1">
<title>Insert title here</title>

<style>
table, th, td {
  border: 1px solid black; 
    border-collapse: collapse;
}
</style>
</head>
<body>
<center> <h1> LIST OF FARMER REGISTERED</h1>
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
    <c:forEach items="${list}" var="Farmer">
    
    	
        <tr>
            <td>${Farmer.full_name}</td>
          	<td>${Farmer.contact_no}</td>
          	<td>${Farmer.f_email}</td>
          	<td>${Farmer.address}</td>
          	<td>${Farmer.city}</td>
          	<td>${Farmer.state}</td>
          	<td>${Farmer.pincode}</td>
          	<td>${Farmer.land_area}</td>
          	<td>${Farmer.land_address}</td>
          	<td>${Farmer.land_pincode}</td>
          	<td>${Farmer.account_no}</td>
          	<td>${Farmer.ifsc_code}</td>
          	<td>${Farmer.adhar_no}</td>
          	<td>${Farmer.adhar_fname}</td>
          	<td>${Farmer.pan_fname}</td>
          	<td>${Farmer.certificate_fname}</td>
          	<td>${Farmer.password}</td> 
     		<td>${Farmer.status}</td> 
        </tr>
    </c:forEach>
</table>
</center>
</body>
</html>