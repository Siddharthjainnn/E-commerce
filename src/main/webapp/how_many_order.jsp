<%@page import="DTO.order_details_for_admin"%>
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

<%ArrayList<order_details_for_admin> list=(ArrayList<order_details_for_admin>)request.getAttribute("LIST"); %>

<div class="container" style="margin-top: 1cm">
	<table class="table">	
	<thead class="thead-dark">
		<tr >
		
			<th scope="col">CUSTOMER_ID</td>
			<th scope="col">ORDER_ID</td>
			<th scope="col">TOTAL_AMOUNT</th>
			<th scope="col">ORDER_DATE</th>
			<th scope="col">VIEW_ORDER</th>
			
		</tr>
		 </thead>
		<%
		for (order_details_for_admin mm : list) {
		%>
		<tr>
			<td><%=mm.getOrder_id()%></td>
			<td><%=mm.getCustomer_id()%></td>
			<td><%=mm.getDynamicValue()%></td>
			<td><%=mm.getDate() %></td>
			<td><a href="particular_order_for_admin?order_id=<%=mm.getCustomer_id()%>&customer_id=<%=mm.getOrder_id()%>" class="btn btn-primary">VIEW</a></td>
		 </tr>
		<%
		}
		%>
	
	
	</table>
	</div>
</body>
</html>