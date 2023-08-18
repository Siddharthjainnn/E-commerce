<%@page import="DTO.deliver_order"%>
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
<%@include file="header.jsp" %>

<%ArrayList<deliver_order> list=(ArrayList<deliver_order>)request.getAttribute("LIST"); %>

<div class="container" style="border: 5px solid; align-content: center; text-align: center; margin-top: 1cm;"  >
<table class="table table-striped table-light">


<thead class="thead-dark">
<tr>
<th scope="col">ORDER_ID</th>
<th scope="col">CUSTOMER_ID</th>
<th scope="col">STATUS</th>
<th scope="col">DATE OF DELIVERD</th>
<th scope="col">VIEW ORDER</th>

</tr>

</thead>
<br>

              
              <%for(deliver_order kl:list){ %>
                
                 <tr>
                 <td style="color: red;font-weight: 600"><%=kl.getOrder_id() %></td>
                 <td><%=kl.getCustomer_id() %></td>
                 <td><%=kl.getStatus() %></td>
                 <td><%=kl.getDate() %></td>
                 <td><a href="view_order_for_customer_on_order_id_and_customer_id?customer_id=<%=kl.getCustomer_id() %>&order_id=<%=kl.getOrder_id() %>" class="btn btn-primary">view order</a></td>

                 </tr>
                  
                 
                <%} %>
                 </table>
              </div>
             
                


</body>
</html>