<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function reg(){
    var ema=document.getElementById("emaill");
    var pass=document.getElementById("paas");
    var cpass=document.getElementById("cpass");
    var phno=document.getElementById("phno");
    var lname=document.getElementById("lname");
 var name=document.getElementById("name");
    if(name.value.trim()==''){
        name.style.border="solid 3px red";
        return false;
    }
    else if(lname.value.trim()==''){
       lname.style.border="solid 3px red";
       return false;
    }
    else if(ema.value.trim()==""){
        ema.style.border="solid 3px red";
        return false;
    }
    else if(phno.value.trim()=""){
       phno.style.border="solid 3px red";
        return false;
    }
    else if(pass.value.trim()==""){
        pass.style.border="solid 3px red";
        return false;
    }
    else if(cpass.value.trim()==""){
        cpass.style.border="solid 3px red";
    }
    else if(pass.value.trim().length<6){
    alert("minumun password length is 7")
pass.style.border="solid 3px red";
return false;
    }
   var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(ema.value)) {
    email.focus;
   alert("You have entered an invalid email address!")
    ema.style.border="solid 3px red";
    return false
  }

    else if(pass.value!=cpass.value){
        alert("conform password was not match please try again");
        cpass.style.border="solid 3px red";
        return false;
    }
    else return true;

}

</script>
<link rel="stylesheet" href="register.css">
</head>
<body>

<div class="register">
    <div class="visible" style="visibility:hidden">
       <h3 style="color: red" >This Username is Alrady taken please give another name</h3>
     </div>
       <div class="email" style="visibility:hidden">
      <h3 style="color: red" >This email id is Alrady taken </h3>
      </div>
<form onsubmit="return reg();" method="post"action="register">
    <h2>Register</h2>
    <div class="input">
       
         <div class="name">
        <input name="name" id="name"placeholder="first name"><br><br>
         </div>
        <div class="lastname">
        <input name="lname" id="lname"placeholder="last name"><br><br>
         </div>
        <div class="e">
    <input name="email" id="emaill"type="email"placeholder="enter your email"><br><br>
        </div>
        <div class="phno">
        <input name="phno" id="phno"placeholder="phone number "><br><br>
         </div>
    <input name="pass" id="paas"type="password"placeholder="enter your password"><br><br>
     <input name="cpass" id="cpass"type="password"placeholder="conform your password"><br><br>
     </div>
     <div class="button">
    <button type="submit">Register</button>       <a href="http://localhost:8080/minprojectfirst/">Alerdy registered ?</a>
    </div>


</form>
</div>
</body>
</html>