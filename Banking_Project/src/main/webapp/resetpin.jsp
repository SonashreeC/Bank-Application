<%@page import="com.Bank.DTO.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ResetPin</title>
</head>
<style>
    body{
        background-color: lightgray;
    }
    .form{
        border: 3px solid black;
        width: 30%;
        margin: 50px auto;
        border-radius: 10px;
        position: relative;
        left: 30px;
        padding-bottom: 20px;
        font-size: large;
        padding:20px;
        margin-top: 50px;
        font-weight: bold;
        box-shadow: 5px 7px 5px  black;
    }

    .head{
        text-align: center;
        
    }
    .btn1{
        background-color: blue;
        color: aliceblue;
        font-size: medium;
        border-radius: 5px;
        margin-left: 80px;
        

    }
    .btn2{  
        background-color: red;
        color: white;
        font-size: medium;
        border-radius: 5px;
        margin-left: 50px;
        text-decoration: none;
        border: 2px solid black;
        padding-left: 10px;
        padding-right: 10px;
        padding-bottom: 2px;
    }
    
    ::placeholder{
        height: 30px;
    }
    .ip{
        margin-left: 80px;
    }
    .l1{
        margin-left: 80px;
    }
</style>
<body>
<%@include file="header.jsp" %>
<%Customer c1=(Customer)session.getAttribute("customer"); %>
<%String success=(String)request.getAttribute("success"); 
if(success!=null){%>
<h1 class="success"><%=success %></h1>
<%} %>

<%String failure=(String)request.getAttribute("failure");
if(failure!=null){%>
<h1 class="failure"><%=failure %></h1>
<%} %>
    <form action="resetpin" class="form" method="post">
    <h1 class="head">Reset Pin</h1>
    <label class="l1">Enter Your Email ID:</label>
    <br>
    <input type="text" name="mail" class="ip" placeholder="Email" value="<%=c1.getMail() %>">
    <br><br>
    <label class="l1">Enter Your Phone number:</label>
    <br>
    <input type="tel" name="phone" class="ip" placeholder="Phone" value="<%=c1.getPhone() %>">
    <br><br>
    <label class="l1">Enter Your New Pin:</label>
    <br>
    <input type="password" name="pin" class="ip" placeholder="New Pin" required>
    <br><br>
    <label class="l1">Confirm Your New Pin:</label>
    <br>
    <input type="password" name="confirm" class="ip" placeholder="Confirm Pin" required>
    <br><br>
    <input type="submit" class="btn1 btn-primary btn-lg" value="Reset Pin">
    <a href="dashboard.jsp" class="btn2 btn-primary btn-lg">Back</a>

</form>

    
</body>
</html>