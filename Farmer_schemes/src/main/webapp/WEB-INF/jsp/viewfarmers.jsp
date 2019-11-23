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
  	<th> full_name</th>
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
	<th>certificate_fname </th>
	<th>password </th>
<!-- 	<th>status</th>
	<th> Approval</th> -->
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
      <%--  <td>${Farmer.status}</td> 
          	<td> <input type="submit" value="Approve" action="approve.do"></td> --%>
        </tr>
    </c:forEach>
</table>
</center>
</body>
</html>