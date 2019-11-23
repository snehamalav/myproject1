<!DOCTYPE html>
<html>
<head>
<title>place sell req</title>
</head>
<body>

<form  class="Reg" action="successrequest.do"  modelAttribute="srequest" method="post">

<table border="" align="center" width="400" bgcolor="" > 
<caption>Place Sell Request</caption>
<tr>
<th>Crop Type</th>
<td><input type="text" name="crop_type" id="croptype" placeholder="enter Crop Type" /></td><br>
</tr>

<tr>
<th>Crop Name</th>
<td><input type="text" name="crop_name" id="cropname" placeholder="enter Crop Name"/></td><br>
</tr>

<tr>
<th>Fertilizer Type</th>
<td><input type="text" name="fertilizer_type" id="fertype" placeholder="enter Fertilizer Type"/></td><br>
</tr>

<tr>
<th>Quantity</th>
<td><input type="number" name="quantity" id="quantity" placeholder="enter quantity"/></td><br>
</tr>

<tr>
<th>end date</th>
<td><input type="date" name="end_date" id="edate" placeholder="enter end date"/></td><br>
</tr>
<tr>
<th>base price</th>
<td><input type="number" name="base_price" id="baseprice" placeholder="enter base price"/></td><br>
</tr>
<tr>
<th>increment amount</th>
<td><input type="number" name="increment_value" id="increment_value" placeholder="enter increment amount"/></td><br>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Place Request"/>
</td>
</tr>
</table>

</form>
</body>
</html>			