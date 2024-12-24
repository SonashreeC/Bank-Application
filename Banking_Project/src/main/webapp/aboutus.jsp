<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
.card1{
margin-top:30px;
text-align: center;
border-radius: 10px;
margin-left: 10px;
margin-left: 300px;
}
.card2{
margin-top:30px;
text-align: center;
border-radius: 10px;
margin-left: 700px;
margin-top: -274px;
}

</style>
<body>
<%@include file="header.jsp" %>

<form action="aboutus" method="post">

<div class="card1 text-bg-secondary mb-3" style="max-width: 18rem;">
  <h3><div class="card-header">Vision</div></h3>
  <div class="card-body">
    <h5 class="card-title">"Innovation"</h5>
    <p class="card-text">To be a leading financial institution recognized for its customer-centric approach, technological innovation, and commitment to sustainable growth. We envision a future where we continually transform the banking experience, making it seamless, accessible, and empowering for all.</p>
  </div>
</div>
<div class="card2 text-bg-success mb-3" style="max-width: 18rem;">
  <h3><div class="card-header">Mission</div></h3>
  <div class="card-body">
    <h5 class="card-title">"Empowerment"</h5>
    <p class="card-text">To provide innovative, reliable, and accessible financial solutions that empower individuals and businesses to achieve their financial goals. We strive to foster trust, deliver exceptional customer service, and promote financial inclusion by offering secure, efficient, and convenient banking services.
    </p>
      </div>
</div>

</form>

</body>

</html>