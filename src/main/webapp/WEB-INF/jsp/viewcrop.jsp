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

<center> <h1> LIST OF CROP REQUEST</h1>
<table>
 <tr>
<th>Crop ID </th> 
  <th>Farmer Email </th> 
 	<th>Crop Type</th>
  	<th>Crop Name</th>
	<th>fertilizer_type</th>
	<th>start_date</th>
	<th>end_date</th>
	<th>quantity</th>
	<th>base_price</th>
	<th>increment_value</th>
	<th>status</th>
		
  </tr>
    <c:forEach items="${clist}" var="Crop">
    
    	
        <tr>
        	<td>${Crop.c_id}</td> 
        	<td>${Crop.farmer.f_email}</td>
            <td>${Crop.crop_type}</td>
          	<td>${Crop.crop_name}</td>
          	<td>${Crop.fertilizer_type}</td>
          	<td>${Crop.start_date}</td>
          	<td>${Crop.end_date}</td>
          	<td>${Crop.quantity}</td>
          	<td>${Crop.base_price}</td>
          	<td>${Crop.increment_value}</td>
          	<td>${Crop.status}</td>

        </tr>
    </c:forEach>
</table>
</center>
</body>
</html> 