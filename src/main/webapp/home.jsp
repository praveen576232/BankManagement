<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
       
      #name{
      margin-top:3%;
      margin-left:7%;
     font-family: bold;
     font-size: 40px;
    
      }
     #bank
{
   
    width: 200px;
    height: 50px;
    border-radius: 10px;
    font-size: 25px;
    font-family: bold;
    color: black;
    border: 2px solid black;
    background-color: orange;
    
     
    
}
     #credit
{
    width: 200px;
    height: 50px;
    border-radius: 10px;
    font-size: 25px;
    font-family: bold;
    color: black;
    border: 2px solid black;
    background-color: orange;
  
}
#pp
{
  width: 200px;
  height: 200px;
 color:white;
 font-size:20px;
 
 background-color:black;
 border-radius: 10px;
 background-size:100% ;
}
body{
    
}
.p1
{
   margin-left: 100px; 
   margin-right: 50px;

}
.p2
{
    margin-right: 50px;
}
.p3
{
    margin-right: 50px;
}


* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;

  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;

  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
.load{
        animation: slide 1s;
    }
    .slider
    {
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;
       
        width: 100%;
        height: 100%;
        animation: slide 40s infinite;
    }
  
  
    </style>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
    <body >
    <%
  userdata.com.Userinfo user=(userdata.com. Userinfo)request.getAttribute("data");
    String ss=null;
    String msg=null;
     ss=(String)request.getAttribute("check");
    
    %>
    <%
    if(ss!=null)
    {
    if(ss=="ok")
    { %>
<script>
//swal("Good job!", "success", "success");
</script>
   <%} 
else if(ss=="fail")
  {
  %>
<script>
//swal("somthing went wrong", "error", "error");
</script>
 <%}
    } %>
      
          
      
      
      
      
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
         
             <li><form onsubmit="true" action="contact" method="post"><button value="<% out.print(user.getPhno()) ;%>" name="phhh"><li><i class="fa fa-home" aria-hidden="false"  ></i>&nbsp;&nbsp;Contact</li></button></form></li> 
         
            </ul>
        </div>
              
    </div>
         <div class="slider">
                  <div class="load">
               
                  </div>
    
                <div style="display:inline-block; margin-left:350px">
                  <h2 id="name"><% out.print(user.getName()) ;%></h2>
                 </div>
               <div style="margin-left: 60%; margin-top: -5%;">
            
                 <button id="bank" onclick="openForm2()" >Add Bank</button> 
                   
                       
                      <button id="credit" onclick="openForm()" >Add card</button>    
                
                 
               </div>
               <div id="prav" style="margin-left: 350px; margin-top: 200px;">
                    
                            <button id="pp" class="p1" onclick="openForm3()" >Transfer</button>    
                      
                      
                             
                       
                      
                            <button id="pp" class="p3"  onclick="openForm4()" >check Balance</button>    
                       
             </div>    
             <form onsubmit="true" action="loanpage" method="post" style="margin-left: 970px; margin-top: -200px"><button id="pp" class="p2"  value="<% out.print(user.getPhno()) ;%>"  name="phh" type="submit">Apply Loan</button> </form> 
               
             <div class="form-popup" id="myForm" >
                    <form  onsubmit="true" method="post" action="card" class="form-container">
                      <h1>card</h1>
                     
                      <input type="text" id='card'  placeholder="Enter card " name="card" required maxlength="16">                           
                             <img  id="i1" src="https://img.icons8.com/cute-clipart/48/000000/visa.png">
                             <img  id="i2" src="https://img.icons8.com/color/48/000000/mastercard.png">
                             <img  id="i3" src="https://img.icons8.com/cute-clipart/48/000000/bank-card-front-side.png">
                      <input type="text" id="cardname" placeholder="Enter holder name " name="cardname" required >
                      <input type="text" name="date" placeholder="date/mounth" id="date" maxlength="5"style="width: 100px;" >
                      <input type="text" id="cvv" placeholder="cvv " name="cvv" required maxlength="3" style="width: 80px;">
                     
                      <button type="submit" class="btn" value="<% out.print(user.getPhno()); %>" name="phno">submit</button>
                      <button type="button" class="btn cancel" onclick="closeForm();" >Close</button>
                    </form>
                  </div>



                   <div class="form-popup" id="myForm2" >
                    <form  onsubmit="true" class="form-container" method="post"  action="bank">
                      <h1>Bank </h1>
                     
                      <input type="text" id='card'  placeholder="Enter Bank name " name="Bank" required > 
                      <input type="text" id='card'  placeholder="Enter Bank number  " name="number" required >                                          
                      <input type="text" id="cardname" placeholder="Enter holder name " name="name" required >
                      <input type="text" name="Baranch" placeholder="Enter Baranch" id="Baranch"  >
                      <input type="text" id="ifsc" placeholder="ifsc code " name="ifsc">
                     
                      <button type="submit" class="btn" value="<% out.print(user.getPhno()); %>" name="phno">submit</button>
                      <button type="button" class="btn cancel" onclick="closeForm2();">Close</button>
                    </form>
                  </div>
                 
                  
                   <div class="form-popup" id="myForm3" >
                    <form  onsubmit="true" class="form-container" method="post"  action="transform">
                      <h1>Transform </h1>
                       <input type="text" id="cardname" placeholder="to number  " name="number" required >
                      <input type="text" id='card'  placeholder="to Bank number  " name="banknumber" required >                                          
                      <input type="text" id="cardname" placeholder="Enter holder name " name="name" required >
                      <input type="text" name="Baranch" placeholder="Enter Baranch" id="Baranch"  >
                      <input type="text" id="ifsc" placeholder="ifsc code " name="ifsc">
                      <input type="text" name="amount" placeholder="Enter amount" id="amount"  >
                      <button type="submit" class="btn" value="<% out.print(user.getPhno()); %>" name="phno">submit</button>
                      <button type="button" class="btn cancel" onclick="closeForm3();">Close</button>
                    </form>
                  </div>
                   
                   
                   
                   <div class="form-popup" id="myForm4">
                   <div class="form-container" >
                      <h1>Balance  </h1>
                     
                       <h1>
                       <%
                       
                       out.print(user.getBalance());
                       
                       %>
                       
                       </h1>
                    
                      <button type="button" class="btn cancel" onclick="closeForm4();">Close</button>
                    </div>
                  </div>
           
                  <script>
                   

                        function openForm() {
                          document.getElementById("myForm").style.display = "block";
                        }
                        function openForm2() {
                            document.getElementById("myForm2").style.display = "block";
                          }
                        function openForm3() {
                            document.getElementById("myForm3").style.display = "block";
                          }
                        function openForm4() {
                            document.getElementById("myForm4").style.display = "block";
                          }
                        function closeForm() {
                          document.getElementById("myForm").style.display = "none";
                        }
                        function closeForm2() {
                            document.getElementById("myForm2").style.display = "none";
                          }
                        function closeForm3() {
                            document.getElementById("myForm3").style.display = "none";
                          }
                        function closeForm4() {
                            document.getElementById("myForm4").style.display = "none";
                          }
                        function cardinfo()
                        {
                      var  card= document.getElementById("card");
                      var   cardname=    document.getElementById("cardname");
                      var  date= document.getElementById("date");
                      var  cvv= document.getElementById("cvv");
                      if(card.value.length==16)
                      {
                        var s=card.value.substring(1);
                       if(s==4)
                       {
                        document.getElementById("i1").style.visibility="visble";
                       }
                      }
                      else{
                        alert("ot ok");
                      }
                        }
                      function cardd()
                      {
                        alert("ppppppp");
                      }
                        </script>
           </div> 
</body>
</html>