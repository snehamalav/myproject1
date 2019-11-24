<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H1>HELLO</H1>
<P>${request2}</P>
<%-- <center> <h1> BIDDER REGISTERED</h1>
<form action="apply.do" method="post">
	<input type="hidden" value="${request2.c_id}" name="c_id">
<table>
 <tr>
  	 <th>Crop ID </th>
 	<th>Crop Type</th>
  	<th>Crop Name</th>
  	<th>Fertilizer Type</th>
	<th>quantity</th>
	<th>base_price</th>
	<th>increment_value</th>
	
  </tr>
	 <tr>
            <td>${request2.c_id}</td>
          	<td>${request2.crop_type}</td>
          	<td>${request2.crop-name}</td>
          	<td>${request2.fertilizer_type}</td>
          	<td>${request2.quantity}</td>
          	<td>${request2.base_price}</td>
          	<td>${request2.increment_value}</td>
          
      		
          	
        </tr>
     
</table>
<br>

  <input type="submit" name="submit" value="APPLY">   
<br>
<br>


</form>
</center> --%>
</body>
</html>