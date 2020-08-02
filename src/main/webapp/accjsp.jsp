<%@page import="com.Acount.Account"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
       
    </style>
    


</head>


<body>
<%
//Account[] ac=(Account[])request.getAttribute("data");
String p1=(String)request.getAttribute("data");
userdata.com.Userinfo user=(userdata.com. Userinfo)request.getAttribute("data1");
try
{
	
	String url= "jdbc:mysql://localhost:3306/dbmsproject";
	String uname="root";
	String pass="praveed123";

	
 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,pass);
	
	Statement st=con.createStatement();
	ResultSet s =  st.executeQuery("select * from bank where  phno = '"+p1+"' ");
	
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
    
                <div style="margin-left:400px" >
           <center> <h1>BANK ACCOUNTS</h1></center>
           <%  
           int i=0;
       	while(s.next()){
            %>
            		
   
     <table style="margin-left:50px">
    <tr style="tab-size: 50px">
     <td   style="text-align: center" colspan="2"><h3>Bank details -> <%out.print(i+1); i++;%><h3></h3></td>  
    </tr>
    <tr>
    <td style="text-align:center">NAME</td>
    <td><h3 style="border: 1px solid red"><%out.print(s.getString("name")); %></h3></td>
    </tr>
<tr>
    <td>NUMBER</td>
    <td><h3 style="border: 1px solid red"><% out.print(s.getString("number")); %></h3></td>
    </tr>
<tr>
    <td>BRANCH</td>
    <td><h3 style="border: 1px solid red"><% out.print(s.getString("branch")); %></h3></td>
    </tr>
<tr>
    <td>IFSC CODE</td>
    <td><h3 style="border: 1px solid red"><% out.print(s.getString("ifsc")); %></h3></td>
    </tr>

</table>
  <form onsubmit="true" action="delete" method="post" style="margin-left: 100px"><button id="delete" value="<% out.print(user.getPhno()+s.getString("number")) ;%>"  name="phdelete" type="submit" >delete</button></form>
            	<%}
            	}catch(Exception e){}%>
           
            
                </div>
</body>
</html>