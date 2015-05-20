6
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<html>
	<head>

		<title>Home</title>
		<link rel="icon" href="logo2.jpg"  type="image/jpg" >
<script src="http://code.jquery.com/jquery-latest.min.js"> </script>

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
           location.reload(true);}
	   
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
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function goto(id){
    url="samservlet";
    var elm=[];
    elm[0]=id.value;
    window.location.href="http://localhost:8080/bookshop/"+url+"?value="+elm;
}
function discript(id){
    
    url="Discriptive";
    window.location.href="http://localhost:8080/bookshop/"+url+"?id="+id.src;
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
    location.reload(true);
      
  }
 </script>
 </head>
 <body bgcolor="e9eaed" onload="setlogin()">
		<style type="text/css">

			.div1{

				position: fixed;
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
				cursor: pointer;

			}
			  #button:hover{
			  	border-width: 5px;
                 border-style: solid;
					border-color: #98bf21;

			  }

			#signup{

				position: absolute;
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
				text-decoration: none;
				top: 50;
				width: 80px;
				height: 40px;
				color: white;

			}
                   #login:hover{
					color: #98bf21;}

			

			#types{

				position: absolute;
				left: 70;
				top: 115;
				font-size: 20px;
				
				

			}

			#list{

				position: absolute;
				left: 50;
				top: 150;
				font-size: 20px;
				border-spacing: 10px;

			}

			#pricepara{

				position: absolute;
				left: 80;
				top: 360;
				font-size: 25px;
				

			}

			#price{

				position: absolute;
				left: 50;
				top: 400;
				font-size: 20px;

			}

			#p{

				position: absolute;
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

				position: absolute;
				left: 380;
				top:130;
				font-size: 20px;

			}
			

			
			#img1avail{

				position: absolute;
				left: 380;
				top: 340

			}

			#img1avail1{

				position: absolute;
				left: 610;
				top: 340;

			}

			#img1avail2{

				position: absolute;
				left: 830;
				top: 340

			}

			#img1avail3{

				position: absolute;
				left: 1040;
				top: 340

			}
			#engdiv{

				position: absolute;
				left: 380;
				top:420;
				font-size: 20px;

			}

			
			#logo{

				position: absolute;
				left: 90;
				top: 0;

			}
			#status{

				position: absolute;
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

	
	


		

   	
		
		<p id="types"><b>Types of books</b></p>
		<ul type="round" id="list">

			<input type="checkbox" name="science fiction" id="science_fiction" value="entranceexam" onclick="goto(this)"/><font color="303030">Science fiction </font> </a><br/>
			<input type="checkbox" name="drama" id="Drama" value="drama" onclick="goto(this)"/><font color="303030">Drama</font> <br/>
			<input type="checkbox" name="Indianwriting" id="Indian_Writing" value="indianwriting" onclick="goto(this)"/><font color="303030">Indian Writing</font> <br/>
			<input type="checkbox" name="entrance exam" id="Entrance_Exam" value="entranceexam" onclick="goto(this)"/><font color="303030">Entrance Exam</font> <br/>
			<input type="checkbox" name="Children" /><font color="303030">Children</font> <br/> 
			<input type="checkbox" name="engineering" /><font color="303030">Engineering books </font><br/>
			<input type="checkbox" name="medical" /><font color="303030">Medical books</font> <br/>
			<input type="checkbox" name="school" /><font color="303030">School books</font> <br/>
 			<input type="checkbox" name="others" /><font color="303030">others</font> <br/>
			

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
                
	 <%Iterator itr;  int top=180,left=380,count=0; String s,setid="";%>
         <% List data= (List) request.getAttribute("lst");
            
         for(itr=data.iterator(); itr.hasNext();){ count++; s=(String)itr.next();setid="img"+count;
         System.out.println("In MyHome jsp.."+setid);
         %>
         
         
	 <div class="flip3D">
             <div class="back" style="position:absoulute; top:<%=top%>px; left:<%=left%>px;">  <a ><img src="<%=s%>"  id="<%=setid%>" value="<%=setid%>"  onclick="discript(this)" width="160" height="160"></a> </div>
	     <div class="front" style="position:absoulute; top:<%=top%>px; left:<%=left%>px;">  <a><img src="<%=s%>"  id="<%=setid%>" value="<%=setid%>"  onclick="discript(this)" width="160" height="160"></a>  </div>
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
 <% /*  String cooked="false";String username="";
         cooked=request.getParameter("cooked");
        if(cooked.equals("true")){
         Cookie[] cookies = request.getCookies();
           System.out.println("Cooked :"+cooked);
if(cookies.length>1){
System.out.println("name  :"+cookies[1].getName());
 username=cookies[1].getValue();}}*/
 %>                
                
                
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
