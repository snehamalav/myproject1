function validate()
{
var flag=true;
	
var bname = document.getElementById('bname').value;// alert('fname:'+fname);
var id1 = document.getElementById('id1');
var regex = /^[a-zA-Z ]{5,}$/;
id1.innerHTML='';

if(bname==''){
	//alert("sdas");
    id1.innerHTML='Plz fill name';
    flag=false;
  }
else
if(regex.test(bname) == false){
	//alert("ioh");
     id1.innerHTML="Invalid name";
     flag=false;
  }
//return false;

var bcontact = document.getElementById('bcontact').value; //alert('con:'+contact);
var id2 = document.getElementById('id2');
var mobregex = /^[0-9]{10}$/;
id2.innerHTML='';

if(bcontact=='')
{
    id2.innerHTML='Plz fill mobile no';
    flag= false;
  }
	else
		if(mobregex.test(bcontact) == false)
		{
			id2.innerHTML="Mobile no is improper";
			flag= false;
		} 
//return false;

    var b_email = document.getElementById('b_email').value;
    var id3 = document.getElementById('id3');
    var emailregex = /^[a-zA-Z0-9_.]{5,}@[a-zA-Z0-9_]{5,}.[a-z]{2,5}$/;
    id3.innerHTML='';

    if(b_email=='')
    {
    id3.innerHTML='Plz fill emailid';
    flag= false;
    //return false;
    }
    else if(emailregex.test(b_email) == false)
    {
     id3.innerHTML="emails  is improper";
     flag= false;
    } 
  //return false;

  var baddr1 = document.getElementById('baddr1').value;
    var id4 = document.getElementById('id4');
    var addr1regex = /^[a-zA-Z0-9\s,'-]{3,}$/;
    id4.innerHTML='';

    if(baddr1=='')
    {
        id4.innerHTML='Plz fill address';
        flag= false;
    }
    else if(addr1regex.test(baddr1) == false)
    {
        id4.innerHTML="improper address";
        flag= false;
    }
    //return false;

     var baccno = document.getElementById('baccno').value;
    var id5 = document.getElementById('id5');
    var accnoregex =/^[0-9]{12}$/;
    id5.innerHTML='';

   if(baccno=='')
   {
     id5.innerHTML='Plz fill Account no';
     flag= false;
    }
    else
    if(accnoregex.test(baccno) == false)
    {
        id5.innerHTML="improper Account no(12 digit)";
        flag= false;
    }
    //return false;


    var bifsc = document.getElementById('bifsc').value;
    var id6 = document.getElementById('id6');
    var bifscregex =/^[A-Z|a-z]{4}[0][a-zA-Z0-9]{6}$/;
    id6.innerHTML='';

    if(bifsc=='')
    {
        id6.innerHTML='Plz fill IFSC Code';
        flag= false;
    }
    else
    if(bifscregex.test(bifsc) == false)
    {
         id6.innerHTML="improper IFSC Code";
         flag= false;
    }
    //return false;

    var badhar_no = document.getElementById('badhar_no').value;
    var id7 = document.getElementById('id7');
    var aadhaarregex =/^[0-9]{12}$/;
    id7.innerHTML='';

    if(badhar_no=='')
    {
    	id7.innerHTML='Plz fill Adhaar Number';
        flag= false;
    }
    else
    if(aadhaarregex.test(badhar_no) == false)
    {
    	id7.innerHTML="improper Adhaar Number";
         flag= false;
    }   	
    
     var bpassword = document.getElementById('bpassword').value;
    var id8 = document.getElementById('id8');
    var bpassregex = /^[0-9a-zA-Z$?#$]{8,}$/;
    id8.innerHTML='';

    if(bpassword=='')
    {
    	id8.innerHTML='Password Field cannot be left empty';
        flag= false;
    }
    if(bpassregex.test(bpassword) == false)
      {
    	id8.innerHTML="Password improper";
        flag= false;
      }
    
    
      return flag; 
}