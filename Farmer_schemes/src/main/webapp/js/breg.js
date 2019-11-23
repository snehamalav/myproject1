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
    //var flag=true;
var bname = document.getElementById('bname').value;
var id1 = document.getElementById('id1');
var regex = /^[a-zA-Z ]{5,}$/;
id1.innerHTML='';

if(bname=='' || bname.length==0){
    //alert("sdas");
    id1.innerHTML='Plz fill name';
    //flag=false;
  }
else
if(regex.test(bname) == false){
    //alert("ioh");
     id1.innerHTML="Invalid name";
    // flag=false;
  }
//return false;
}
     

 function valcontact(form)
 {

    var bcontact = document.getElementById('bcontact').value;
    var id2 = document.getElementById('id2');
    var mobregex = /^[0-9]{10}$/;
    id2.innerHTML='';

    if(bcontact=='' || bcontact.length==0)
    {
        id2.innerHTML='Plz fill mobile no';
        //flag= false;
    }
    else
    if(mobregex.test(bcontact) == false)
    {
        id2.innerHTML="Mobile no is improper";
        //flag= false;
    } 
//return false;
  }


    


function valEmail(from)
{

    var b_email = document.getElementById('b_email').value;
    var id3 = document.getElementById('id3');
    var emailregex = /^[a-zA-Z0-9_.]{5,}@[a-zA-Z0-9_]{5,}.[a-z]{2,5}$/;
    id3.innerHTML='';

    if(b_email=='' || b_email.length==0)
    {
    id3.innerHTML='Plz fill emailid';
    //flag= false;
    }
    else
    if(emailregex.test(b_email) == false)
    {
     id3.innerHTML="emails  is improper";
     //flag= false;
    } 
}

function valaddress(from)
{
    var baddr1 = document.getElementById('baddr1').value;
    var id4 = document.getElementById('id4');
    var addr1regex = /^[a-zA-Z0-9\s,'-]{3,}$/;
    id4.innerHTML='';

    if(baddr1=='' || baddr1.length==0)
    {
        id4.innerHTML='Plz fill address';
        flag=false;
    }
    else
    if(addr1regex.test(baddr1) == false)
    {
        id4.innerHTML="improper address";
        flag=false;
    }
}

function valaccount(from)
{
    var baccno = document.getElementById('baccno').value;
    var id5 = document.getElementById('id5');
    var accnoregex =/^[0-9]{5}$/;
    id5.innerHTML='';

   if(baccno=='' || baccno.length==0)
   {
     id5.innerHTML='Plz fill Account no';
     flag=false;
    }
    else
    if(accnoregex.test(baccno) == false)
    {
        id5.innerHTML="improper Account no(12 digit)";
        flag=false;
    }
}

 function valifsc(from)
 {
    var bifsc = document.getElementById('bifsc').value;
    var id6 = document.getElementById('id6');
    var ifscregex =/[0-9]{5}$/; //[A-Z|a-z]{4}[0]
    id6.innerHTML='';

    if(bifsc=='' || bifsc.length==0)
    {
        id6.innerHTML='Plz fill IFSC Code';
        flag=false;
    }
    else
    if(ifscregex.test(bifsc) == false)
    {
         id6.innerHTML="improper IFSC Code";
         flag=false;
    }
}

function valpassword(from)
 {
    var bpassword = document.getElementById('bpassword').value;
    var id7 = document.getElementById('id7');
    var passregex = /^[0-9a-zA-Z$?#$]{8,}$/;
    id7.innerHTML='';

    if(bpassword=='' || bpassword.length==0)
    {
        id7.innerHTML='Password Field cannot be left empty';
        flag= false;
    }
    if(passregex.test(bpassword) == false)
      {
        id7.innerHTML="Password improper";
        flag= false;
      } 
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