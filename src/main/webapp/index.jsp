<html>
    <style>
    body
{
	background-image: url("images10.jpg");
	
	background-repeat: no-repeat;
background-size:100%;
}
    .form{

position: absolute;
top:10%;
left: 70%;
border: 1px solid;
padding: 70px;
padding-top: 30px;
box-sizing: border-box;
border-radius: 25px;
background-color:transparent;



}

.form .input input{
border-radius: 5px;
border-color: black;
width: 250px;
padding: 10px;
background-color: rgb(104, 100, 98);
background-color:transparent;


}
::placeholder{
color: #000;
}
.form .button button{
background-color:rgb(140, 223, 226);
border-radius: 8px;
 text-align:center;
padding: 10px;
padding-left: 150px;
  border-color: black;


}
.but button{
background-color:rgb(228, 214, 18);
border-radius: 5px;
padding: 30px;
padding-left: 30px;
text-align: center; 
}
.form .h2{
text-align: center;

}
a:link{
color:blue;
font-size: 20px;
}
a:visited{
color: blue;
}
a:hover{
color: red;
}
.logout{
position: absolute;
top:3%;
left: 90%;

}
   
  
   
    </style>

    <body>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
    
    </script>
     <%
    String s=null;
    s=(String)request.getAttribute("register");
    if(s!=null)
   	{%>
   	 <script >
   	 swal("login failed ", "phone or password wrong  ", "error");
   	</script>
   	 <%
   	}
    %>
    <script type="text/javascript">
  
    function log(){
    
           var e=document.getElementById("email");
           var pass=document.getElementById("password");
    
           if(e.value==""){
    
              e.style.border="solid 3px red";
               return false;
           }
    
           else if(pass.value==""){
    
               pass.style.border="solid 3px red";
               return false;
           }
           else
           return true;
    
        }
   
    </script>
        <div class="slider">
   <div class="load">

   </div>
   <div class="cote">
<div class="pri">
        <div class="back" style="visibility:visible;">
                <div class="form" style="visibility:visible;">
                    <div class="visible" style="visibility:hidden">
                    <h3 style="color: red" >Please file correct password and username</h3>
                    </div>
                    <div class="log" style="visibility:hidden" >
                        <h2 style="color:red">Please Login</h2>
                    </div>
                <form onsubmit="return log();" action="login" method="post">
                    <h2>Log in</h2>
                    
                    <div class="input">
                    <input name="phno"id="email"type="text"placeholder="enter your phone number"><br><br>
                    <input name="pas" id="password" type="password"placeholder="enter your password"><br><br>
                </div>
                <div class="button">
                    <button type="submit">Login</button>          <a href="http://localhost:8080/minprojectfirst/register.jsp">new user ?</a>
                </div>
                
                </form>
                </div>
                </div>    
</div>
   </div>
        </div>
    </body>

</html>