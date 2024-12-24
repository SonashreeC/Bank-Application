<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <style>
        body{
            background-color: cadetblue;
            background-size: cover;
        }
        h1{
            text-align: center;
            margin: 50px auto;
        }
        .signup-box{
            height: 100px auto;
            width: 50px auto;
            border: 2px solid black;
            margin: 50px auto;
            text-align: center;
            border-radius: 10px;
            box-shadow: 5px 5px 5px 5px thistle;
            margin-left: 350px;
            margin-right: 350px;
        }
        .btn{
            background-color: pink;
            font-size: large;
            border-radius: 10px;
        }

    </style>
</head>
<body>
<form action="signup" method="post">
    <h1>SIGNUP</h1>
    <%String success=(String)request.getAttribute("success");
    if(success!=null){%>
    <h3 class="success"><%=success %></h3>
    <%} %>
    
    <%String failure=(String)request.getAttribute("failure"); 
    if(failure!=null){%>
    <h3 class="failure"><%=failure %></h3>
    <%} %>
    
    <%String mismatch=(String)request.getAttribute("mismatch"); 
    if(mismatch!=null){%>
    <h3 class="failure"><%=mismatch %></h3>
    <%} %>
    <div class="signup-box">
    <label><b>Enter Your Name:</b></label><br>
    <input type="text" name="name" placeholder="Username" required><br>

    <label><b>Enter Phone Number:</b></label><br>
    <input type="tel" name="phone" placeholder="Phonenumber" required><br>

    <label><b>Enter Your Email ID:</b></label><br>
    <input type="email" name="mail" placeholder="MailID" required><br>

    <label><b>Set Pin:</b></label><br>
    <input type="password" name="pin" placeholder="Enter Pin" required><br>

    <label><b>Confirm Pin:</b></label><br>
    <input type="password" name="confirm" placeholder="Confirm Pin" required><br><br>

    <input class="btn" type="submit" value="SignUp"><br><br>
    <div class="create-account">
	<p>Already have an Account? <a href="login.jsp">Login Here</a></p>
	</div>
    
</div>
</form>
</body>
</html>