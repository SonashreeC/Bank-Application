<%@page import="com.Bank.DTO.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
  body{
    background-color:rgb(229, 206, 234) ;
  }
  .navbar-brand{
    background-image: url(csg.webp);
    font-weight: bolder;
    font-size: xx-large;
    font-family: 'Times New Roman', Times, serif;
    color: darkred;
  }
  .navbar-nav{
    padding-left: 400px;
    font-family: 'Times New Roman', Times, serif;
    font-size: x-large;
    color: black;
  }
  .nav-item1{
    padding-left: 10px;
    padding-inline: 10px;
  }
  .nav-item2{
    padding-inline: 10px;
  }
  .nav-item3{
    padding-inline: 10px;
  }
  .nav-item4{
    padding-inline: 20px;
  }
  
  .logout{
    font-size: smaller;
    padding-inline: 20px;
    text-decoration: none;
    vertical-align: -7px;
    border: 2px solid red;
    padding-left: 5px;
    padding-right: 5px;
    border-radius: 10px;
    background-color: red;
    color: white;
  }
   .welcome{
  	background-color:purple;
  	color:white;
  	text-align:center;
  	height:35px;
  	margin-top:5px;
  }
  .welcome a{
  	margin-top:5px;
  	font-size:25px;
  	font-family:times new roman;
  }
  #welcome{
  margin-right:300px;
  }

</style>
<body>
<%Customer c=(Customer)session.getAttribute("customer"); %>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="dashboard.jsp">CSG Bank</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item1">
                <a class="nav-link" aria-current="page" href="dashboard.jsp">Home</a>
              </li>
              <li class="nav-item2">
                <a class="nav-link" href="aboutus">About Us</a>
              </li>
              <li class="nav-item3">
                <a class="nav-link" href="updateaccount.jsp">UpdateAccount</a>
              </li>
              <li class="nav-item4">
                <a class="nav-link" href="resetpin.jsp">Reset Pin</a>
              <li>
                <a class="logout" href="login.jsp">Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="welcome">
      <a id="welcome">Welcome, <%=c.getName() %></a>
      <a>Account Number: <%=c.getAccno()%></a>
      </div>
        </body>
        </html>