<%@page import="java.util.Iterator"%>
<%@page import="com.Bank.DTO.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bank.DAO.TransactionDAOImpl"%>
<%@page import="com.Bank.DAO.TransactionDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .body{
            background-color: rgb(177, 200, 207);
            width:100%;
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
  margin:20px;
  }
 

       
       

    </style>
</head>
<body class="body">
<%@include file="header.jsp" %>
    <div class="viewtran">
        <h3>Transaction Details:</h3>
        
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
        ArrayList <Transaction> list=(ArrayList <Transaction>)tdao.getTransaction();
        Iterator <Transaction> it=(list.iterator());%>
        <%while(it.hasNext()){
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
          <%} %>
          
        </tbody>
</body>
</html>