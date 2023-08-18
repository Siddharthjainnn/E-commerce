<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<%String al=(String)request.getAttribute("msg"); %>
<% if(al!=null)
{%>
<h1 style="color: red"><%=al %></h1>
<% }%>
<%@include file="admin_header.jsp" %>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
  
  <form  action="admin_add" method="post" enctype="multipart/form-data">
  
  <div class="form-group">
    <label for="exampleInputEmail1">NAME</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" name="name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">USER ID</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder=" Enter user id" name="user_id">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">PASSWORD</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter password" name="password">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">GENDER</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder=" Enter gender" name="gender" >
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">AGE</label>
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter age" name="age">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">YOUR PHOTO</label>
    <input type="file" class="form-control" id="exampleInputPassword1" placeholder=" Enter your photo" name="image">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>
   </div>
</div>
</body>
</html>