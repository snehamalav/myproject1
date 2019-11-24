function validate()
{
var flag=true;
	
var fname = document.getElementById('fname').value;// alert('fname:'+fname);
var id1 = document.getElementById('id1');
var regex = /^[a-zA-Z ]{5,}$/;
id1.innerHTML='';

if(fname==''){
	//alert("sdas");
    id1.innerHTML='Plz fill name';
    flag=false;
  }
else
if(regex.test(fname) == false){
	//alert("ioh");
     id1.innerHTML="Invalid name";
     flag=false;
  }
//return false;

var contact = document.getElementById('contact').value; //alert('con:'+contact);
var id2 = document.getElementById('id2');
var mobregex = /^[0-9]{10}$/;
id2.innerHTML='';

if(contact=='')
{
    id2.innerHTML='Plz fill mobile no';
    flag= false;
  }
	else
		if(mobregex.test(contact) == false)
		{
			id2.innerHTML="Mobile no is improper";
			flag= false;
		} 
//return false;

    var f_email = document.getElementById('f_email').value;
    var id3 = document.getElementById('id3');
    var emailregex = /^[a-zA-Z0-9_.]{5,}@[a-zA-Z0-9_]{5,}.[a-z]{2,5}$/;
    id3.innerHTML='';

    if(f_email=='')
    {
    id3.innerHTML='Plz fill emailid';
    flag= false;
    //return false;
    }
    else if(emailregex.test(f_email) == false)
    {
     id3.innerHTML="emails  is improper";
     flag= false;
    } 
  //return false;

  var addr1 = document.getElementById('addr1').value;
    var id4 = document.getElementById('id4');
    var addr1regex = /^[a-zA-Z0-9\s,'-]{3,}$/;
    id4.innerHTML='';

    if(addr1=='')
    {
        id4.innerHTML='Plz fill address';
        flag= false;
    }
    else if(addr1regex.test(addr1) == false)
    {
        id4.innerHTML="improper address";
        flag= false;
    }
    //return false;

     var accno = document.getElementById('accno').value;
    var id5 = document.getElementById('id5');
    var accnoregex =/^[0-9]{12}$/;
    id5.innerHTML='';

   if(accno=='')
   {
     id5.innerHTML='Plz fill Account no';
     flag= false;
    }
    else
    if(accnoregex.test(accno) == false)
    {
        id5.innerHTML="improper Account no(12 digit)";
        flag= false;
    }
    //return false;


    var ifsc = document.getElementById('ifsc').value;
    var id6 = document.getElementById('id6');
    var ifscregex =/^[A-Z|a-z]{4}[0][a-zA-Z0-9]{6}$/;
    id6.innerHTML='';

    if(ifsc=='')
    {
        id6.innerHTML='Plz fill IFSC Code';
        flag= false;
    }
    else
    if(ifscregex.test(ifsc) == false)
    {
         id6.innerHTML="improper IFSC Code";
         flag= false;
    }
    //return false;

    var adhar_no = document.getElementById('adhar_no').value;
    var id7 = document.getElementById('id7');
    var aadhaarregex =/^[0-9]{12}$/;
    id7.innerHTML='';

    if(adhar_no=='')
    {
        id7.innerHTML='Plz fill Adhaar Number';
        flag= false;
    }
    else
    if(aadhaarregex.test(adhar_no) == false)
    {
         id7.innerHTML="improper Adhaar Number";
         flag= false;
    }
    
    var password = document.getElementById('password').value;
    var id8 = document.getElementById('id8');
    var passregex = /^[0-9a-zA-Z$?#$]{8,}$/;
    id8.innerHTML='';

    if(password=='')
    {
        id8.innerHTML='Password Field cannot be left empty';
        flag= false;
    }
    if(passregex.test(password) == false)
      {
        id8.innerHTML="Password improper";
        flag= false;
      }
    
   
      return flag; 
}