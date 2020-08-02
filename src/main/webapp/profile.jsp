
<%@page import="userdata.com.Userinfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <%
             String phone=(String)request.getAttribute("phone");
             String name=(String)request.getAttribute("name");
             String lname=(String)request.getAttribute("lname");
             String email=(String)request.getAttribute("email");
             String conform=(String)request.getAttribute("check");
             String myuser=(String)request.getAttribute("user");
             
 %>
 <%
 userdata.com.Userinfo user=(userdata.com. Userinfo)request.getAttribute("data");
 String ss=(String)request.getAttribute("check");
 String msg=(String)request.getAttribute("check1");
 %>
 
  <style>
      *{
           margin: 0px;
           padding: 0px;
           
       }
        #container ul{
           list-style: none;
           
       }
      
       #container ul{
           list-style: none;
           position: fixed;
            width: 300px;
           
       }
       #container ul li{
           background-color:black;
          
           border: 0px solid white;
           height: 80px;
           line-height: 50px;
           text-align: center;
           color: white;
           font-size: 20px;
           font-family: cursive;
           
       }
       #container ul li:hover{
           background-color:greenyellow;
           
       }
       
    
       #online{
           background-color:black;
           height: 80px;
           font-size: 30px;
           font-family:inherit;
           color:white;
           
       }
       #reset{
           position: 300px;
           align-content: center;
           
       }
          input{
            
            
            border:1px;
            border-bottom: 2px solid purple;
            
        }
       #button{
           background-color:black;
           width: 300px;
           height: 80px;
           margin: 0;
           color:white;
           border: none;
           font-size: 20px;
           font-family: cursive;
       } 
       #button li:hover{
           background-color:antiquewhite;
           }
       
   

   input{
    border:2px solid darkgreen ;
    height: 45px;
    width: 300px;
    box-sizing: border-box;
    border-radius: 5px;
  
}
  
   ::placeholder {
  color: red;
  text-align: center;
  font-size: 30px;
  
  
  opacity: 1; /* Firefox */
}
#update
{
   
    width: 300px;
    height: 50px;
    border-radius: 10px;
    font-size: 25px;
    font-family: bold;
    color: black;
    border: 2px solid black;
    background-color: orange;
}

    </style>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<% if(ss=="ok")
{ %>
<script>
swal("Good job!", "update done", "success");
</script>
<%} 
else if(ss=="fail")
{
%>
<script>
swal("Try again!", "not updated", "error");
</script>
<%} %>

           
      
       <div id="online">
        <h1>Online Bank</h1>
  
       <div id="container">
        <ul>
            <li><form onsubmit="true" action="home" method="post"><button  id="button"  value="<% out.print(user.getPhno()) ;%>" name="p1"><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;Home</li></button></form></li> 
            <li><form onsubmit="true" action="profile" method="post"><button id="button" value="<% out.print(user) ;%>" type="submit" name="pp"><li><i class="fa fa-user" aria-hidden="true"></i>Profile</li></button></form></li>
            <li><form onsubmit="true" action="acount" method="post"><button id="button"  value="<% out.print(user.getPhno()) ;%>" type="submit" name="ph"><li><i class="fa fa-university" aria-hidden="true"></i>Bank Account</li></button></form></li>
            
            <li><form onsubmit="true" action="loanpage" method="post"><button id="button" value="<% out.print(user.getPhno()) ;%>"  name="phh" type="submit" ><li>Loan</li></button></form></li>
            <li><form onsubmit="true" action="transation" method="post"><button id="button" value="<% out.print(user.getPhno()) ;%>" type="submit"  name="phno"><li> <i class="fa fa-credit-card-alt" aria-hidden="true"></i>Transaction</li></button></form></li>
            <li><form onsubmit="true" action="about" method="post"><button  id="button"><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;about</li></button></form></li> 
         
             <li><form onsubmit="true" action="contact" method="post"><button ><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;Contact</li></button></form></li> 
            </ul>
        </div>
              
    </div>
    
    
      
              
                <div style="margin-left: 300px;margin-top: 10%">
                 
                <center>
                 <form onsubmit="return update();" action="update"method="post" name ="form">
                 
                 <input id="name1" type="text"placeholder="<%out.print(name);%>" name="name"><br><br>
                  <input id="lname1" type="text"placeholder="<%out.print(lname);%>" name="lname"><br><br>
                   <input id="phno1" type="text"placeholder="<%out.print(phone);%>" name="phone"><br><br>
                    <input id="email1" type="text"placeholder="<%out.print(email);%>" name="email"><br><br>
                     <button type="submit" id="update" onclick="update()" value=<%out.print(myuser);%> name="ph" >update</button>
                </form>
                </center>
                </div>

</body>
</html>