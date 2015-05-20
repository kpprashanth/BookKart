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

		<title>Home</title>
		<link rel="icon" href="logo2.jpg"  type="image/jpg" >
                
 
<script type="text/javascript">
function changetext(id) { 
    id.value=" ";
    id.style.color="rgb(89,89,89)";
  }
 function popup(id) { 
 	var ID=document.getElementById(id);
 	
    	ID.style.display='block';
  }

function close1(id) { 
 	var ID=document.getElementById(id);
 	
    	ID.style.display='none';
  }

function inputcheck(id){
   if(id.value=="" || id.value==null){
   	id.style.borderColor="rgb(138,0,0)";
   }
   else{id.style.borderColor="#98bf21";}

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

	if(cpass.value=="")
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
	ID.style.display='none';}
	   
}

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
<%String checkboxname=(String)request.getAttribute("checkboxname");
System.out.println(checkboxname);
%>
    
function selectcheck(){
             document.getElementById("<%=checkboxname%>").checked = true; 
             
         }
var xmlhttp= new XMLHttpRequest();         

function sorting(id){
    var drama = document.getElementById("drama");
	var iw = document.getElementById("indianwriting");
	var ee = document.getElementById("entranceexam");
    url="sortServlet";
    var count=0;
    var selection=[];
    if(drama.checked==true){
        selection[count]="drama";
        count++;
    }
    if(iw.checked == true){
        selection[count]="indianwriting";
        count++;
    }
    if(ee.checked == true){
        selection[count]="entranceexam";
        count++;
    }
    window.location.href="http://localhost:8080/bookshop/"+url+"?value="+selection;
}
         
 </script>
 
 <!-- <script>
            $(document).ready(function() {                        // When the HTML DOM is ready loading, then execute the following function...
                $('#drama').click(function() {               // Locate HTML DOM element with ID "somebutton" and assign the following function to its "click" event...
                    $.get('sortServlet', function(responseText) { // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                        $('#engdiv').text(responseText);         // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
                    });
                });
            });
        </script>
-->

</head>
 <body onload="selectcheck()">
		<style type="text/css">

			.div1{

				position: fixed;
				background-color:#005387;
				left:0;
				top:0;
				width: 100%;
				height: 25%;

			}

			.restbackground{

				position: fixed;
				background-color:e9eaed;
				left: 0;
				top: 93;
				width: 100%;
				height: 100%;

			}

			#search{

				position: fixed;
				left: 300;
				top: 40;
				width: 600px;
				height: 40px;
				font-size: 20px;

			}
			#button{

				position: fixed;
				left: 900;
				top: 40;
				width: 80px;
				height: 40px;
				background-color: fdd922;
				border: 0;
				cursor: pointer;

			}
			  #button:hover{
			  	border-width: 5px;
                 border-style: solid;
					border-color: #98bf21;

			  }

			#signup{

				position: fixed;
				left: 1000;
				top: 50;
				width: 80px;
				height: 40px;
				color: white;
				text-decoration: none;
				cursor: pointer;

			}  
			 #signup:hover{
					color: #98bf21;}

			#login{

				position: fixed;
				left: 1080;
				text-decoration: none;
				top: 50;
				width: 80px;
				height: 40px;
				color: white;

			}
                   #login:hover{
					color: #98bf21;}

			.booktypes{

				position: fixed;
				left:0;
				top:90;
				width: 20%;
				height: 100%;

			}

			#types{

				position: fixed;
				left: 70;
				top: 115;
				font-size: 20px;
				
				

			}

			#list{

				position: fixed;
				left: 50;
				top: 150;
				font-size: 20px;
				border-spacing: 10px;

			}

			#pricepara{

				position: fixed;
				left: 80;
				top: 360;
				font-size: 25px;
				

			}

			#price{

				position: fixed;
				left: 50;
				top: 400;
				font-size: 20px;

			}

			#p{

				position: fixed;
				left:350;
				top: 80;
				font-size: 25px;


			}
            .flip3D{ width:160px; height:160px; margin:10px; float:left; }

             .flip3D > .front{
	         position: absolute;
				
	border-style: solid;
    border-color: #98bf21;
	-webkit-transform: perspective( 300px ) rotateY( 0deg );
	transform: perspective( 300px ) rotateY( 0deg );
	background:#FC0; width:160px; height:160px; border-radius: 7px;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transition: -webkit-transform .5s linear 0s;
	transition: transform .5s linear 0s;
}

.flip3D > .back{
	           position: absolute;
				
     border-style: solid;
    border-color: #98bf21;
	-webkit-transform: perspective( 300px ) rotateY( 180deg );
	transform: perspective( 300px ) rotateY( 180deg );
	background: #80BFFF; width:160px; height:160px; border-radius: 7px;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transition: -webkit-transform .5s linear 0s;
	transition: transform .5s linear 0s;
}
.flip3D:hover > .front{
	-webkit-transform: perspective( 300px ) rotateY( -180deg );
	transform: perspective( 300px ) rotateY( -180deg );
}
.flip3D:hover > .back{
	-webkit-transform: perspective( 600px ) rotateY( 0deg );
	transform: perspective( 600px ) rotateY( 0deg );
}

 
			#scidiv{

				position: fixed;
				left: 380;
				top:130;
				font-size: 20px;

			}
			

			
			#img1avail{

				position: fixed;
				left: 380;
				top: 340

			}

			#img1avail1{

				position: fixed;
				left: 610;
				top: 340;

			}

			#img1avail2{

				position: fixed;
				left: 830;
				top: 340

			}

			#img1avail3{

				position: fixed;
				left: 1040;
				top: 340

			}
			#engdiv{

				position: fixed;
				left: 380;
				top:420;
				font-size: 20px;

			}

			
			#logo{

				position: fixed;
				left: 90;
				top: 0;

			}
			#status{

				position: fixed;
				left: 1150;
				top: 50;
				text-decoration: none;
				color: white;

			}
			  #status:hover{
					color: #98bf21;}

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
 
 

	
	

		<div class="div1">
           <input id="search" type="text" placeholder="search your book here...">
		</div>


		<div class="booktypes">

		</div>

		<div class="restbackground">

		</div>

		
		<button id="button" value="search" onclick="displayDate">get books</button>
		<a id="signup" onclick="popup('signuppopup')">Sign Up</a>
		<a id="login" href="javascript:void(0)" onclick="popup('loginpopup')">login</font></a>
		<a id="status" href="">Check Status</a>
		<p id="types"><b>Types of books</b></p>
		<ul type="round" id="list">
                    <form name="checkboxes" id="checkboxesid">
			<input type="checkbox" name="science fiction" onclick="sorting(this)"/><font color="303030">Science fiction </font><br/>
			<input type="checkbox" name="drama" id="drama" onclick="sorting(this)"/><font color="303030">Drama</font> <br/>
			<input type="checkbox" name="Indianwriting" id="indianwriting" onclick="sorting(this)"/><font color="303030">Indian Writing</font> <br/>
			<input type="checkbox" name="entrance exam" id="entranceexam" onclick="sorting(this)"/><font color="303030">Entrance Exam</font> <br/>
			<input type="checkbox" name="Children" /><font color="303030">Children</font> <br/> 
			<input type="checkbox" name="engineering" /><font color="303030">Engineering books </font><br/>
			<input type="checkbox" name="medical" /><font color="303030">Medical books</font> <br/>
			<input type="checkbox" name="school" /><font color="303030">School books</font> <br/>
 			<input type="checkbox" name="others" /><font color="303030">others</font> <br/>
		    </form>

		</ul>

		<p id="pricepara">Price</p>

		<ul id="price">

			<input type="checkbox" name="1-100"/><font color="303030">Rs.1-Rs.100</font> <br/>
			 <input type="checkbox" name="101-200"/><font color="303030">Rs.101-Rs.200</font> <br/>
			 <input type="checkbox" name="201-500"/><font color="303030">Rs.201-Rs.500</font> <br/>
			 <input type="checkbox" name="501-1000"/><font color="303030">Rs.501-Rs.1000 </font><br/>
			 <input type="checkbox" name="1001-above"/><font color="303030">Rs.1001 and Above </font<br/>

		</ul>

		<p id="p"><font color="303030">Top Deals:</font></p>
		<p id="scidiv"><font color="303030">Science-fiction:</font></p>

         <%Iterator itr;  int top=180,left=380,count=0; String s;%>
         <% List data= (List) request.getAttribute("lst");
            
         for(itr=data.iterator(); itr.hasNext();){ count++; s=(String)itr.next();%>
         
         
	 <div class="flip3D">
             <div class="back" style="position:absoulute; top:<%=top%>px; left:<%=left%>px;">  <a id="img1" href="discriptive.htm" ><img src="<%=s%>" width="160" height="160"></a> </div>
		<div class="front" style="position:absoulute; top:<%=top%>px; left:<%=left%>px;">  <a id="img1" href="discriptive.htm" ><img src="<%=s%>" width="160" height="160"></a>  </div>
	</div>

	<% left=left+220;
         if(count%4==0)
         {left=380;top=top+300;}
     } %>	
		
     
		<p id="img1avail"><font color="303030">Available<br/>upto 45% discount <br/> No of sellers 4</font></p>
		<p id="img1avail1"><font color="303030">Available<br/>upto 25% discount <br/> No of sellers 2</font></p>
		<p id="img1avail2"><font color="303030">Available<br/>upto 10% discount <br/> No of sellers 1</font></p>
		<p id="img1avail3"><font color="303030">Available<br/>upto 15% discount <br/> No of sellers 4</font></p>



		<p id="engdiv"><font color="303030">Engineering books:</font></p>
	
		<img id="logo" src="logo2.jpg" width="80" height="90" />

  <div id="loginpopup" class="pop1"> 
            <div id="pop2">
              <p id="loginhead">Give Your Login Details</p>
              <p id="emailpara">Email :</p>
              <p id="passpara">Password :</p>

             <form name="ContactForm" action="JavaScript:void(0)" onsubmit="return validateForm('loginpopup')">
			 <input id="email" type="text" value="" placeholder="Email"  onblur="inputcheck(this)"">
			 <p id="logemailcheck"></p>
			 <input id="pass" type="password" value="" placeholder="Password"  onblur="inputcheck(this)">
			 <p id="logpasscheck"></p>
			 <button id="go" value="goo" onclick="displayDate">GO</button>
			 </form>
             <img id="close" src="closebutton-md.png" width="50" height="50" onclick="close1('loginpopup')"/>
            </div>
  	 </div>

 <div id="signuppopup" class="pop1"> 
            <div id="pop2">
              <p id="signloginhead">Give Your Details</p>

             <form name="ContactForm" action="JavaScript:void(0)" onsubmit="return validateForm2('signuppopup')">

			 <input id="fname" type="text" value="" placeholder="First Name"  onblur="inputcheck(this)">
			 <p id="fnamecheck"></p>
			 <input id="lname" type="text" value="" placeholder="Last Name"  onblur="inputcheck(this)">
			 <p id="lnamecheck"> </p>
			 <input id="signemail" type="text" value="" placeholder="Email"  onblur="inputcheck(this)">
			 <p id="signemailcheck"> </p>
			 <input id="phone" type="text" value="" placeholder="Phone"  onblur="inputcheck(this)" onkeypress="return isNumberKey(event)">
			 <p id="phonecheck"></p>
			 <input id="signpass" type="password" value="" placeholder="Password"  onblur="inputcheck(this)">
			 <p id="signpasscheck"></p>
			 <input id="signcpass" type="password" value="" placeholder="Confirm Password" onblur="inputcheck(this)">
			 <p id="signcpasscheck"></p>

			 <button id="signgo" value="go" >Sign</button>
			 </form>
             <img id="close" src="closebutton-md.png" width="50" height="50" onclick="close1('signuppopup')"/>
            </div>
  	 </div>		
	</body>

</html>
