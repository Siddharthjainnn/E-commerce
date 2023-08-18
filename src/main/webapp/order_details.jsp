<%@page import="DTO.order"%>
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
	<%
	ArrayList<order> list = (ArrayList<order>) request.getAttribute("LIST");
	%>

	<div class="container" style="margin-top: 1cm">
		<table class="table">
			<thead class="thead-dark">
				<tr>

					<th scope="col">name</th>
					<th scope="col">id</th>
					<th scope="col">category</th>
					<th scope="col">quantity</th>
					<th scope="col">customer_id</th>
					<th scope="col">order_id</th>
					<th scope="col">dynamicValue</th>

				</tr>
			</thead>

			<%
			for (order mm : list) {
			%>

			<tr class="cart-item">




				<td><%=mm.getName()%></td>
				<td><%=mm.getId()%></td>
				<td><%=mm.getCategory()%></td>
				<td><%=mm.getQuantity()%></td>
				<td><%=mm.getCustomer_id()%></td>
				<td><%=mm.getOrder_id()%></td>
				<td><%=mm.getDynamicValuel()%></td>




				<%-- <td><input type="text" value="<%=mm.getTotal_price()%>"
					name="total_price" readonly id="total_price"
					style="color: green; font-size: 25px; width: 100%; text-align: center; font-weight: 600; border-right: 2px solid rgba(0, 0, 0, 0.2); border-left: 2px solid rgba(0, 0, 0, 0.2);">
				</td> --%>
			</tr>
			<%
			}
			%>
		</table>

		<!-- <h2>Total: <span id="cart-total">0.00</span></h2> -->

		<!-- <div style="width:content;height: 2cm; text-align: right;align-items: right;margin-top: 5px;">
	<h2><span style="color: red;">Total:</span> <span id="cart-total">0.00</span></h2>
	</div>
    -->

	</div>






</body>
</html>