<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance</title>
</head>
<style>
    body{
        background-color: rgb(161, 196, 201);
    }
    .form{
        border: 3px solid black;
        width: 40%;
        margin: 50px auto;
        margin-top: 10%;
        padding-bottom: 30px; 
        border-radius: 20px;
        box-shadow: 5px 3px 3px 3px rgb(120, 96, 179);
        
    }
    h1{
        text-align: center;
    }
    .ip{
        margin-left: 160px;
        font-size: medium;
        font-weight: 400;
    }
    .l1{
        margin-left: 160px;
        font-size: medium;
        font-weight: bold;
    }
    .btn1{
        margin-left: 160px;
        background-color: blue;
        color: aliceblue;
        font-size: medium;
        border-radius: 5px;
    }
    .btn2 {
        margin-left: 30px;
        background-color: red;
        color: white;
        font-size: large;
        border: 2px solid black;
        border-radius: 5px;
        text-decoration: none;
        padding-left: 10px;
        padding-right: 10px;
        padding-bottom: 2px;
        
        
    }
    
</style>
<body>
<%String success=(String)request.getAttribute("success");
if(success!=null){%>
<h1 class="success"> <%=success%></h1>
<%} %>

<%String failure=(String)request.getAttribute("failure");
if(failure!=null){%>
<h3 class="failure"><%=failure %></h3>
<%} %>
<%@include file="header.jsp" %>
    <form action="balance" class="form" method="post">
        <h1 class="h1">Balance</h1>
        <label class="l1">Enter Your Pin:</label>
        <br>
        <input type="password" name="pin" class="ip" placeholder="Enter Pin" required>
        <br><br>
        <input type="submit" class="btn1 btn-primary btn-lg" value="View Balance">
        <a href="dashboard.jsp" class="btn2 btn-primary btn-lg">Back</a>
    
    </form>

    
</body>
</html>