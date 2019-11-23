<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="css/style.css"> 
<style>
  input[type=text] {
  width: 60%;
  background-color:aliceblue;
  color: black;
  padding: 12px 20px;
  margin: 8px 0;
  cursor: pointer;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
 input[type=password] {
  width: 60%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
} 

/* Set a style for all buttons */
/* button {
  background-color: #4CAF50;
  color: white;
  padding: 5px 15px;
  margin: 20px 0;
  cursor: pointer;
  width: 40%;

} */

button:hover {
  opacity: 0.5;
}


 button { 
  display: flex;
  justify-content:flex-end;
  align-items:flex-end;
  color:black;
  padding: 0 20px;
  min-width: 80px;
  height: 40px;
  background-color: #4CAF50;
  border-radius: 30px; 
} 

</style>

</head>
<body>
  
          
          <div class="topnav">
            <a href="Home1.html">Home</a>
           
            <a href="About.html">About Us</a>
            <a href="Contact.html">Contact Us</a>
            
            <!-- <a href="#" style="float:right">Link</a> -->
          </div>
          <center>
            <H2>   Admin Login</H2>
           <form action = "loginadmin.do" name = "login" method = "post">
    
            <!-- <input type = 'text' name = 'userid' id = 'username' placeholder ='Username/Email'> 
            <br>
            
            <input type = 'password' name = 'password' id = 'password' placeholder ='Password'>                             
            <br>
            
            <button type = 'submit' name = 'login' id = 'login'> Login </button>
            <br>                -->


            <div class="container">
              <label for="username"><b>Username</b></label>
              <input type="text" placeholder="Enter Userid" name="userid" id = 'username' required>
             <br>
              <label for="password"><b>Password</b></label>
              <input type="password" placeholder="Enter Password" name = "password" id = 'password' required>
                <br>
              </div>
              <button type="submit"  name = "login" id = 'login' style="width:auto">Login</button>
            <br>
              <a href="#">Forgot password?</a>
           
        

           
            
          </form>
        </div>
      </center>
      <div class="footer">
        <li><a target="_blank" href="https://india.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img2.jpg"></a></li>
        <li><a target="_blank" href="https://digitizeindia.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img3.jpg"></a></li>
        <li><a target="_blank" href="https://data.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img4.jpg"></a></li>
        <li><a target="_blank" href="https://meity.gov.in/"><img alt="" src="https://enam.gov.in/web/assest/images/footer/img5.jpg"></a></li>
      </div> 
</body>
</html>