<%@page import="com.Acount.savetransformdata"%>
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
<style type="text/css">

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
String phno=(String)request.getAttribute("data");
userdata.com.Userinfo user=(userdata.com. Userinfo)request.getAttribute("data1");
try
{
	
	String url= "jdbc:mysql://localhost:3306/dbmsproject";
	String uname="root";
	String pass="praveed123";

	
 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,pass);
	
	Statement st=con.createStatement();
	ResultSet s =  st.executeQuery("select * from transform where  phno = '"+phno+"' ");
	
	Statement st1=con.createStatement();
	ResultSet s1 =  st1.executeQuery("select tdate from transdate where  phno = '"+phno+"' ");
	
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
    
      
      
                <div style="margin-left:350px">
                 <table>
    <tr style="tab-size: 50px">
   <td ><h1>Number</h1>    </td>  
      <td ><h1>Bank number</h1>     </td>   
   
      <td  ><h1>Amount</h1></td>  
   
      <td ><h1>Branch</h1></td>  
   
      <td  ><h1>Ifsc</h1></td>  
   
      <td ><h1>date ad time</h1></td>  
    </tr>
      <%
  	while(s.next())
  	
      		{%>
          <tr style="tab-size: 50px">
   <td  style="border: 1px solid red"> <h3> <% out.print(s.getString("number")); %></h3> </td>  
      <td  style="border: 1px solid red"><h3><% out.print(s.getString("banknumber")); %></h3>     </td>   
   
      <td  style="border: 1px solid red" ><h3><% out.print(s.getString("amount")); %></h3></td>  
   
      <td  style="border: 1px solid red" ><h3><% out.print(s.getString("Baranch")); %></h3></td>  
   
      <td   style="border: 1px solid red"><h3><% out.print(s.getString("ifsc")); %></h3></td>  
   
      <td  style="border: 1px solid red"><h3><%if(s1.next()){ out.print(s1.getString("tdate")); }%></h3></td>  
    </tr>
     
    <% }
}
catch(Exception e){}
      	%>
      		
    </table>
    </div>
</body>
</html>



























