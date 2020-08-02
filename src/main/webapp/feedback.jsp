<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
    * {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}


.container {
  border-radius: 5px;
  background-color: white;
  padding: 10px;
}


.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 30px;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
        .rating > span:hover:before {
            content:"\2605";
            position: absolute;
        
            
        }
        .rating{
            unicode-bidi: bidi-override;
            direction: rtl;
        }
        .rating > span:hover:before,
        .ratinnng > span:hover - span:before {
            content: "\2605";
            position: absolute;
        }
        .rating{
            unicode-bidi: bidi-override;
            direction: rtl;
        
            
        }
        .rating > span {
            display: inline-block;
            position: relative;
            width: 1.1em;
        }
        .rating > span:hover:before,
        .rating > span:hover ~ span:before {
            content: "\2605";
            position: absolute; 
        }
         .logout {
          position: absolute;
           top: 5%;
          left: 90%;
             
        }
</style>
</head>
<body>
    
        <div class="container">
  <div style="text-align:center">
      
    <h2 style="box-shadow: 0px 20px 15px 0px purple">Contact Us</h2><br><br>
      <p style="font-family: cursive">Please send your message below.We will get back to you at the earliest!..</p>
  </div>
  <div class="row">
    <div class="column">
        <img style="width: 600px" src="111.jpg">
 </div>
    <div class="column">
      <form method="post" action="savefeedback">
        <label for="name"> Name</label>
        <input type="text" id="name" name="name" placeholder="Your name..">
        <label for="name">Email</label>
        <input type="text" id="email" name="email" placeholder="Your email..">
           <label for="country">Country</label>
        <select id="country" name="country">
            <option value="india">India</option>
          <option value="australia">Australia</option>
          <option value="canada">Canada</option>
          <option value="usa">USA</option>
        </select>
        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
          <label>Rating</label>
          <div class="rating">
              <span style="font-size: 25px">&#9734;</span> <span style="font-size: 25px">&#9734;</span> <span style="font-size: 25px">&#9734;</span> <span style="font-size: 25px">&#9734;</span> <span style="font-size: 25px">&#9734;</span></div>
        <input type="submit" value="Submit">
      </form>
    </div>
  </div>
</div>
             <div class="logout">
    <button style="background-color:darksalmon;color: white">Back to Home</button>
        </div>
</body>
</html>