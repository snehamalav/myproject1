
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="css/style.css">
    <style>
      .error{
          color:#FF0000;
      }
      </style>
      <script type="text/javascript" src="js/freg.js"></script>
       </head> 
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

  <h1>Farmer Registration:</h1>
<form class="Reg" action="Farmerregister.do"  modelAttribute="farmer" method="post" enctype="multipart/form-data" >
Personal Details  
    <p><input type="text" placeholder="Full Name" name='full_name' id='fname' required/><div id='id1' class='error'></div></p>
    <p><input type="text" placeholder="Contact No"  name='contact_no' id='contact' required/><div id='id2' class='error'></div></p>
    <p><input type="email" placeholder="E-mail..."  name='f_email' id='f_email' required /><div id='id3' class='error'></div></p>


Address Details  
    <p><input type="text" placeholder="Address line 1" name="address" id='addr1' required/><div id='id4' class='error'></div></p>
    <p><input type="text" placeholder="Address line 2" name="address" id="addr2" required/></p>
    <p><input type="text" placeholder="City"   name="city" id="city" required/></p>
    <p><input type="text" placeholder="State"  name="state" id="state" required/></p>
    <p><input type="text" placeholder="Pin Code"  name="pincode" id="pincode" /></p>
    LAND Details
    <p><input type="text" placeholder="Address" name="land_address"  id="addr" required/></p>
    <p><input type="number" placeholder="Area" name="land_area" inputmode="area" required/></p>
    <p><input type="text" placeholder="Pin Code" name="land_pincode" id="pincode1" required/></p>
 

 Bank Details 
    <p><input type="text" placeholder="AccountNo" name="account_no" id='accno' required><div id='id5' class='error'></div></p>
    <p><input type="text" placeholder="IFSC Code" name="ifsc_code" id='ifsc' required><div id='id6' class='error'></div></p>
 
    <p> <input type="text" placeholder="Adhar no."  name="adhar_no" id="adhar_no" required><div id='id7' class='error'></div></p>
  Document Upload
    <p><input type="file" placeholder="Aadhaar" name="file" id="aadhaar" required></p>
    <p><input type="file" placeholder="PAN" name="file" id="pan" required></p>
    <p><input type="file" placeholder="certificate" name="file" id="certificate" required></p>
 
    <p><input type="password" placeholder="Password" name="password" id="password" required><div id='id8' class='error'></div></p>



    <div style="float:right;">
       <button type="submit" id="nextBtn" onclick="return validate()" />Submit</button>
    </div>
 <br>
 <br>
</form>

<div class="footer">
  <li><a target="_blank" href="https://india.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img2.jpg"></a></li>
  <li><a target="_blank" href="https://digitizeindia.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img3.jpg"></a></li>
  <li><a target="_blank" href="https://data.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img4.jpg"></a></li>
  <li><a target="_blank" href="https://meity.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img5.jpg"></a></li>
</div>

</body>
</html>