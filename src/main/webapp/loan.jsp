<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <script>
    function abc(){
        alert("Loan Application succesfully sent");
    }
    
    
    </script>
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
  userdata.com.Userinfo user=(userdata.com. Userinfo)request.getAttribute("data");
    %>
        
           <div id="online">
        <h1>Online Bank</h1>
  
       <div id="container">
        <ul>
<li><form onsubmit="true" action="home" method="post"><button  id="button"  value="<% out.print(user.getPhno()) ;%>" name="p1"><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;Home</li></button></form></li>            <li><form onsubmit="true" action="profile" method="post"><button id="button" value="<% out.print(user) ;%>" type="submit" name="pp"><li><i class="fa fa-user" aria-hidden="true"></i>Profile</li></button></form></li>
            <li><form onsubmit="true" action="acount" method="post"><button id="button"  value="<% out.print(user.getPhno()) ;%>" type="submit" name="ph"><li><i class="fa fa-university" aria-hidden="true"></i>Bank Account</li></button></form></li>
            
            <li><form onsubmit="true" action="loanpage" method="post"><button id="button" value="<% out.print(user.getPhno()) ;%>"  name="phh" type="submit" ><li>Loan</li></button></form></li>
            <li><form onsubmit="true" action="transation" method="post"><button id="button" value="<% out.print(user.getPhno()) ;%>" type="submit"  name="phno"><li> <i class="fa fa-credit-card-alt" aria-hidden="true"></i>Transaction</li></button></form></li>
            <li><form onsubmit="true" action="about" method="post"><button  id="button"><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;about</li></button></form></li> 
         
             <li><form onsubmit="true" action="contact" method="post"><button ><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;Contact</li></button></form></li> 
            </ul>
        </div>
              
    </div>
    
    
    <div> &nbsp; &nbsp;
         <form style="margin-left: 350px;text-align:300px" onsubmit="true" action="loan" method="post">
    <h2>PERSONAL DETAILS&nbsp;</h2>&nbsp; &nbsp;<br><br>
       
        <label>Name:&nbsp;</label>
        <input type="text" name="name" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label>Gender:&nbsp;</label>
        <input type="checkbox" name="t1" value="M">M &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="t1" value="f"> F  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label>Date Of Birth:&nbsp;</label>
    <input type="date" name="date"> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label>Phone no:&nbsp;</label>
    <input type="text"  name="ph"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
        <label>Address:&nbsp;</label>
    <input type="text" name="Address"> &nbsp;<br><br>
        <h2>IDENTITY</h2><br><br>
        <label>Passport:</label>
        <input type="text" name="passport"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <label>Aadhar no:</label>
        <input type="text" name=aadhar> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
            
        
        
        <h2>LOAN DETAILS</h2><br><br>
        <label>Requirement Amount:</label>
        <input type="number" name="amt" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label>Loan Period:</label>
        <input type="date" name="period"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label>Policy Terms:</label>
        <input type="text" name="policy"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
        <label>Loan Type:</label>
        <select name="loan">
        <option>Educational Loan</option>
        <option>Student Loan</option>
        <option>Housing Loan</option>
        <option>Personal Loan</option>
        <option>Business Loan</option>
          </select><br><br>
        <h2>DECLARATIONS</h2><br>
        <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In support of my loan application.I set out above information,which is true to the best of my knowledge.I understand that if any of the information  I have provided proves to be false,it will lead to the automatic decline of my application.I will also be available for further discussions upon request.</p><br><br>
    
             <button type="submit" style="align-content: center">Submit</button><br><br>
        
        
        <div id="reset">
        <button>Reset</button>
        </div>
             </form>
        </div>
        
</body>
</html>