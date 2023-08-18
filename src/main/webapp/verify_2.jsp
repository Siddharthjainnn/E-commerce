<%@page import="DTO.new_customer_add"%>
<%@page import="DTO.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="verify.css" />
   <script src="script.js" defer></script>
</head>
<body>
<!-- <h1>ENETER A 4 DIGIT CODE WE HAVE SENT TO YOUR MAIL</h1> -->

<!-- <div class="input-group mb-3" style="padding: 5cm;">
  <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
  <div class="input-group-append">
    <span class="input-group-text" id="basic-addon2"><a href="otp_generator" class="btn btn-danger">GENERTAE OTP</a></span>
  </div>
</div > -->
<%-- <div class="container">
<%if(aa!=0)
	{%>
	
<center><h1 style="color: red;"><%=aa %></h1></center>
<%} %>
</div>
 --%>
 <%String msg=(String)request.getAttribute("msg"); %>
 
 <%if(msg!=null)
	 {%>
	<center> <h3><%=msg %><h3></center>
	 <%} %>
<%String aaa=(String)request.getAttribute("ll"); %>
<%new_customer_add kl=(new_customer_add)request.getAttribute("list"); %>
<%-- <h1 style="color: red;"><center><%=kl.getUser_id() %></center></h1> --%>
  
    <div class="container">
      <header>
        <i class="bx bxs-check-shield"></i>
      </header>
      <h4>Enter OTP Code Sent to Your Mail </h4>
      <form action="ceck_otp_2?otp_generated=<%=aaa %>" method="post">
      <input type="text" value="<%=kl.getUser_id() %>" style="text-align: center;" name="user_id"readonly>
        <div class="input-field">
          <input type="number" name="1st" />
          <input type="number" name="2st" />
          <input type="number" name="3st" />
          <input type="number" name="4st" />
          
        </div>
        <button>Verify OTP</button>
      </form>
    </div>





 












<!-- <div class="input-group mb-3" style="padding: 5cm;">
  <input type="text" class="form-control" placeholder="otp" aria-label="Recipient's username" aria-describedby="basic-addon2">
  <div class="input-group-append">
    <span class="input-group-text" id="basic-addon2"><A href="" class="btn btn-primary">SUMBIT</A></span>
  </div>
</div>
 -->
</body>
</html>