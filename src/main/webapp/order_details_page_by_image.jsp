<%@page import="DTO.order_by_image_user_2"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<link rel="stylesheet" href="index.css">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.css"
	rel="stylesheet" />

<style>

body{margin-top:20px;
color: #9b9ca1;
}
.bg-secondary-soft {
    background-color: rgba(208, 212, 217, 0.1) !important;
}
.rounded {
    border-radius: 5px !important;
}
.py-5 {
    padding-top: 3rem !important;
    padding-bottom: 3rem !important;
}
.px-4 {
    padding-right: 1.5rem !important;
    padding-left: 1.5rem !important;
}
.file-upload .square {
    height: 250px;
    width: 250px;
    margin: auto;
    vertical-align: middle;
    border: 1px solid #e5dfe4;
    background-color: #fff;
    border-radius: 5px;
}
.text-secondary {
    --bs-text-opacity: 1;
    color: rgba(208, 212, 217, 0.5) !important;
}
.btn-success-soft {
    color: #28a745;
    background-color: rgba(40, 167, 69, 0.1);
}
.btn-danger-soft {
    color: #dc3545;
    background-color: rgba(220, 53, 69, 0.1);
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.5rem 1rem;
    font-size: 0.9375rem;
    font-weight: 400;
    line-height: 1.6;
    color: #29292e;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #e5dfe4;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 5px;
    -webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<%order_by_image_user_2 okl=(order_by_image_user_2)request.getAttribute("List");  %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />


<div class="container">
<div class="row">
		<div class="col-12">
			<!-- Page title -->
			<div class="my-5">
				<h3>ORDER DETAILS (Custom List)</h3>
				<hr>
			</div>
			<!-- Form START -->
			<form class="file-upload">
				<div class="row mb-5 gx-5">
					<!-- Contact detail -->
					<div class="col-xxl-8 mb-5 mb-xxl-0">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h4 class="mb-4 mt-0">Contact detail</h4>
								<!-- First Name -->
								<div class="col-md-6">
									<label class="form-label"> Name *</label>
									<input type="text" class="form-control" placeholder="" aria-label="First name" value="<%=okl.getName()%>" readonly> 
								</div>
								<!-- Last name -->
								<div class="col-md-6">
									<label class="form-label">Order Id *</label>
									<input type="text" class="form-control" placeholder="" aria-label="Last name" value="<%=okl.getOrder_id()%>" readonly>
								</div>
								<!-- Phone number -->
								<div class="col-md-6">
									<label class="form-label">User Id *</label>
									<input type="text" class="form-control" placeholder="" aria-label="Phone number" value="<%=okl.getUser_id()%>" readonly>
								</div>
								<!-- Mobile number -->
								<div class="col-md-6">
									<label class="form-label">Date Of Order *</label>
									<input type="text" class="form-control" placeholder="" aria-label="Phone number" value="<%=okl.getEmail_id()%>" readonly>
								</div>
								<!-- Email -->
								<div class="col-md-6">
									<label for="inputEmail4" class="form-label">adress *</label>
									<input type="text" class="form-control" id="inputEmail4" value="<%=okl.getAdress()%>" readonly>
								</div>
								<!-- Skype -->
								<div class="col-md-6">
									<label class="form-label">Email Id *</label>
									<input type="text" class="form-control" placeholder="" aria-label="Phone number" value="<%=okl.getDate_of_order()%>" readonly>
								</div>
							</div> <!-- Row END -->
						</div>
					</div>
					<!-- Upload profile -->
					<div class="col-xxl-4">
						<div class="bg-secondary-soft px-4 py-5 rounded">
							<div class="row g-3">
								<h4 class="mb-4 mt-0"> <center>your List</center> </h4>
								<div class="text-center">
									<!-- Image upload -->
									<div class="square position-relative display-2 mb-3">
										<img src="get_img_by_bill?order_id=<%=okl.getOrder_id()%>" alt="avatar"
               style="width: 5cm;height: 5cm; margin: 25px;" >
									</div>
									<!-- Button -->
									
									<p class="text-muted mt-3 mb-0"><span class="me-1">Note:</span>You will get email conformation of your order</p>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- Row END -->

		</div>
	</div>
	</div>
</body>
</html>