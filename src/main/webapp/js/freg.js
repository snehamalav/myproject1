function validate(){
    var f=document.getElementById("form");
    valfullname(f);
    valcontact(f);
    valEmail(f);
    valaddress(f);
    valaccount(f);
    valifsc(f);
    valpassword(f);
}




function valfullname(form)
{
    var flag=true;
var fname = document.getElementById('fname').value;
var id1 = document.getElementById('id1');
var regex = /^[a-zA-Z ]{5,}$/;
id1.innerHTML='';

if(fname=='' || fname.length==0){
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
return false;
}
     

 function valcontact(form)
 {
	 var flag=true;
    var contact = document.getElementById('contact').value;
    var id2 = document.getElementById('id2');
    var mobregex = /^[0-9]{10}$/;
    id2.innerHTML='';

    if(contact=='' || contact.length==0)
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
return flag;
  }


    


function valEmail(from)
{
	var flag=true;
    var f_email = document.getElementById('f_email').value;
    var id3 = document.getElementById('id3');
    var emailregex = /^[a-zA-Z0-9_.]{5,}@[a-zA-Z0-9_]{5,}.[a-z]{2,5}$/;
    id3.innerHTML='';

    if(f_email=='' || f_email.length==0)
    {
    id3.innerHTML='Plz fill emailid';
    flag= false;
    }
    else
    if(emailregex.test(f_email) == false)
    {
     id3.innerHTML="emails  is improper";
     flag= false;
    } 
  return flag;
}

function valaddress(from)
{
	var flag=true;
    var addr1 = document.getElementById('addr1').value;
    var id4 = document.getElementById('id4');
    var addr1regex = /^[a-zA-Z0-9\s,'-]{3,}$/;
    id4.innerHTML='';

    if(addr1=='' || addr1.length==0)
    {
        id4.innerHTML='Plz fill address';
        flag=false;
    }
    else
    if(addr1regex.test(addr1) == false)
    {
        id4.innerHTML="improper address";
        flag=false;
    }
    return flag;
}

function valaccount(from)
{
	var flag=true;
    var accno = document.getElementById('accno').value;
    var id5 = document.getElementById('id5');
    var accnoregex =/^[0-9]{5}$/;
    id5.innerHTML='';

   if(accno=='' || accno.length==0)
   {
     id5.innerHTML='Plz fill Account no';
     flag=false;
    }
    else
    if(accnoregex.test(accno) == false)
    {
        id5.innerHTML="improper Account no(12 digit)";
        flag=false;
    }
   return flag;
}

 function valifsc(from)
 {
    var ifsc = document.getElementById('ifsc').value;
    var id6 = document.getElementById('id6');
    var ifscregex =/[0-9]{5}$/; //[A-Z|a-z]{4}[0]
    id6.innerHTML='';

    if(ifsc=='' || ifsc.length==0)
    {
        id6.innerHTML='Plz fill IFSC Code';
        flag=false;
    }
    else
    if(ifscregex.test(ifsc) == false)
    {
         id6.innerHTML="improper IFSC Code";
         flag=false;
    }
}

function valpassword(from)
 {
	var flag=true;
    var password = document.getElementById('password').value;
    var id7 = document.getElementById('id7');
    var passregex = /^[0-9a-zA-Z$?#$]{8,}$/;
    id7.innerHTML='';

    if(password=='' || password.length==0)
    {
        id7.innerHTML='Password Field cannot be left empty';
        flag= false;
    }
    if(passregex.test(password) == false)
      {
        id7.innerHTML="Password improper";
        flag= false;
      } 
    return flag;
}

// var error1=document.getElementById("passwordError");
    // var error2=document.getElementById("confirmPasswordError");
    // error1.innerHTML="Give Password";

    // var password=form["password"].value;

    // error1.innerHTML="";
    // error2.innerHTML="";

    // var confirmPassword=form["confirmPassword"].value;

    // if( password==null || password==""){
    //     error1.innerHTML="Give Password";
    // }



    // else if( confirmPassword==null || confirmPassword==""){
    //     error2.innerHTML="Confirm Password";
    // }



    // else if(password.length<5 || password.length>10){
    //     error1.innerHTML="Password has to be 5 to 10 chars"
    // }

    // else if(password != confirmPassword){
    //     error2.innerHTML="Password Does Not Match"
    // }