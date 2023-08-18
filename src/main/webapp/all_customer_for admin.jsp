
<%@page import="java.io.PrintWriter"%>
<%@page import="DTO.new_customer_add"%>
<%@page import="DTO.customer"%>
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
	 <%@include file="admin_header.jsp" %> 
	<%
	String dd = (String) request.getAttribute("msg");
	%>
	<%
	if (dd != null) {
	%>
	<center>
		<h1 style="color: green;"><%=dd%></h1>
	</center>
	<%
	}
	%>
	<%-- <% ArrayList<customer> list = (ArrayList<customer>)request.getAttribute("xx");
	%> --%>
	<%
	ArrayList<new_customer_add> list2 = (ArrayList<new_customer_add>)request.getAttribute("xx");
	%>
	<%
	PrintWriter pw = response.getWriter();
	%>

	<%
	pw.write("list got");
	%>
	
	
	
	
	
	
		
	
	
  <!-- <div class="container" style="margin-top: 1cm"> --> 
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">NAME</th>
					<th scope="col">USER_ID</th>
					<th scope="col">EMAIL_ID</th>
					<th scope="col">PHONE</th>
					<th scope="col">PASSWORD</th>
					<th scope="col">RE-PASSWORD</th>
					<th scope="col">ADRESS</th>
					<th scope="col">CITY</th>
					<th scope="col">ZIP</th>
					<th scope="col">GENDER</th>
					<th scope="col">OCCUPATION</th>
					<th scope="col">DOB</th>
					<th scope="col">NOTES</th>
					<th scope="col">UPDATES</th>
					<th scope="col">OFFER</th>
					<th scope="col">DAILY-UPDATE</th>
					<th scope="col">IMAGE</th>
					<th scope="col">DELETE</th>
					<th scope="col">UPDATE</th>
				</tr>
			</thead>
			<%for(new_customer_add mk:list2)
				{%>
				
			<tr>
				<td><%=mk.getName() %></td>
				<td><%=mk.getUser_id() %></td>
				<td><%=mk.getEmail_id() %></td>
				<td> <%=mk.getPhone() %></td>
				<td><%=mk.getPassword() %></td>
				<td><%=mk.getRepassword() %></td>
				<td><%=mk.getAdress() %></td>
				<td><%=mk.getCity() %></td>
				<td><%=mk.getZip() %></td>
				<td><%=mk.getGender() %></td>
				<td><%=mk.getOccupation() %></td>
				<td><%=mk.getDob() %></td>
				<td><%=mk.getNotes() %></td>
				<td><%=mk.getUpdates() %></td>
				<td><%=mk.getOffer() %></td>
				<td><%=mk.getDailyupdate() %></td>
				
				<td><img alt="image not found"
					src="./get_image_1?user_id=<%=mk.getUser_id()%>" height="200px"
					,width="200px"></td>
				<td><a
					href="./get_delete_customer?user_id=<%=mk.getUser_id()%>"
					class="btn btn-danger"
					onclick=" return alert('are you sure you whant to delete')">DELETE</a></td>
				<td><a
					href="./get_update_customer?user_id=<%=mk.getUser_id()%>"
					class="btn btn-primary">UPDATE</a></td>
			</tr>
			<%
			}
			%>


	</table>
	</div>
	
</body>
</html>