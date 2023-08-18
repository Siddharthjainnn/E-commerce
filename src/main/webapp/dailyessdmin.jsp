<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Product"%>
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
<%@include file="admin_header.jsp" %>
 <%String dd=(String)request.getAttribute("msg"); %>
<%if(dd!=null)
	{
	%>
<center><h1 style="color: green;"><%=dd %></h1></center>
<%} %> 

	
	<%ArrayList<Product> list=(ArrayList<Product>)request.getAttribute("LIST"); %>
	<div class="container" style="margin-top: 1cm">
	<table class="table">	
	<thead class="thead-dark">
		<tr >
			<th scope="col">NAME</td>
			<th scope="col">PRODUCT_ID</th>
			<th scope="col">CATEGORY</th>
			<th scope="col">QUANTITY</th>
			<th scope="col">PRICE</th>
			<th scope="col">IMAGE</th>
			<th scope="col">DELETE</th>
			<th scope="col">UPDATE</th>
			<!-- <th scope="col">DELETE</th>
			<th scope="col">UPDATE</th> -->
		</tr>
		 </thead>
		<%
		for (Product mm : list) {
		%>
		<tr>
			<td><%=mm.getName()%></td>
			<td><%=mm.getPro_id()%></td>
			<td><%=mm.getCategory()%></td>
			<td><%=mm.getQuantity()%></td>
			<td><%=mm.getPrice()%></td>
			<td><img alt="image not found" src="./get_image_admin_daily?pro_id=<%=mm.getPro_id()%>"  height="200px" ,width="200px"></td>
		   <%--  <td><img alt="image not found" src="./get_image_1?user_id=<%=mm.getUser_id()%>"  height="200px" ,width="200px"></td>
		    <td><a href="./get_delete_customer?user_id=<%=mm.getUser_id()%>" class="btn btn-danger" onclick=" return alert('are you sure you whant to delete')">DELETE</a></td>
		    <td><a href="./get_update_customer?user_id=<%=mm.getUser_id()%>" class="btn btn-primary">UPDATE</a></td> --%>
		    
		    <td><a href="./get_delete_daily?user_id=<%=mm.getPro_id()%>" class="btn btn-danger" onclick=" return alert('are you sure you whant to delete')">DELETE</a></td>
		    <td><a href="./get_update_daily?user_id=<%=mm.getPro_id()%>" class="btn btn-primary">UPDATE</a></td> 
	</tr>
		<%
		}
		%>
	
	
	</table>
	</div>
</body>
</html>