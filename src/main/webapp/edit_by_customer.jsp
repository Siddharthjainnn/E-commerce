<%@page import="DTO.new_customer_add"%>
<%@page import="DTO.customer"%>
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
	height: 15rem;
}

.rounded-circle {
	border-radius: 50% !important;
}

.card {
	box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50/ 15%);
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

	<h1 style="color: green;">
		<center>WELCOME TO CUSTOMER UPDATION PAGE</center>
	</h1>
	<%
	new_customer_add list = (new_customer_add) request.getAttribute("list");
	%>
	<%=list.getGender()%>
	<%=list.getName()%>

<%=list.getUser_id() %>
<%String aaa=(String)request.getAttribute("msg"); %>
<h1 style="color: red;"><center><%=aaa %></center></h1>
	<div class="container-xl px-4 mt-4">
		<!-- Account page navigation-->
		<nav class="nav nav-borders">
			<a class="nav-link active ms-0"
				href="https://www.bootdey.com/snippets/view/bs5-edit-profile-account-details"
				target="__blank">Profile</a> <a class="nav-link"
				href="https://www.bootdey.com/snippets/view/bs5-profile-billing-page"
				target="__blank">Billing</a> <a class="nav-link"
				href="https://www.bootdey.com/snippets/view/bs5-profile-security-page"
				target="__blank">Security</a> <a class="nav-link"
				href="https://www.bootdey.com/snippets/view/bs5-edit-notifications-page"
				target="__blank">Notifications</a>
		</nav>
		<hr class="mt-0 mb-4">
		<div class="row">
			<div class="col-xl-4">
				<!-- Profile picture card-->
				<div class="card mb-4 mb-xl-0">
					<div class="card-header">Profile Picture</div>
					<div class="card-body text-center">
						<!-- Profile picture image-->
						<img class="img-account-profile rounded-circle mb-2"
							src="get_profile_image?user_id=<%=list.getUser_id()%>" alt="">
						<!-- Profile picture help block-->
						<div class="small font-italic text-muted mb-4">JPG or PNG no
							larger than 5 MB</div>
						<!-- Profile picture upload button-->
						<a href="update_image_by_customer.jsp" class="btn btn-primary" type="button">Update new
							image</a>
					</div>
				</div>
			</div>
			<div class="col-xl-8">
				<!-- Account details card-->
				<div class="card mb-4">
					<div class="card-header">Account Details</div>
					<div class="card-body">
						
						
	<form  action="edit_by_customer" method="post" enctype="multipart/form-data">
  
  <div class="container-fluid">

			<div class="container">
				<!-- Title -->
				<div
					class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
					<h2 class="h5 mb-3 mb-lg-0">
						<a href="../../pages/admin/customers.html" class="text-muted"><i
							class="bi bi-arrow-left-square me-2"></i></a> Update customer Page
					</h2>
					<div class="hstack gap-3">
						<button class="btn btn-light btn-sm btn-icon-text">
							<i class="bi bi-x"></i> <span class="text">Cancel</span>
						</button>
						<button class="btn btn-primary btn-sm btn-icon-text">
							<i class="bi bi-save"></i> <span class="text">Save</span>
						</button>
					</div>
				</div>


				<!-- Main content -->
				<div class="row">
					<!-- Left side -->
					<div class="col-lg-8">
						<!-- Basic information -->
						<div class="card mb-4">
							<div class="card-body">
								<h3 class="h6 mb-4">Basic information</h3>
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Your Name</label> 
											<input
												type="text" class="form-control" name="name" value="<%=list.getName()%>">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">User Id</label> <input type="text"
												class="form-control" name="user_id" value="<%=list.getUser_id()%>">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Email</label> <input type="email"
												class="form-control" name="email_id" value="<%=list.getEmail_id()%>">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Phone number</label> <input
												type="text" class="form-control" name="phone" value="<%=list.getPhone()%>">
										</div>
									</div>
									
								</div>
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Set Password</label> <input type="text"
												class="form-control" name="password" value="<%=list.getPassword()%>">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Re-Enter Password number</label> <input
												type="text" class="form-control" name="repassword">
										</div>
									</div>
									
								</div>
							</div>
						</div>
						<!-- Address -->
						<div class="card mb-4">
							<div class="card-body">
								<h3 class="h6 mb-4">Address</h3>
								<div class="mb-3">
									<label class="form-label">Address Line 1</label> <input
										type="text" class="form-control" name="adress" value="<%=list.getAdress()%>">
								</div>
								
									
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">City</label> <select
												class="select2 form-control select2-hidden-accessible"
												data-select2-placeholder="Select city"
												data-select2-id="select2-data-7-809c" tabindex="-1"
												aria-hidden="true" name="city">
												<option data-select2-id="select2-data-9-k35n"></option>
												<option value="Indore">Indore</option>
												
											</select><span
												class="select2 select2-container select2-container--bootstrap-5"
												dir="ltr" data-select2-id="select2-data-8-3peu"
												style="width: 391px;"><span class="selection"><span
													class="select2-selection select2-selection--single"
													role="combobox" aria-haspopup="true" aria-expanded="false"
													tabindex="0" aria-disabled="false"
													aria-labelledby="select2-jdfi-container"
													aria-controls="select2-jdfi-container"><span
														class="select2-selection__rendered"
														id="select2-jdfi-container" role="textbox"
														aria-readonly="true" title="Select city"><span
															class="select2-selection__placeholder">Select city</span></span><span
														class="select2-selection__arrow" role="presentation"><b
															role="presentation"></b></span></span></span><span class="dropdown-wrapper"
												aria-hidden="true"></span></span>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">ZIP code</label> <input type="text"
												class="form-control" name="zip" value="<%=list.getZip()%>">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Gender</label> <select
												class="select2 form-control select2-hidden-accessible"
												data-select2-placeholder="Select city"
												data-select2-id="select2-data-7-809c" tabindex="-1"
												aria-hidden="true" name="gender">
												<option data-select2-id="select2-data-9-k35n"></option>
												<option value="male">Male</option>
												<option value="female">Female</option>
												<option value="other">Other</option>
												
											</select><span
												class="select2 select2-container select2-container--bootstrap-5"
												dir="ltr" data-select2-id="select2-data-8-3peu"
												style="width: 391px;"><span class="selection"><span
													class="select2-selection select2-selection--single"
													role="combobox" aria-haspopup="true" aria-expanded="false"
													tabindex="0" aria-disabled="false"
													aria-labelledby="select2-jdfi-container"
													aria-controls="select2-jdfi-container"><span
														class="select2-selection__rendered"
														id="select2-jdfi-container" role="textbox"
														aria-readonly="true" title="Select city"><span
															class="select2-selection__placeholder">Select Gender</span></span><span
														class="select2-selection__arrow" role="presentation"><b
															role="presentation"></b></span></span></span><span class="dropdown-wrapper"
												aria-hidden="true"></span></span>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label"></label>Occupation <input type="text"
												class="form-control" name="occupation" value="<%=list.getOccupation()%>">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					<!-- Right side -->
					<div class="col-lg-4">
						<!-- Status -->
						<div class="card mb-4">
							<div class="card-body">
								<h3 class="h6">Date of Birth</h3>
								<input type="date" name="dob" value="<%=list.getDob()%>">
							</div>
						</div>
						<!-- Avatar -->
						<div class="card mb-4">
							<div class="card-body">
								<h3 class="h6">Profile Image</h3>
								<input class="form-control" type="file" name="image">
							</div>
						</div>
						<!-- Notes -->
						<div class="card mb-4">
							<div class="card-body">
								<h3 class="h6">Notes</h3>
								<textarea class="form-control" rows="3" name="notes" value="<%=list.getNotes()%>"></textarea>
							</div>
						</div>
						<!-- Notification settings -->
						<div class="card mb-4">
							<div class="card-body">
								<h3 class="h6">Notification Settings</h3>
								<ul class="list-group list-group-flush mx-n2">
									<li
										class="list-group-item px-0 d-flex justify-content-between align-items-start">
										<div class="ms-2 me-auto">
											<h6 class="mb-0">New updates</h6>
											<small>News about product and feature updates.</small>
										</div>
										<div class="form-check form-switch">
											<input class="form-check-input" type="checkbox" role="switch" name="updates">
										</div>
									</li>
									<li
										class="list-group-item px-0 d-flex justify-content-between align-items-start">
										<div class="ms-2 me-auto">
											<h6 class="mb-0">New Offers</h6>
											<small>Tips on getting more out of the platform.</small>
										</div>
										<div class="form-check form-switch">
											<input class="form-check-input" type="checkbox" role="switch"
												checked="" name="offer">
										</div>
									</li>
									<li
										class="list-group-item px-0 d-flex justify-content-between align-items-start">
										<div class="ms-2 me-auto">
											<h6 class="mb-0">Daily Offer Update</h6>
											<small>Get involved in our new offers on Product.</small>
										</div>
										<div class="form-check form-switch">
											<input class="form-check-input" type="checkbox" role="switch" name="dailyupdate">
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>