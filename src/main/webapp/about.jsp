<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 100%;
            height: auto;
            display: flex;
            align-items: flex-start;
            flex-wrap: wrap;
            
        }
    
        .about{
            width: 100%;
            height: 300px;
            background-image: url(about1.jpg);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
             display: flex;
            align-items:flex-end;
            flex-wrap: wrap;
            justify-content: center;
            
            
        }
        .text{
            font-size: 30px;
            color: #fff;
            text-shadow: 0px 15px 12px #000;
            
            
        }
        .line{
            width: 200px;
            height: 8px;
            background-color: darkorchid;
            position: relative;
            left:20%;
            box-shadow:  0px 15px 12px 0px #000;
            
        }
      .logout {
          position: absolute;
           top: 5%;
          left: 90%;
        }
        #log{
          width: 130px;
          height: 25px;
            text-align: center;
          background-color:antiquewhite;
          color:purple;
            box-shadow:  0px 5px 5px 0px #fff;
        }
        
    </style>
</head>
<body>
 <div class="container">
    <div class="about">
        <div class="text">
        <h1 style="color: white">About us</h1>
        <div class="line"></div>
        
        </div>
        </div>
    <div class="content">
        <br><br>
        <p style="font-family: cursive"><b style="font-size: 20px">Online Banking</b>,you can pay your bills,transfer money,and access a record of checking the balance and transactions all from your web browser.Online banking also allows you to transfer money between accounts much more quickly and check on your available funds before spending money. It is more convenient than using the automated phone service and can save you a trip to the bank.Online banking allows you to access your account history and transactions from anywhere. This is the quickest way to check and see if a transaction has cleared your account. You can also find out the amount of a transaction after you have lost your receipt. It also allows you to find out about unauthorized transactions more quickly, helping you resolve any issues right away.It's becoming much less common to receive paper statements, but it is still important to balance your account to your bank each month to prevent you from overdrawing your account.And you can still update your accounts each day by logging on and entering your accounts manually.we make sure that your safety or privacy will not be breached when you use our online banking website. </p>
        </div>
        <div class="logout">
        </div>
        <form method="post",action="backtohome">
        
            <button id="log">Back to Home</button>
        
        </form>
    <br><br>
    </div>
    <footer><b style="font-family: cursive">Copyright &copy; Home|About us|Services|Contact us</b></footer>
    
    
    
    
    
    
    
    
    
    </body>


</body>
</html>