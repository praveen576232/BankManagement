<%@page import="com.Acount.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
       
    </style>
    
</head>
<body>
<%
Account[] ac=(Account[])request.getAttribute("data");
userdata.com.Userinfo user=(userdata.com. Userinfo)request.getAttribute("data1");
%>
     <div id="online">
        <h1>Online Bank</h1>
  
       <div id="container">
        <ul>
            <li><form onsubmit="true" action="home" method="post"><button  id="button"  value="<% out.print(user.getPhno()) ;%>" name="p1"><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;Home</li></button></form></li> 
            <li><form onsubmit="true" action="profile" method="post"><button id="button" value="<% out.print(user) ;%>" type="submit" name="pp"><li><i class="fa fa-user" aria-hidden="true"></i>Profile</li></button></form></li>
            <li><form onsubmit="true" action="acount" method="post"><button id="button"  value="<% out.print(user.getPhno()) ;%>" type="submit" name="ph"><li><i class="fa fa-university" aria-hidden="true"></i>Bank Account</li></button></form></li>
            
            <li><form onsubmit="true" action="loanpage" method="post"><button id="button" value="<% out.print(user.getPhno()) ;%>"  name="phh" type="submit" ><li>Loan</li></button></form></li>
            <li><form onsubmit="true" action="transation" method="post"><button id="button" value="<% out.print(user.getPhno()) ;%>" type="submit"  name="phno"><li> <i class="fa fa-credit-card-alt" aria-hidden="true"></i>Transaction</li></button></form></li>
            <li><button id="button"><li><i class="fa fa-address-book-o" aria-hidden="true"></i>About</li></button></li>
            <li><button id="button"><li><i class="fa fa-mobile" aria-hidden="true"></i>Contact</li></button></li>
            </ul>
        </div>
              
    </div>
    
      
      
</body>
</html>