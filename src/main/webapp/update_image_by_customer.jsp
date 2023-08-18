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
body {
	margin-top: 20px;
	background-color: #f2f6fc;
	color: #69707a;
}

.img-account-profile {
	height: 20rem;
}

.rounded-circle {
	border-radius: 50% !important;
}

.card {
	box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50/ 15%);
	margin-top: 2cm;
	width: 15cm;
	margin-left: 18cm;
	
}

.card .card-header {
	font-weight: 500;
}

.card-header:first-child {
	border-radius: 0.35rem 0.35rem 0 0;
}

.card-header {
	padding: 1rem 1.35rem;
	margin-bottom: 0;
	background-color: rgba(33, 40, 50, 0.03);
	border-bottom: 1px solid rgba(33, 40, 50, 0.125);
}

.form-control, .dataTable-input {
	display: block;
	width: 100%;
	padding: 0.875rem 1.125rem;
	font-size: 0.875rem;
	font-weight: 400;
	line-height: 1;
	color: #69707a;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #c5ccd6;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 0.35rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.nav-borders .nav-link.active {
	color: #0061f2;
	border-bottom-color: #0061f2;
}

.nav-borders .nav-link {
	color: #69707a;
	border-bottom-width: 0.125rem;
	border-bottom-style: solid;
	border-bottom-color: transparent;
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
	padding-left: 0;
	padding-right: 0;
	margin-left: 1rem;
	margin-right: 1rem;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<%String kl=(String)request.getAttribute("msg"); %>
	<%if(kl!=null)
		{%>
	<center><h1 style="color: green;"><%=kl %></h1></center>
	<%} %>
	<div class="row">
		
			<!-- Profile picture card-->
			<div class="card mb-4 mb-xl-0">
				<div class="card-header">Profile Picture</div>
				<div class="card-body text-center">
					<!-- Profile picture image-->
					<img class="img-account-profile rounded-circle mb-2"
						src="get_profile_image?user_id=<%=aa.getUser_id()%>" alt="">
					<!-- Profile picture help block-->
					<div class="small font-italic text-muted mb-4">JPG or PNG no
						larger than 5 MB</div>
						<hr>
						<form action="update_by_customer_image?user_id=<%=aa.getUser_id()%>" method="post" enctype="multipart/form-data">
						<center><div style="color: blue;">
					<!-- Profile picture upload button-->
					<input type="file" name="image">
					</div></center>
					<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
</body>
</html>