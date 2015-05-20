<%-- 
    Document   : trial
    Created on : Oct 14, 2014, 1:58:14 AM
    Author     : Prashanth kp
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html> 
	<head>

		<title>Discription</title>
		<link rel="icon" href="logo2.jpg"  type="image/jpg" >
<script src="http://code.jquery.com/jquery-latest.min.js"> </script>
		<script type="text/javascript">

var wss_i=0;
var wss_array=["images.jpg","images2.jpg","download.jpg"];
var wss_elem;
function wssNext(){
	wss_i++;
	wss_elem.style.opacity=0;
	if(wss_i>(wss_array.length-1)){ wss_i=0;}
	setTimeout('wssSlide()',500);
}
function wssSlide(){
	wss_elem.src=wss_array[wss_i];
	wss_elem.style.opacity=1;
	setTimeout('wssNext()',2000);
}

function changeImage(src) { 
   var image = document.getElementById('future');
   image.src =src;
  }
function changetext(id) { 
    id.value="";
    id.style.color="rgb(89,89,89)";

  }   
function inputcheck(id){
   if(id.value=="" || id.value==null){
   	id.style.borderColor="rgb(138,0,0)";
   }
   else{id.style.borderColor="#98bf21";}

}

 function popup(id) { 
 	var ID=document.getElementById(id);
 	
    	ID.style.display='block';
  }

function close1(id) { 
 	var ID=document.getElementById(id);
 	
    	ID.style.display='none';
  }

  function sam(){
  	window.alert("Please Enter valid e-mail id");
  }
function validateForm(id)
{
	var ID=document.getElementById(id);
	var pass = document.getElementById("pass");
	var email = document.getElementById("email");

	if(email.value=="")
	{
		document.getElementById("logemailcheck").innerHTML="Enter valid EmailID";
		email.style.borderColor="rgb(138,0,0)";
		email.focus();
		return false;	
	}
	if(email.value.indexOf("@",0)<0)
	{
		document.getElementById("logemailcheck").innerHTML="Enter valid EmailID";
		email.style.borderColor="rgb(138,0,0)";
		email.focus();
		return false;	
	}

	if(email.value.indexOf(".",0)<0)
	{
		document.getElementById("logemailcheck").innerHTML="Enter valid EmailID";
		email.style.borderColor="rgb(138,0,0)";
		email.focus();
		return false;	
	}
	else{email.style.borderColor="#98bf21";
		document.getElementById("logemailcheck").innerHTML="";}

	if(pass.value=="")
	{
		document.getElementById("logpasscheck").innerHTML="Enter valid Password";
		pass.style.borderColor="rgb(138,0,0)";
		pass.focus();
		return false;	
	}
	else{pass.style.borderColor="#98bf21";
		document.getElementById("logpasscheck").innerHTML="";
		ID.style.display='none';
	}

    
}
function validateForm2(id)
{
	var ID=document.getElementById(id);
	var fname =document.getElementById("fname");
	var lname = document.getElementById("lname");
	var email = document.getElementById("signemail");
	var phone = document.getElementById("phone");
	var pass= document.getElementById("signpass");
	var cpass=document.getElementById("signcpass");
        
        $(document).ready(function(){
                $("#tab1").hide();
           });
           
        
        
	if(fname.value=="")
	{
		document.getElementById("fnamecheck").innerHTML="Enter First Name";
		fname.style.borderColor="rgb(138,0,0)";
		fname.focus();
		return false;	
	}
	else{document.getElementById("fnamecheck").innerHTML="";}

	if(lname.value=="")
	{
		document.getElementById("lnamecheck").innerHTML="Enter Last Name";
		lname.style.borderColor="rgb(138,0,0)";
		lname.focus();
		return false;	
	}
	else{document.getElementById("lnamecheck").innerHTML="";}

	if(email.value=="")
	{
		document.getElementById("signemailcheck").innerHTML="Enter valid EmailID";
		email.style.borderColor="rgb(138,0,0)";
		email.focus();
		return false;	
	}
	if(email.value.indexOf("@",0)<0)
	{
		document.getElementById("signemailcheck").innerHTML="Enter valid EmailID";
		email.style.borderColor="rgb(138,0,0)";
		email.focus();
		return false;	
	}

	if(email.value.indexOf(".",0)<0)
	{
		document.getElementById("signemailcheck").innerHTML="Enter valid EmailID";
		email.style.borderColor="rgb(138,0,0)";
		email.focus();
		return false;	
	}
	else{email.style.borderColor="#98bf21";
		document.getElementById("signemailcheck").innerHTML="";}
	
	if(phone.value=="" || phone.value.length!=10)
	{
		document.getElementById("phonecheck").innerHTML="Enter valid Phone Number";
		phone.style.borderColor="rgb(138,0,0)";
		phone.focus();
		return false;	
	}
	else{phone.style.borderColor="#98bf21";
		document.getElementById("phonecheck").innerHTML="";}

	if(pass.value=="")
	{
		document.getElementById("signpasscheck").innerHTML="Enter valid Password";
		pass.style.borderColor="rgb(138,0,0)";
		pass.focus();
		return false;	
	}
	else{pass.style.borderColor="#98bf21";
		document.getElementById("signpasscheck").innerHTML="";}

	if(cpass.value=="" || phone.value.length!=10)
	{
		document.getElementById("signcpasscheck").innerHTML="Enter valid Confirm password";
		cpass.style.borderColor="rgb(138,0,0)";
		cpass.focus();
		return false;	
	}
	else{cpass.style.borderColor="#98bf21";
		document.getElementById("signcpasscheck").innerHTML="";}

	if(cpass.value!=pass.value)
	{
		document.getElementById("signcpasscheck").innerHTML="Password Missmatch";
		cpass.style.borderColor="rgb(138,0,0)";
		cpass.focus();
		return false;	
	}
	else{cpass.style.borderColor="#98bf21";
		document.getElementById("signcpasscheck").innerHTML="";
                 checkCookie($("#fname").val());
	          $(document).ready(function() { 
                          $.get('signing',{Fname:$("#fname").val(),Lname:$("#lname").val(),Email:$("#signemail").val(),Phone:$("#phone").val(),Pass:$("#signcpass").val()},function() {   
                           sng=true;
                      //document.getElementById("logedin").innerHTML="
                              //$("#logedin").show();
                            
                           });
          
                         });
              
            ID.style.display='none';             
           location.reload();
       }
	   
}

function checkCookie(fname) {
    var d = new Date();
    var user=getCookie('username')
    if(user!="" || user!=null){
  delete_cookie('username');}
   
           setCookie('username',fname, 30);
            user=getCookie('username');
    if (user != "") {
        document.getElementById("logedin").innerHTML=user;
    }
           
  }
    
 var delete_cookie = function(name) {
    document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
};


  function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) != -1) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

 function setCookie(cname,cvalue,exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname+"="+cvalue+"; "+expires;
}

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

    function gohome()
     {
      window.location.href="http://localhost:8080/bookshop/HomeConnect"; 
    }
    
    function rows(){
        var tbl = document.getElementById("states");

        if (tbl != null) {

            if (tbl.rows[0] != null) {

                //tbl.rows[0].style.backgroundColor = "#365890";

                tbl.rows[0].style.color = "#FFFFFF";

            }

            for (var i = 0; i < tbl.rows.length; i++) {

                tbl.rows[i].style.cursor = "pointer";
                tbl.rows[i].style.color="blue";
                tbl.rows[i].style.fontSize="20px";
                
                tbl.rows[i].onmousemove = function () { this.style.backgroundColor = "rgb(117, 210, 255)"; };

                tbl.rows[i].onmouseout = function () { this.style.backgroundColor = "";};
                tbl.rows[i].onclick= function () { var searchval=this.innerHTML;
                window.location.href="http://localhost:8080/bookshop/Searching?value="+searchval;};

            }

        }
   }
    
    $(document).ready(function(){
    $("#tab1").hide();
     });
    
    $(document).ready(function() {
        
        $('#search').keyup(function(event) { 
            
            $("#states tr").remove();
        var $country=$("#search").val();
        if($country!=""){
             $.get('livesearch',{countryname:$country},function(responseJson) {   
               if(Object.keys(responseJson).length==0){$("#tab1").hide()}
               $.each(responseJson, function(key, value) {               
                   $('<tr><td>').val(key).text(value).appendTo("#states");
                   $("#tab1").show(500);
                    });
                    rows();
            });
            }
        else{$("#tab1").hide(500);}
        });
    });
  function setlogin(){
      var loginuser=getCookie('username');
      if(loginuser=="" || loginuser==null){
         document.getElementById("logedin").style.visibility="hidden"; 
      }
      else{
          document.getElementById("logedin").innerHTML=loginuser;
      }      
   }
  function logout(){
    delete_cookie('username');
    location.reload();
      
  }   
 
  $(document).ready(function(){
                $("#signtab1").hide();
    }); 
        
        $(document).ready(function(){
                $("#logedin").mouseenter(function () {
                    $("#signtab1").show();
                      });
           });
           
         
           
         $(document).ready(function(){
                $("#signtab1").mouseleave(function () {
                    $("#signtab1").hide();
                      });
           });
    
 </script>


		<style type="text/css">

			.div1{

				position: fixed;
				display: block;
				background-color:#005387;
				left:0;
				top:0;
				width: 100%;
				height: 15%;

			}

			
			#search{

				position: absolute;
				left: 300;
				top: 40;
				width: 600px;
				height: 40px;
				font-size: 20px;
				color: rgb(233,233,233);

			}
                        
                        .tab {
                            position: absolute;
                            left: 300px;
                            top: 80px;
                            width: 500px;
                            height: 100px;
                            background-color: white;
                            overflow: auto;
                            border-bottom-color:black;
                            border-bottom-style:solid;
                            border-left-color: black;
                            border-right-color: black;
                         }
                        
                        
			#button{

				position: absolute;
				left: 900;
				top: 40;
				width: 80px;
				height: 40px;
				background-color: fdd922;
				border: 0;

			}
					#button:hover{
			  	border-width: 5px;
                 border-style: solid;
					border-color: #98bf21;

			  }

			#signup{

				position: absolute;
				color: white;
				left: 1000;
				top: 50;
				width: 80px;
				height: 40px;
				text-decoration: none;
				cursor: pointer;

			}
					#signup:hover{
					color: #98bf21;}
                        
                         .signtab {
                            position: absolute;
                            left: 1100px;
                            top: 10px;
                            width: 80px;
                            height: 100px;
                            background-color: white;}               
                         
			#logedin{

				position: absolute;
				color: white;
				left: 1100px;
				top: 10px;
				width: 200px;
				height: 40px;
				text-decoration: none;
				cursor: pointer;

			}
					#logedin:hover{
					color: #98bf21;}
                                        
                         #logedin{

				position: absolute;
				color: white;
				left: 1100px;
				top: 10px;
				width: 100px;
				height: 40px;
				text-decoration: none;
				cursor: pointer;

			}
					#logedin:hover{
					color: #98bf21;}                

			#login{

				position: absolute;
				left: 1080;
				color: white;
				text-decoration: none;
				top: 50;
				width: 80px;
				height: 40px;

			}
					#login:hover{
					color: #98bf21;}

			#status{

				position: absolute;
				left: 1150;
				top: 50;
				color: white;
				text-decoration: none;

			}
					#status:hover{
					color: #98bf21;}

			#future{

				border-radius: 10px;
				border-style: solid;
   			 border-color: #98bf21;
   			 opacity:0;
			-webkit-transition:opacity 1.0s linear 0s;
			transition:opacity 1.0s linear 0s;
		}
		.opacimg{
            position: absolute;
				left:100;
				top: 75;
				width: 350px;
				height: 350px;

		}
		#bleft{opacity: .3; position: absolute; top: 175px; left:0px;}
		#bright{opacity: .3;position: absolute; top: 175px; left: 300px;}

			#b_title{

				position: absolute;
				top: 150;
				left: 550;
				font-size: 25px;

			}

			#author{

				position: absolute;
				top: 200;
				left: 550;
				font-size: 15px;

			}
			#lang{

				position: absolute;
				left: 550;
				top: 280;
				font-size: 15px;

			}
			#len{

				position: absolute;
				left: 750;
				top: 320;
				font-size: 15px;

			}

			#buy{

				position: absolute;
				left: 550;
				top: 460;
				font-face: 'arial';
				 font-size: larger;
				  color: white; 
				  background-color: #f4722c; 
				  border:0;
				  height:2em;
				  width:10em;
				  -webkit-border-radius: 10px;
				  -moz-border-radius: 5px;
				  border-radius: 5px;

			}
			#cashondel{

				position: absolute;
				left: 550;
				top: 510;
				font-size: 15px;

			}
				#logo{

				position: absolute;
				left: 90;
				top: 0;
                                cursor: pointer;

			}

	.linkimg {
     margin:10px; 
     float:left;
     width: 100px;
     height: 100px;}
    
    	 .linkimg > .divimg{cursor: pointer;
      			border-style: solid;
   			 border-color: #98bf21;
    	 }

   #email{
   position: absolute;
   top: 195px;
   left: 300px;
   width: 300px;
   height: 40px;
   font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
		#logemailcheck{position: absolute;top: 235px;left: 300px;color: rgb(130,0,0);font-size: 15px;}

#pass{
   position: absolute;
   top: 295px;
   left: 300px;
   width: 300px;
   height: 40px;
   font-size: 20px;
   border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
#logpasscheck{position: absolute;top: 335px;left: 300px;color: rgb(130,0,0);font-size: 15px;}

#emailpara{
   position: absolute;
   top: 170px;
   left: 200px;
   font-size: 30px;
}

#passpara{
   position: absolute;
   top: 270px;
   left: 150px;
   font-size: 30px;
}

#go{
   position: absolute;
   top: 400px;
   left: 350px;
   width: 150px;
   height: 40px;
   font-size: 25px;
   color: white;
   opacity: .5;
   background-color: rgb(0,87,130);
   border-radius: 20px;
  cursor: pointer;
}
		#go:hover{
			opacity: 1;
		}

#close{
   position: absolute;
   top: 10px;
   left: 730px;
   opacity: .5;
   cursor: pointer;

}
      #close:hover{
           opacity: 1;
      }

#loginhead{
   position: absolute;
   top: 10px;
   left: 100px;
   font-size: 50px;
}

   .pop1{
   	display: none;
   	position: fixed;
   	top: 0px;
   	left: 0px;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,.7);
   }

   #pop2{
   	background-color: white;
    position: absolute;
    top: 100px;
    left: 300px;
    width: 750px;
    height: 500px;
    padding: 20px;
    border-radius: 20px;
    border-style: solid;
    border-color: black;

   }
   #signloginhead{
   position: absolute;
   top: 5px;
   left: 150px;
   font-size: 50px;
}
#fname{
position: absolute;
top: 150px;
left: 50px;
height: 40px;
width: 300px;
font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
			#fnamecheck{position: absolute;
				top: 190px;
						left: 50px;
						font-size: 15px;
						color: rgb(130,0,0);}
#lname{
position: absolute;
top: 150px;
left: 400px;
height: 40px;
width: 300px;
font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
				#lnamecheck{position: absolute;top: 190px;
						left: 400px;
						font-size: 15px;
						color: rgb(130,0,0);}
#signemail{
position: absolute;
top: 250px;
left: 50px;
height: 40px;
width: 300px;
font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
				#signemailcheck{position: absolute;top: 290px;
						left: 50px;
						font-size: 15px;
						color: rgb(130,0,0);}
#phone{
position: absolute;
top: 250px;
left: 400px;
height: 40px;
width: 200px;
font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
				#phonecheck{position: absolute;top: 290px;
						left: 400px;
						font-size: 15px;
						color: rgb(130,0,0);}
#signpass{
position: absolute;
top: 350px;
left: 50px;
height: 40px;
width: 300px;
font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
				#signpasscheck{position: absolute;top: 390px;
						left: 50px;
						font-size: 15px;
						color: rgb(130,0,0);}
#signcpass{
position: absolute;
top: 350px;
left: 400px;
height: 40px;
width: 300px;
font-size: 20px;
border-style: solid;
border-color: #98bf21;
border-radius: 5px;
padding: 5px;
}
				#signcpasscheck{position: absolute;top: 390px;
						left: 400px;
						font-size: 15px;
						color: rgb(130,0,0);}
	#signgo{
   position: absolute;
   top: 450px;
   left: 300px;
   width: 150px;
   height: 40px;
   font-size: 25px;
   color: white;
   opacity: .5;
   background-color: rgb(0,87,130);
   border-radius: 20px;
  cursor: pointer;
}
		#signgo:hover{
			opacity: 1;
		}
		</style>

	</head>	
        <body onload="setlogin()" bgcolor="e9eaed">
 
		

		<div class="restbackground">
  <% String imgsrc= (String) request.getAttribute("source");%>
  <div class="opacimg">	<img id="future" src="<%=imgsrc%>" width="350" height="350"/>
			<img id="bleft"  src="left.png" width="50" height="50"/>
			<img id="bright" src="right.png" width="50" height="50"/>
		</div>

           <script> wss_elem=document.getElementById("future"); wssSlide(); </script>

			<p id="b_title"><font color=""><strong>Future Science Fiction (1952-1960 pulp/digest) Volume 4, Issue 5<strong></font></p>
			<p id="author"><font color="425f9c"><EM>Authors:<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sam Sackett, Irving Cox Jr, Philip K. Dick ("Sales Pitch"), Sam Merwin Jr, and Gordon R. Dickson ("Rescue").<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Illustrations by Freas, Emshwiller, Orban, and Luton.</EM></EM><font/></p>

			<p id="lang">Language: English <br/><br/><br/> <strike>Rs. 200</strike> &nbsp;&nbsp; 45% off<br/><font size="05px">Rs. 110</font><br/>Inclusive of taxes <br/>(Free Delivery) </p>

			<p id="len">length: 244 pages <br/><br/>Publisher: McGrah Hill</p>
			<button id="buy" value="Buy Now">Buy Now</button>
			<p id="cashondel">Cash on delivery may be available</p>
			

		</div>
  <div class="linkimg">
  <div class="divimg" style="position:absolute; top:600px; left:100px;" > <img  onclick="changeImage(src)" src="<%=imgsrc%>" width="100" height="100"/> </div>
  <div class="divimg" style="position:absolute; top:600px; left:250px;" > <img  onclick="changeImage(src)" src="<%=imgsrc%>" width="100" height="100"/> </div>
  <div class="divimg" style="position:absolute; top:600px; left:400px;" > <img  onclick="changeImage(src)" src="<%=imgsrc%>" width="100" height="100"/> </div>
  </div>

  <div id="loginpopup" class="pop1"> 
            <div id="pop2">
              <p id="loginhead">Give Your Login Details</p>
              <p id="emailpara">Email :</p>
              <p id="passpara">Password :</p>

             <form name="ContactForm" action="JavaScript:void(0)" onsubmit="return validateForm('loginpopup')">
			 <input id="email" type="text" value="" placeholder="Email"  onblur="inputcheck(this)"">
			 <p id="logemailcheck"> </p>
			 <input id="pass" type="password" value="" placeholder="Password"  onblur="inputcheck(this)">
			 <p id="logpasscheck"></p>
			 <button id="go" value="goo" onclick="">GO</button>
			 </form>
             <img id="close" src="closebutton-md.png" width="50" height="50" onclick="close1('loginpopup')"/>
            </div>
  	 </div>

<div id="signuppopup" class="pop1"> 
            <div id="pop2">
              <p id="signloginhead">Give Your Details</p>

             <form name="ContactForm" action="" onsubmit="return validateForm2('signuppopup')">

			 <input id="fname" type="text" value="" placeholder="First Name" onblur="inputcheck(this)">
			 <p id="fnamecheck"></p>
			 <input id="lname" type="text" value="" placeholder="Last Name"  onblur="inputcheck(this)">
			 <p id="lnamecheck"> </p>
			 <input id="signemail" type="text" value="" placeholder="Email"  onblur="inputcheck(this)">
			 <p id="signemailcheck"> </p>
			 <input id="phone" type="text" value="" placeholder="Phone"  onblur="inputcheck(this)" onkeypress="return isNumberKey(event)">
			 <p id="phonecheck"></p>
			 <input id="signpass" type="password" value="" placeholder="Password"  onblur="inputcheck(this)">
			 <p id="signpasscheck"></p>
			 <input id="signcpass" type="password" value="" placeholder="Confirm Password"  onblur="inputcheck(this)">
			 <p id="signcpasscheck"></p>

			 <button id="signgo" value="go">Sign</button>
			 </form>
             <img id="close" src="closebutton-md.png" width="50" height="50" onclick="close1('signuppopup')"/>
            </div>
  	 </div>	
           
  
              <div class="div1">
           <input id="search" type="text" placeholder="search your book here...">
           <button id="button" value="search" onclick="displayDate">get books</button>
		<a id="signup" onclick="popup('signuppopup')">Sign Up</a>
                
		<a id="login" href="javascript:void(0)" onclick="popup('loginpopup')">login</a>
                <a id="logedin" href="">   </a>
		<a id="status" href="">Check Status</a>
               <img id="logo" src="logo2.jpg" width="80" height="90" />
               <div class="signtab" id="signtab1">
                    <table id="loginfo"> 
                    <tr>
                    <td>MyOrder</td>
                    </tr>
                    <tr>
                    <td>Track</td>
                    </tr>
                    <tr>
                    <td>Offers</td>
                    </tr>
                    <tr>
                        <td onclick="logout()">Logout</td>
                    </tr>
                    </table>
                </div>
		</div>
  
  <script> 
        var tbl = document.getElementById("loginfo");

        if (tbl != null) {

            if (tbl.rows[0] != null) {

                //tbl.rows[0].style.backgroundColor = "#365890";

                tbl.rows[0].style.color = "#FFFFFF";

            }

            for (var i = 0; i < tbl.rows.length; i++) {

                tbl.rows[i].style.cursor = "pointer";
                tbl.rows[i].style.color="blue";
                tbl.rows[i].style.fontSize="15px";
                
                tbl.rows[i].onmousemove = function () { this.style.backgroundColor = "rgb(117, 210, 255)"; };

                tbl.rows[i].onmouseout = function () { this.style.backgroundColor = "";};
                tbl.rows[i].onclick= function () {};

            }

        } 
 </script>
  
                <div class="tab" id="tab1">
                <table id="states">   
                </table>
            </div> 
  
	</body>

</html>