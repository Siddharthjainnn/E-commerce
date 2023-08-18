<%@page import="java.util.ArrayList"%>
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
<%@include file="admin_header.jsp"%>
<%ArrayList<Admin> list=(ArrayList<Admin>)request.getAttribute("LIST"); %>


<div class="jumbotron jumbotron-fluid">
  <div class="container">
  <table class="table">
  <thead class="thead-dark">
   <td>ID</td>
    <td>NAME</td>
     <td>GENDER</td>
     <td>PASSWORD</td>
     
  </thead>
  <%for(Admin ss:list)
	  {%>
  <tr>
  <td><%=ss.getUser_id() %></td>
  <td><%=ss.getName() %></td>
  <td><%=ss.getGender() %></td>
  <td><%=ss.getPassword() %></td>
 
   
  </tr>
  <%} %>
  
  </table>
  
  </div>
</div>
</body>
</html>