<%@page import="java.util.Iterator"%>
<%@page import="com.Bank.DTO.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bank.DAO.TransactionDAOImpl"%>
<%@page import="com.Bank.DAO.TransactionDAO"%>
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
#imgc{
width:70px;
	height:70px;
	margin-left:-410px;
}
  body{
    background-color:rgb(229, 206, 234) ;
  }
  .navbar-brand{
  
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
    padding-inline: 15px;
    padding-top: 10px;
  }
  .nav-item2{
    padding-inline: 10px;
    padding-top: 10px;
  }
  .nav-item3{
    padding-inline: 10px;
    padding-top: 10px;
  }
  .nav-item4{
    padding-inline: 20px;
    padding-top: 10px;
  }
  
  .logout{
    font-size: smaller;
    padding-inline: 20px;
    text-decoration: none;
    vertical-align: -15px;
    border: 2px solid red;
    padding-left: 5px;
    padding-right: 5px;
    border-radius: 10px;
    background-color: red;
    color: white;
  }
  .card {
    display: inline-block;
    margin: 20px;
    width:50px;
    position: relative;
   margin-left: 80px;
   
    
  }
  .card-body{
    padding: 20px;
    padding-inline: 20px;
    border: 2px solid brown;
    border-radius: 10px;
    text-align: center;
    margin: 20px;
    border-radius: 20px;
    position: relative;
  }
  .viewtran{
    font-size: xx-largex-large;
    font-family: 'Times New Roman', Times, serif;
    font-weight: 900;
    color: rgb(37, 3, 79);
    margin-left: 30px;
    margin-bottom: 20px;
  }
  .viewtran h3{
  font-weight: 600;
  }
  .btn-lg{
    margin-left: 91%;
    margin-bottom: 20px;
    background-color: blue;
    font-family: 'Times New Roman', Times, serif;
    color: white;
  }
  .btn-lg a{
  color:white;
  text-decoration: none;
  }
  
  .table{
    margin-top: -30px;
    width: 95%;
    margin-left: 30px;
    
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
          <a class="navbar-brand" href="dashbord.jsp">CSG Bank</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
            <li id="img"><img  id="imgc" src="csg.jpg">
            </li>
              <li class="nav-item1">
                <a class="nav-link" aria-current="page" href="dashboard.jsp">Home</a>
              </li>
              <li class="nav-item2">
                <a class="nav-link" href="aboutus.jsp">About Us</a>
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
      
      <div class="card mb-3" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">Balance</h5>
          <p class="card-text"> To Check Your Balance Click Below</p>
          <a href="balance.jsp" class="btn btn-primary">View Balance</a>
        </div>
      </div>
      
      <div class="card text-center mb-3" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">Deposit</h5>
          <p class="card-text">To Deposit Your Amount Click Below</p>
          <a href="deposit.jsp" class="btn btn-primary">Deposit Amount</a>
        </div>
      </div>
      
      <div class="card mb-3" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">Transfer Fund</h5>
          <p class="card-text"> To Transfer Your Amount Click Below</p>
          <a href="transfer.jsp" class="btn btn-primary">Transfer Amount</a>
        </div>
      </div>
      <div class="viewtran">
        <h3>Transaction Details:</h3>
        
        <button type="button" class="btn btn-primary btn-lg"><a href="transaction.jsp">View All</button></a>
      </div>
      
      <table class="table">
        <thead>
          <th>SLNO.<%int count=1; %></th>
          <th>TRANS_ID</th>
          <th>USER_ACC</th>
          <th>REC_ACC</th>
          <th>TRANS_DATE</th>
          <th>AMOUNT</th>
          <th>BALANCE</th>
          <th>TRANS_TYPE</th> 
        </thead>
        <tbody>
        <%TransactionDAO tdao=new TransactionDAOImpl();
        ArrayList <Transaction> list=(ArrayList <Transaction>)tdao.getTransaction(c.getAccno());
        Iterator <Transaction> it=(list.iterator());
        int i=1;%>
        <%while(it.hasNext()&&i<=5){
        	Transaction t=it.next();%>
        	  
          <tr class="table-active">
            <td><%=count++%></td>
            <td><%=t.getTrain_id()%></td>
            <td><%=t.getUser() %></td>
            <td><%=t.getRec_acc() %></td>
            <td><%=t.getDate() %></td>
            <td><%=t.getAmount() %></td>
            <td><%=t.getBalance() %></td>
            <td><%=t.getTransaction() %></td>
          </tr>
          <%i++; %>
          <%} %>
          
        </tbody>
      </table>
</body>
</html>

