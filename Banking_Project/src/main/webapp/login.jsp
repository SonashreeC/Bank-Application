<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<style>
    body{
        background-color: rgb(225, 164, 223);
    }
    .form{
        border: 3px solid black;
        width: 30%;
        margin: 50px auto;
        border-radius: 10px;
        position: relative;
        left: 20px;
        padding-bottom: 20px;
        font-size: large;
        padding:20px;
        margin-top: 50px;
        font-weight: bold;
        box-shadow: 10px 10px 5px rgb(78, 56, 59);
    }

    .head{
        text-align: center;
        
    }
    .btn1{
        background-color: blue;
        color: aliceblue;
        font-size: large;
        border-radius: 5px;
        margin-left: 150px;
        
    }  
    ::placeholder{
        height: 30px;
        font-size: medium;
        width: 100%;
    }
    .ip{
        margin-left: 80px;
    }
    .l1{
        margin-left: 80px;
    }
    
        
        
</style>
<body>
    <form action="login" class="form" method="post">
   
    <h1  class="head">Login</h1><br>
    <%String success=(String)request.getAttribute("success"); 
    if(success!=null){%>
    <h3 class="success"><%=success %></h3>
    <%} %>
    
    <%String failure=(String)request.getAttribute("failure");
    if(failure!=null){%>
    <h3 class="failure"><%=failure %></h3>
    <%} %>
    <label class="l1">Enter Your Account Number:</label>
    <br>
    <input type="text" name="accno" class="ip" placeholder="Account Number" required>
    <br><br>
    <label class="l1">Enter Your Pin:</label>
    <br>
    <input type="password" name="pin" class="ip" placeholder="Pin" required>
    <br><br>
    <input type="submit" value="Login" class="btn1" onclick="login()">
    <div class="create account">
        <p>Don't Have an Account? <a href="signup.jsp">Create a new Account</a>
        </div>
</form>
    
</body>
</html>