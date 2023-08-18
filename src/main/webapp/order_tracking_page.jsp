<%@page import="org.apache.catalina.util.ConcurrentDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="DTO.checkoutpage"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<style>
body {
	background-color: #D3D3D3;
}
/* 
	.gradient-custom {
/* fallback for old browsers */
background
:
 
#cd9cf2
;

/* Chrome 10-25, Safari 5.1-6 */


background
:
 
-webkit-linear-gradient
(
to
 
top
 
left
,
rgba
(
205
,
156
,
242
,
1
)
,
rgba
(
246
,
243
,
255
,
1
)
)
;

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


background
:
 
linear-gradient
(
to
 
top
 
left
,
rgba
(
205
,
156
,
242
,
1
)
,
rgba
(
246
,
243
,
255
,
1
)
)


}
* /
	 
	 
	 
	 
	 
	 
	 
	 
	 body {
	margin-top: 20px;
	background-color: #f1f3f7;
}

.card {
	margin-bottom: 24px;
	-webkit-box-shadow: 0 2px 3px #e4e8f0;
	box-shadow: 0 2px 3px #e4e8f0;
}

.card {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid #eff0f2;
	border-radius: 1rem;
}

.activity-checkout {
	list-style: none
}

.activity-checkout .checkout-icon {
	position: absolute;
	top: -4px;
	left: -24px
}

.activity-checkout .checkout-item {
	position: relative;
	padding-bottom: 24px;
	padding-left: 35px;
	border-left: 2px solid #f5f6f8
}

.activity-checkout .checkout-item:first-child {
	border-color: #3b76e1
}

.activity-checkout .checkout-item:first-child:after {
	background-color: #3b76e1
}

.activity-checkout .checkout-item:last-child {
	border-color: transparent
}

.activity-checkout .checkout-item.crypto-activity {
	margin-left: 50px
}

.activity-checkout .checkout-item .crypto-date {
	position: absolute;
	top: 3px;
	left: -65px
}

.avatar-xs {
	height: 1rem;
	width: 1rem
}

.avatar-sm {
	height: 2rem;
	width: 2rem
}

.avatar {
	height: 3rem;
	width: 3rem
}

.avatar-md {
	height: 4rem;
	width: 4rem
}

.avatar-lg {
	height: 5rem;
	width: 5rem
}

.avatar-xl {
	height: 6rem;
	width: 6rem
}

.avatar-title {
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	background-color: #3b76e1;
	color: #fff;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	font-weight: 500;
	height: 100%;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	width: 100%
}

.avatar-group {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	padding-left: 8px
}

.avatar-group .avatar-group-item {
	margin-left: -8px;
	border: 2px solid #fff;
	border-radius: 50%;
	-webkit-transition: all .2s;
	transition: all .2s
}

.avatar-group .avatar-group-item:hover {
	position: relative;
	-webkit-transform: translateY(-2px);
	transform: translateY(-2px)
}

.card-radio {
	background-color: #fff;
	border: 2px solid #eff0f2;
	border-radius: .75rem;
	padding: .5rem;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block
}

.card-radio:hover {
	cursor: pointer
}

.card-radio-label {
	display: block
}

.edit-btn {
	width: 35px;
	height: 35px;
	line-height: 40px;
	text-align: center;
	position: absolute;
	right: 25px;
	margin-top: -50px
}

.card-radio-input {
	display: none
}

.card-radio-input:checked+.card-radio {
	border-color: #3b76e1 !important
}

.font-size-16 {
	font-size: 16px !important;
}

.text-truncate {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

a {
	text-decoration: none !important;
}

.form-control {
	display: block;
	width: 100%;
	padding: 0.47rem 0.75rem;
	font-size: .875rem;
	font-weight: 400;
	line-height: 1.5;
	color: #545965;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #e2e5e8;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 0.75rem;
	-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow
		.15s ease-in-out;
	transition: border-color .15s ease-in-out, -webkit-box-shadow .15s
		ease-in-out;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out,
		-webkit-box-shadow .15s ease-in-out;
}

.edit-btn {
	width: 35px;
	height: 35px;
	line-height: 40px;
	text-align: center;
	position: absolute;
	right: 25px;
	margin-top: -50px;
}

.ribbon {
	position: absolute;
	right: -26px;
	top: 20px;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
	color: #fff;
	font-size: 13px;
	font-weight: 500;
	padding: 1px 22px;
	font-size: 13px;
	font-weight: 500
}
</style>


</head>
<body>
	<%@include file="header.jsp"%>
	<%
	ArrayList<checkoutpage> list = (ArrayList<checkoutpage>) request.getAttribute("LIST");
	%>





	<br>
	<br>

	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css"
		integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc="
		crossorigin="anonymous" />
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
		rel='stylesheet'>

	<div class="container">

		<div class="row">
			<div class="col-xl-5">

				<div class="card">
					<div class="card-body">
						<ol class="activity-checkout mb-0 px-4 mt-3">
							<li class="checkout-item">
								<div class="avatar checkout-icon p-1">
									<div class="avatar-title rounded-circle bg-primary">
										<i class="bx bxs-receipt text-white font-size-20"></i>
									</div>
								</div>
								<div class="feed-item-list">
									<div>
										<h5 class="font-size-16 mb-1">Billing Info</h5>
										<!-- <p class="text-muted text-truncate mb-4">Sed ut perspiciatis unde omnis iste</p> -->
										<div class="mb-3">
											<form>
												<div>
													<div class="row">
														<div class="col-lg-12">
															<div class="mb-6">
																<label class="form-label" for="billing-name">Name</label>
																<input type="text" class="form-control" id="name_2"
																	readonly>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="mb-6">
																<label class="form-label" for="billing-email-address">Email
																	Address</label> <input type="email" class="form-control"
																	id="email_2" readonly>
															</div>
														</div>
														<div class="col-lg-12">
															<div class="mb-6">
																<label class="form-label" for="billing-phone">Phone</label>
																<input type="text" class="form-control"
																	id="billing-phone" placeholder="9340390344">
															</div>
														</div>


														<!-- <div class="col-lg-12">
                                                        <div class="mb-6">
                                                            <label class="form-label" for="billing-name">Name</label>
                                                            <input type="text" class="form-control" id="" readonly >
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="mb-6">
                                                            <label class="form-label" for="billing-email-address">Email Address</label>
                                                            <input type="email" class="form-control" id="" readonly>
                                                        </div>
                                                    </div> -->
														<div class="col-lg-12">
															<div class="mb-6">
																<label class="form-label" for="billing-phone">Date
																	Of Order</label> <input type="text" class="form-control"
																	id="doo_2" readonly>
															</div>
														</div>
													</div>

													<!-- <div class="mb-3">
                                                    <label class="form-label" for="billing-address">Address</label>
                                                    <textarea class="form-control" id="billing-address" rows="3" placeholder="Enter full address"></textarea>
                                                </div> -->






													<!--  <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="mb-4 mb-lg-0">
                                                            <label class="form-label">Country</label>
                                                            <select class="form-control form-select" title="Country">
                                                                <option value="0">Select Country</option>
                                                                <option value="AF">Afghanistan</option>
                                                                <option value="AL">Albania</option>
                                                                <option value="DZ">Algeria</option>
                                                                <option value="AS">American Samoa</option>
                                                                <option value="AD">Andorra</option>
                                                                <option value="AO">Angola</option>
                                                                <option value="AI">Anguilla</option>                                   
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="mb-4 mb-lg-0">
                                                            <label class="form-label" for="billing-city">City</label>
                                                            <input type="text" class="form-control" id="billing-city" placeholder="Enter City">
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <div class="mb-0">
                                                            <label class="form-label" for="zip-code">Zip / Postal code</label>
                                                            <input type="text" class="form-control" id="zip-code" placeholder="Enter Postal code">
                                                        </div>
                                                    </div>
                                                </div>
 -->
												</div>
											</form>
										</div>
									</div>
								</div>
							</li>
							<li class="checkout-item">
								<div class="avatar checkout-icon p-1">
									<div class="avatar-title rounded-circle bg-primary">
										<i class="bx bxs-truck text-white font-size-20"></i>
									</div>
								</div>
								<div class="feed-item-list">
									<div>
										<%
										Date expectedDate = new Date();
										int dt7 = expectedDate.getDate() + 4;
                                       	expectedDate.setDate(dt7);
                                       	
										%>
										<h5 class="font-size-16 mb-1">Shipping Info</h5>
										<p  class="">expected delivery 
											<%=expectedDate %></p>
										<div class="mb-3">
											<div class="row">
												<div class="col-lg-12 col-sm-12">
													<div data-bs-toggle="collapse">
														<label class="card-radio-label mb-0"> <input
															type="radio" name="address" id="info-address1"
															class="card-radio-input" checked="">
															<div class="card-radio text-truncate p-3">
																<span class="fs-14 mb-4 d-block">Address 1</span> <span
																	class="fs-14 mb-2 d-block" id="name_3"></span> <span
																	class="text-muted fw-normal text-wrap mb-1 d-block"
																	id="adresss_2"></span> <span
																	class="text-muted fw-normal d-block" id="landmark_2"></span>
																<span class="text-muted fw-normal d-block"
																	id="pincode_2"></span>
															</div>
														</label>
														<!-- <div class="edit-btn bg-light  rounded">
															<a href="#" data-bs-toggle="tooltip" data-placement="top"
																title="" data-bs-original-title="Edit"> <i
																class="bx bx-pencil font-size-16"></i>
															</a>
														</div> -->
													</div>
												</div>

												<!-- <div class="col-lg-4 col-sm-6">
                                                <div>
                                                    <label class="card-radio-label mb-0">
                                                        <input type="radio" name="address" id="info-address2" class="card-radio-input">
                                                        <div class="card-radio text-truncate p-3">
                                                            <span class="fs-14 mb-4 d-block">Address 2</span>
                                                            <span class="fs-14 mb-2 d-block">Bradley McMillian</span>
                                                            <span class="text-muted fw-normal text-wrap mb-1 d-block">109 Clarksburg Park Road Show Low, AZ 85901</span>
                                                            <span class="text-muted fw-normal d-block">Mo. 012-345-6789</span>
                                                        </div>
                                                    </label>
                                                    <div class="edit-btn bg-light  rounded">
                                                        <a href="#" data-bs-toggle="tooltip" data-placement="top" title="" data-bs-original-title="Edit">
                                                            <i class="bx bx-pencil font-size-16"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div> -->
											</div>
										</div>
									</div>
								</div>
							</li>
							<li class="checkout-item">
								<div class="avatar checkout-icon p-1">
									<div class="avatar-title rounded-circle bg-primary">
										<i class="bx bxs-wallet-alt text-white font-size-20"></i>
									</div>
								</div>
								<div class="feed-item-list">
									<div>
										<h5 class="font-size-16 mb-1">Payment Info</h5>
										<p class="text-muted text-truncate mb-4">
											</p>
									</div>
									<div>
										<h5 class="font-size-14 mb-3">Payment method :</h5>
										<div class="row">


											<div class="col-lg-6 col-sm-6">
												<div>
													<label class="card-radio-label"> <input
														type="radio" name="pay-method" id="pay-methodoption2"
														class="card-radio-input"> <span
														class="card-radio py-3 text-center text-truncate">
															<i class="bx bxl-paypal d-block h2 mb-3"></i> Online
													</span>
													</label>
												</div>
											</div>

											<div class="col-lg-6 col-sm-6">
												<div>
													<label class="card-radio-label"> <input
														type="radio" name="pay-method" id="pay-methodoption3"
														class="card-radio-input" checked=""> <span
														class="card-radio py-3 text-center text-truncate">
															<i class="bx bx-money d-block h2 mb-3"></i> <span>Cash
																on Delivery</span>
													</span>
													</label>
												</div>
											</div>

										</div>
									</div>
								</div>
							</li>
						</ol>
					</div>
				</div>

				<!-- <div class="row my-4">
                <div class="col">
                    <a href="ecommerce-products.html" class="btn btn-link text-muted">
                        <i class="mdi mdi-arrow-left me-1"></i> Continue Shopping </a>
                </div> end col
                <div class="col">
                    <div class="text-end mt-2 mt-sm-0">
                        <a href="#" class="btn btn-success">
                            <i class="mdi mdi-cart-outline me-1"></i> Procced </a>
                    </div>
                </div> end col
            </div> end row -->
			</div>





			<div class="col-xl-7">
				<div class="card checkout-order-summary">





					<br>
					<h1>
						<center>
							ORDER STATUS<br>
							<span id="status_2" style="color: red;"></span> <i
								class="fa-regular fa-face-smile fa-beat-fade fa-lg"
								style="color: #943d53;"></i>
						</center>
					</h1>

					<section class="h-100 gradient-custom">
						<div class="container py-5 h-100">
							<div
								class="row d-flex justify-content-center align-items-center h-100">
								<div class="col-lg-10 col-xl-12">
									<div class="card" style="border-radius: 10px;">
										<div class="card-header px-4 py-5">
											<h5 class="text-muted mb-0">
												Thanks for your Order, <span style="color: #FF0000;"><%=aa.getName()%></span>!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order
												No: <span id="order_no"></span>
											</h5>
										</div>

										<div class="card-body p-4">
											<div
												class="d-flex justify-content-between align-items-center mb-4">
												<p class="lead fw-normal mb-0" style="color: #a8729a;">Receipt</p>
												<p class="small text-muted mb-0">
													Order Date : <span id="date_2"></span>
												</p>
											</div>
											<%
											for (checkoutpage kl : list) {
											%>

											<input type="hidden" id="date" value=<%=kl.getDate()%>>
											<div class="card shadow-0 border mb-4">
												<div class="card-body">
													<div class="row">
														<input type="hidden" id="order_id"
															value=<%=kl.getOrder_no()%>>
														<div
															class="col-md-4 text-center d-flex justify-content-center align-items-center">
															<h3 style="color: #FF3333"><%=kl.getPro_name()%></h3>
														</div>
														<!-- <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                    <p class="text-muted mb-0 small">White</p>
                  </div>
                  <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                    <p class="text-muted mb-0 small">Capacity: 64GB</p>
                  </div> -->
														<div
															class="col-md-4 text-center d-flex justify-content-center align-items-center">
															<p class="text-muted mb-0 small">
																Qty:
																<%=kl.getPro_quantity()%></p>
														</div>
														<div
															class="col-md-4 text-center d-flex justify-content-center align-items-center">
															<p class="text-muted mb-0 small"><%=kl.getPro_price()%></p>
														</div>
														<input type="hidden" value="<%=kl.getTotal()%>"
															id="total_ammount" name="total_ammount"> <input
															type="hidden" value="<%=kl.getTotal_items()%>"
															id="total_items" name="total_items">

													</div>
													<hr class="mb-4"
														style="background-color: #e0e0e0; opacity: 1;">
													<input type="hidden" id="payment"
														value=<%=kl.getPayment()%>>
												</div>
											</div>
											<input type="hidden" value=<%=kl.getStatus()%> id="status">
											<input type="hidden" value=<%=kl.getName()%> id="name">
											<input type="hidden" value=<%=kl.getEmail()%> id="email">
											
											<input type="hidden" value=<%=kl.getAdress()%> id="adresss">
											<input type="hidden" value=<%=kl.getLandmark()%>
												id="landmark"> <input type="hidden"
												value=<%=kl.getPincode()%> id="pincode"> <input
												type="hidden" value=<%=kl.getDate()%> id="doo">


											<%
											}
											%>
											<div class="d-flex justify-content-between pt-2">
												<p class="fw-bold mb-0">TOTAL AMOUNT</p>
												<p class="text-muted mb-0">
													<span style="color: black; font-weight: 1000" id="total"></span>
												</p>
											</div>

											<div class="d-flex justify-content-between pt-2">
												<p class="text-muted mb-0">Total Items</p>
												<p class="text-muted mb-0">
													<span class="fw-bold me-4" id="items"></span>
												</p>
											</div>
											<%
											java.time.LocalDate currentDate = java.time.LocalDate.now();
											%>

											<div class="d-flex justify-content-between">
												<p class="text-muted mb-0">Invoice Date</p>
												<p class="text-muted mb-0">
													<span class="fw-bold me-4" id="date_1"></span>
												</p>
											</div>
											<div class="d-flex justify-content-between">
												<p class="text-muted mb-0">Delivery Charges</p>
												<p class="text-muted mb-0">
													<span class="fw-bold me-4">Free Delivery</span>
												</p>
											</div>
											<div class="d-flex justify-content-between">
												<p class="text-muted mb-0">Payment</p>
												<p class="text-muted mb-0">
													<span class="fw-bold me-4" id="payment_2"></span>
												</p>
											</div>


										</div>
										<div class="card-footer border-0 px-4 py-5"
											style="background-color: #B0B0B0; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
											<h5
												class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">
												Total paid:&nbsp;&nbsp;&nbsp;&nbsp; <span
													class="h2 mb-0 ms-2" id="total_last" style="color: red;"></span>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>

					</section>





				</div>
				<!-- end row -->








			</div>











			<br>



			<script>

<%-- <input type="hidden" value=<%=kl.getName() %> id="name">
<input type="hidden" value=<%=kl.getEmail() %> id="email">
<input type="hidden" value=<%=kl.getAdress() %> id="adresss">
<input type="hidden" value=<%=kl.getLandmark() %> id="landmark">
<input type="hidden" value=<%=kl.getPincode() %> id="pincode">
<input type="hidden" value=<%=kl.getDate() %> id="doo">
 --%>

console.log(name)

/* var adresss=document.getElementById("adresss").value; */


var doo=document.getElementById("doo").value;


var status=document.getElementById("status").value;
var date=document.getElementById("date").value;
var payment=document.getElementById("payment").value;
var total=document.getElementById("total_ammount").value;
var order=document.getElementById("order_id").value;
var items_no=document.getElementById("total_items").value;
console.log(total)
console.log(items_no)
let total_order_no = document.getElementById("total").innerText=total;
			console.log(total_order_no)
let total_amount = document.getElementById("items").innerText=items_no;
			console.log(total_amount)
			let total_order_no_2 = document.getElementById("total_last").innerText=total;
			let total_amount_3 = document.getElementById("order_no").innerText=order;
			let total_amount_4 = document.getElementById("date_1").innerText=date;
			let total_amount_5 = document.getElementById("date_2").innerText=date;
			let total_amount_6 = document.getElementById("payment_2").innerText=payment;
			let total_amount_7 = document.getElementById("status_2").innerText=status;
			let name_2 = document.getElementById("name_2").textContent=name;
			
			
			document.addEventListener("DOMContentLoaded", function() {
				var name=document.getElementById("name").value; // Replace with your desired value
				  var inputElement = document.getElementById("name_2");
				  inputElement.value = name;
				});
			document.addEventListener("DOMContentLoaded", function() {
				var name=document.getElementById("name").value; // Replace with your desired value
				  var inputElement = document.getElementById("name_3");
				  inputElement.innerHTML = name;
				});
			
			document.addEventListener("DOMContentLoaded", function() {
				var email=document.getElementById("email").value; // Replace with your desired value
				  var inputElement = document.getElementById("email_2");
				  inputElement.value = email;
				});
			
			document.addEventListener("DOMContentLoaded", function() {
				var adresss=document.getElementById("adresss").value; // Replace with your desired value
				  var inputElement = document.getElementById("adresss_2");
				  inputElement.innerHTML = adresss;
				});
			
			document.addEventListener("DOMContentLoaded", function() {
				var landmark=document.getElementById("landmark").value; // Replace with your desired value
				  var inputElement = document.getElementById("landmark_2");
				  inputElement.innerHTML = landmark;
				});
			
			document.addEventListener("DOMContentLoaded", function() {
				var pincode=document.getElementById("pincode").value; // Replace with your desired value
				  var inputElement = document.getElementById("pincode_2");
				  inputElement.innerHTML = pincode;
				});
			
			document.addEventListener("DOMContentLoaded", function() {
				var doo=document.getElementById("doo").value;// Replace with your desired value
				  var inputElement = document.getElementById("doo_2");
				  inputElement.value = doo;
				});
			console.log(name_2)
			let email_2 = document.getElementById("email_2").innerText=email;
			let adresss_2 = document.getElementById("adresss_2").innerText=adresss;
			let landmark_2 = document.getElementById("landmark_2").innerText=landmark;
			let pincode_2 = document.getElementById("pincode_2").innerText=pincode;
			let doo_2 = document.getElementById("doo_2").innerText=doo;
</script>


			<!-- <div class="container" style="border: 5px solid; align-content: center; text-align: center; margin-top: 1cm;"  >
<table class="table table-striped table-light">


<thead class="thead-dark">
<tr>
<th scope="col">PRO_NAME</th>
<th scope="col">QUANTITY</th>
<th scope="col">PRO_PRICE</th>
<th scope="col">TOTAL_AMOUNT</th>

</tr>

</thead -->
			> <br>




			<%--    <tr>
                 <td style="color: red;font-weight: 600"><%=kl.getPro_name() %></td>
                 
                 <td><%=kl.getPro_quantity() %></td>
                 <td><%=kl.getPro_price() %></td>
                <td><%=kl.getTotal() %></td>
                 </tr> --%>


			<%--  <%} %>
                 </table>
              </div> --%>
</body>
</html>