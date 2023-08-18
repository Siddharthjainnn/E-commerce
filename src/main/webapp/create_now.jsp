<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Add</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>
body {
	background: #eee;
}

.card {
	box-shadow: 0 20px 27px 0 rgb(0 0 0/ 5%);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: 1rem;
}

.card-body {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.5rem 1.5rem;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<%
	String al = (String) request.getAttribute("msg");
	%>
	<%if(al!=null)
		{%>
		<h1 style="color: red;"><center><%=al%></center></h1>
<%} %>

	<!-- <div class="jumbotron jumbotron-fluid">
		<div class="container">

			<form action="customer_add" method="post"
				enctype="multipart/form-data">

				<div class="form-group">
					<label for="exampleInputEmail1">NAME</label> <input type="text"
						class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter name" name="name">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">USER ID</label> <input
						type="text" class="form-control" id="exampleInputPassword1"
						placeholder=" Enter user id" name="user_id">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">PASSWORD</label> <input type="text"
						class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter password"
						name="password">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">GENDER</label> <input
						type="text" class="form-control" id="exampleInputPassword1"
						placeholder=" Enter gender" name="gender">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">YOUR PHOTO</label> <input
						type="file" class="form-control" id="exampleInputPassword1"
						placeholder=" Enter your photo" name="image">
				</div>



				<button type="submit" class="btn btn-primary">Submit</button>



			</form>
		</div>
	</div> -->


	<form action="new_customer_add_please" method="post"
		enctype="multipart/form-data">
		<div class="container-fluid">
		<%
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String digits = "0123456789";
        
        String randomUserId = "";
        
        for (int i = 0; i < 2; i++) {
            randomUserId += alphabet.charAt((int) (Math.random() * alphabet.length()));
        }
        
        for (int i = 0; i < 3; i++) {
            randomUserId += digits.charAt((int) (Math.random() * digits.length()));
        }
    %>

			<div class="container">
				<!-- Title -->
				<div
					class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
					<h2 class="h5 mb-3 mb-lg-0">
						<a href="../../pages/admin/customers.html" class="text-muted"><i
							class="bi bi-arrow-left-square me-2"></i></a> Create new customer
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
												type="text" class="form-control" name="name">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">User Id</label> <input type="text"
												class="form-control" name="user_id" value="<%= randomUserId %>" readonly>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Email</label> <input type="email"
												class="form-control" name="email_id">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Phone number</label> <input
												type="text" class="form-control" name="phone">
										</div>
									</div>
									
								</div>
								<div class="row">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Set Password</label> <input type="password"
												class="form-control" name="password">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">Re-Enter Password number</label> <input
												type="password" class="form-control" name="repassword">
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
										type="text" class="form-control" name="adress">
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
												class="form-control" name="zip">
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
												class="form-control" name="occupation">
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
								<input type="date" name="dob">
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
								<textarea class="form-control" rows="3" name="notes"></textarea>
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
		
		<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<form action="otp_generator" method="post">
				<div class="input-group mb-3" style="padding: 5cm;">
					<input type="text" class="form-control"
						placeholder="enter your valid email id"
						aria-label="Recipient's username" aria-describedby="basic-addon2"
						name="email_id">
					<div class="input-group-append">
						<span class="input-group-text" id="basic-addon2"><button
								type="submit" class="btn btn-danger">veirfy your mail</button></span>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>