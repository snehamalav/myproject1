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
  	<th>full_name</th>
	<th>contact_no</th>
	<th>f_email</th>
	<th>address</th>
	<th>city</th>
	<th>state</th>
	<th>pincode</th>
	<th>land_area</th>
	<th>land_address</th>
	<th>land_pincode</th>
	<th>account_no</th>
	<th>ifsc_code</th>
	<th>adhar_no</th>
	<th>adhar_fname</th> 
	<th>pan_fname </th>
	<th>certificate_fname</th>
	<th>password </th>
	<th>status</th>
	
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