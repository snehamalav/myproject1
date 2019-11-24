<!DOCTYPE html>
<html>
   
    <link rel="stylesheet" href="css/style.css">
    <style>
      .error{
          color:#FF0000;
      }
      </style> 
    <body>     
      <div class="topnav">
        <a href="Home1.html">Home</a>
        <div class="dropdown">
          <button class="dropbtn">Register
                   </button>
          <div class="dropdown-content">
            <a href="Farmerregister.do">Farmer</a>
            <a href="Bidderregister.do">Bidder</a>
          </div>
      </div> 
      <div class="dropdown">
        <button class="dropbtn">Login
                 </button>
        <div class="dropdown-content">
         <a href="login1.do">Farmer</a>
        <a href="login2.do">Bidder</a>
        </div>
    </div>
        <a href="About.html">About Us</a>
        <a href="Contact.html">Contact Us</a>
        <!-- <a href="#" style="float:right">Link</a> -->
      </div>
      
 <h1>Bidder Registration:</h1>
<form class="Reg" action="Bidderregister.do" modelAttribute="ibidder" method="post" enctype="multipart/form-data" >
 
  Personal Details  
    <p><input type="text" placeholder="Full Name" name='full_name' id='bname' required/><div id='id1' class='error'></div></p>
    <p><input type="text" placeholder="Contact No (10 digits)"  name='contact_no' id='bcontact' required/><div id='id2' class='error'></div></p>
    <p><input type="email" placeholder="E-mail..."  name='b_email' id='b_email' required /><div id='id3' class='error'></div></p>
  

  Address Details
    <p><input type="text" placeholder="Address line 1" name="address" id='baddr1' required/><div id='id4' class='error'></div></p>
    <p><input type="text" placeholder="Address line 2" name="address" id="baddr2" required/></p>
    <p><input type="text" placeholder="City"   name="city" id="bcity" required/></p>
    <p><input type="text" placeholder="State"  name="state" id="bstate" required/></p>
    <p><input type="text" placeholder="Pin Code"  name="pincode" id="bpincode" /></p>
    

  Bank Details   
    <p><input type="text" placeholder="AccountNo" name="account_no" id='baccno'><div id='id5' class='error'></div></p>
    <p><input type="text" placeholder="IFSC Code" name="ifsc_code" id='bifsc'><div id='id6' class='error'></div></p>
  
 <p> <input type="text" placeholder="Adhar no."  name="adhar_no" id="badhar_no"><div id='id7' class='error'></div></p>
   Document Upload
    <p><input type="file" placeholder="Aadhaar" name="file" id="baadhaar"></p>
    <p><input type="file" placeholder="PAN" name="file" id="bpan"></p>
    <p><input type="file" placeholder="Trader License" name="file" id="btraderlicense"></p>


  Password 
    <p><input type="password" placeholder="Password" name="password" id="bpassword" ><div id='id8' class='error'></div></p>

    <div style="float:right;">
       <!-- <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button> -->
      <button type="submit" onclick="return validate()" />Submit</button>
    </div>
<br>
<br>
<br>
  
  <div class="footer">
    <li><a target="_blank" href="https://india.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img2.jpg"></a></li>
    <li><a target="_blank" href="https://digitizeindia.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img3.jpg"></a></li>
    <li><a target="_blank" href="https://data.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img4.jpg"></a></li>
    <li><a target="_blank" href="https://meity.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img5.jpg"></a></li>
  </div>
</form>

<script type="text/javascript" src="js/breg.js"></script>
</body>
</html>