<%@page import="DTO.Product"%>
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
	<style>
	.switch {
	position: relative;
	display: block;
	vertical-align: top;
	width: 100px;
	height: 30px;
	padding: 3px;
	margin: 0 10px 10px 0;
	background: linear-gradient(to bottom, #eeeeee, #FFFFFF 25px);
	background-image: -webkit-linear-gradient(top, #eeeeee, #FFFFFF 25px);
	border-radius: 18px;
	box-shadow: inset 0 -1px white, inset 0 1px 1px rgba(0, 0, 0, 0.05);
	cursor: pointer;
	box-sizing:content-box;
}
.switch-input {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	box-sizing:content-box;
}
.switch-label {
	position: relative;
	display: block;
	height: inherit;
	font-size: 10px;
	text-transform: uppercase;
	background: #eceeef;
	border-radius: inherit;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.12), inset 0 0 2px rgba(0, 0, 0, 0.15);
	box-sizing:content-box;
}
.switch-label:before, .switch-label:after {
	position: absolute;
	top: 50%;
	margin-top: -.5em;
	line-height: 1;
	-webkit-transition: inherit;
	-moz-transition: inherit;
	-o-transition: inherit;
	transition: inherit;
	box-sizing:content-box;
}
.switch-label:before {
	content: attr(data-off);
	right: 11px;
	color: #aaaaaa;
	text-shadow: 0 1px rgba(255, 255, 255, 0.5);
}
.switch-label:after {
	content: attr(data-on);
	left: 11px;
	color: #FFFFFF;
	text-shadow: 0 1px rgba(0, 0, 0, 0.2);
	opacity: 0;
}
.switch-input:checked ~ .switch-label {
	background: #E1B42B;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.15), inset 0 0 3px rgba(0, 0, 0, 0.2);
}
.switch-input:checked ~ .switch-label:before {
	opacity: 0;
}
.switch-input:checked ~ .switch-label:after {
	opacity: 1;
}
.switch-handle {
	position: absolute;
	top: 4px;
	left: 4px;
	width: 28px;
	height: 28px;
	background: linear-gradient(to bottom, #FFFFFF 40%, #f0f0f0);
	background-image: -webkit-linear-gradient(top, #FFFFFF 40%, #f0f0f0);
	border-radius: 100%;
	box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
}
.switch-handle:before {
	content: "";
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -6px 0 0 -6px;
	width: 12px;
	height: 12px;
	background: linear-gradient(to bottom, #eeeeee, #FFFFFF);
	background-image: -webkit-linear-gradient(top, #eeeeee, #FFFFFF);
	border-radius: 6px;
	box-shadow: inset 0 1px rgba(0, 0, 0, 0.02);
}
.switch-input:checked ~ .switch-handle {
	left: 74px;
	box-shadow: -1px 1px 5px rgba(0, 0, 0, 0.2);
}
 
/* Transition
========================== */
.switch-label, .switch-handle {
	transition: All 0.3s ease;
	-webkit-transition: All 0.3s ease;
	-moz-transition: All 0.3s ease;
	-o-transition: All 0.3s ease;
}
	</style>
</head>
<body>
<%@include file="admin_header.jsp" %>
 <%String dd=(String)request.getAttribute("msg"); %>
<%if(dd!=null)
	{
	%>
<center><h1 style="color: green;"><%=dd %></h1></center>
<%} %> 
<%ArrayList<Product> list=(ArrayList<Product>)request.getAttribute("list"); %>
<div  style="margin-top: 1cm;">
	<table class="table">	
	<thead class="thead-dark">
		<tr >
			<th scope="col">NAME</td>
			<th scope="col">PRODUCT_ID</th>
			<th scope="col">CATEGORY</th>
			<th scope="col">QUANTITY</th>
			<th scope="col">PRICE</th>
			<th scope="col">IMAGE</th>
			<th scope="col">UPDATE</th>
			<th scope="col">OFFER</th>
			<th scope="col">COMBO</th>
			<th scope="col">DEAL OF THE DAY</th>
			 <th scope="col">DEAL OF THE WEEK</th>
			 <th scope="col">REMOVE OFFER</th>
			<th scope="col">REMOVE COMBO</th>
			<th scope="col">REMOVE DEAL OF THE DAY</th>
			 <th scope="col">REMOVE DEAL OF THE WEEK</th>
			<!-- <th scope="col">UPDATE</th> --> 
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
			<td><img alt="image not found" src="./get_image_all_product?pro_id=<%=mm.getPro_id()%>" style="width: 100px;height: 100px;"></td>
		   <%--  <td><img alt="image not found" src="./get_image_1?user_id=<%=mm.getUser_id()%>"  height="200px" ,width="200px"></td>
		    <td><a href="./get_delete_customer?user_id=<%=mm.getUser_id()%>" class="btn btn-danger" onclick=" return alert('are you sure you whant to delete')">DELETE</a></td>
		    <td><a href="./get_update_customer?user_id=<%=mm.getUser_id()%>" class="btn btn-primary">UPDATE</a></td> --%>
	 <%-- <td><a href="./get_delete_biscuit?user_id=<%=mm.getPro_id()%>" class="btn btn-danger" onclick=" return alert('are you sure you whant to delete')">DELETE</a></td> --%>
		    <td><a href="./get_update_all_product?user_id=<%=mm.getPro_id()%>" class="btn btn-primary">UPDATE</a></td> 
		    <td><a href="./get_update_all_product_1?user_id=<%=mm.getPro_id()%>" class="btn btn-primary">OFFER</a></td> 
		    <td><a href="./get_update_all_product_2?user_id=<%=mm.getPro_id()%>" class="btn btn-primary">COMBO</a></td> 
		    <td><a href="./get_update_all_product_3?user_id=<%=mm.getPro_id()%>" class="btn btn-primary">DEAL OF THE WEEK</a></td> 
		    <td><a href="./get_update_all_product_4?user_id=<%=mm.getPro_id()%>" class="btn btn-primary">DEAL OF THE DAY</a></td> 
	
	 <%-- <td><button id="toggleButton" onclick="redirectToServlet('<%=mm.getPro_id()%>')">Turn On</button>
	
    </td> --%>
	<td><a href="./get_delete_all_product_1?user_id=<%=mm.getPro_id()%>" class="btn btn-danger">REMOVE OFFER</a></td> 
		    <td><a href="./get_delete_all_product_2?user_id=<%=mm.getPro_id()%>" class="btn btn-danger">REMOVE COMBO</a></td> 
		    <td><a href="./get_delete_all_product_3?user_id=<%=mm.getPro_id()%>" class="btn btn-danger">REMOVE DEAL OF THE DAY</a></td> 
		    <td><a href="./get_delete_all_product_4?user_id=<%=mm.getPro_id()%>" class="btn btn-danger">REMOVE DEAL OF THE WEEK</a></td> 
	
	<%-- <td>
	<label  class="switch">
	<input id="toggleButton" onclick="redirectToServlet('<%=mm.getPro_id()%>')" class="switch-input" type="checkbox" />
	<span  class="switch-label" data-on="On" data-off="Off"></span> 
	<span  class="switch-handle"></span> 
</label>
	</td> --%>
	
	</tr>
	<script>
        let isOn = true;
        
        function redirectToServlet(pro_id) {
            if (isOn) {
                // Redirect to the servlet URL when the button is "on"
                window.location.href = "./get_update_all_product_1?user_id="+pro_id; // Replace with the actual servlet URL
                
            } else {
                // Change the button text to "Turn Off" and set the state to "on"
                document.getElementById("toggleButton").textContent = "Turn Off";
                isOn = true;
            }
        }
    </script>
		<%
		}
		%>
	
	
	</table>
	</div>
	
</body>
</html>