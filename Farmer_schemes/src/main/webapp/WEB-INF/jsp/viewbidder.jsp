<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
    border-collapse: collapse;
}
</style>
</head>
<body>

<center> <h1> LIST OF BIDDER REGISTERED</h1>

<table >
 <tr>
 
  	<th> full_name</th>
	<th>contact_no</th>
	<th>b_email</th>
	<th>address</th>
	<th>city</th>
	<th>state</th>
	<th>pincode</th>
	<th>account_no</th>
	<th>ifsc_code</th>
	<th>adhar_no</th>
	<th>adhar_fname</th> 
	<th>pan_fname </th>
	<th>trader_license_fname</th>
	<th>password </th>
<!-- 	<th>status</th>
	<th> Approval</th> -->
  </tr>
    <c:forEach items="${alist}" var="Bidder">
        <tr>
            <td>${Bidder.full_name}</td>
          	<td>${Bidder.contact_no}</td>
          	<td>${Bidder.b_email}</td>
          	<td>${Bidder.address}</td>
          	<td>${Bidder.city}</td>
          	<td>${Bidder.state}</td>
          	<td>${Bidder.pincode}</td>
          	<td>${Bidder.account_no}</td>
          	<td>${Bidder.ifsc_code}</td>
          	<td>${Bidder.adhar_no}</td>
          	<td>${Bidder.adhar_fname}</td>
          	<td>${Bidder.pan_fname}</td>
          	<td>${Bidder.trader_license_fname}</td>
          	<td>${Bidder.password}</td> 
         <%--  	<td>${Bidder.status}</td> 
          	<td> <input type="submit" value="Approve" ></td> --%>
        </tr>
    </c:forEach>
</table>
</center>
</body>
</html>