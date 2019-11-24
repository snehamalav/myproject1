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

<center> <h1> LIST OF BIDDING REQUESTS</h1>
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
    <c:forEach items="${list}" var="Crop">
    
    	
        <tr>
           <td>${Crop[0]}</td> 
            <td>${Crop[2]}</td>
          	<td>${Crop[3]}</td>
          	<td>${Crop[4]}</td>
          	<td>${Crop[7]}</td>
          	<td>${Crop[8]}</td>
          	<td>${Crop[9]}</td>

        </tr>
    </c:forEach>
</table>
</center>

<form action="searchrequest.do" method="get">
enter crop id
<input type="text" name="c_id" placeholder="crop id"/>
<br>
<!-- enter crop name
<input type="text" name="crop_name" placeholder="crop name"/> 
<br>
enter crop type
<input type="text" name="crop_type" placeholder="crop type"/>  -->
<input type="submit" value="submit"/>
</form>
</body>
</html> 