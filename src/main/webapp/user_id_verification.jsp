<%@page import="DTO.new_customer_add"%>
<%@page import="com.mysql.cj.jdbc.ha.BestResponseTimeBalanceStrategy"%>
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
<style type="text/css">
body {
	
}

.height-100 {
	height: 100vh
}

.card {
	width: 400px;
	border: none;
	height: 300px;
	box-shadow: 0px 5px 20px 0px #d2dae3;
	z-index: 1;
	display: flex;
	justify-content: center;
	align-items: center
}

.card h6 {
	color: red;
	font-size: 20px
}

.inputs input {
	width: 40px;
	height: 40px
}

input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0
}

.card-2 {
	background-color: #fff;
	padding: 10px;
	width: 350px;
	height: 100px;
	bottom: -50px;
	left: 20px;
	position: absolute;
	border-radius: 5px
}

.card-2 .content {
	margin-top: 50px
}

.card-2 .content a {
	color: red
}

.form-control:focus {
	box-shadow: none;
	border: 2px solid red
}

.validate {
	border-radius: 20px;
	height: 40px;
	background-color: red;
	border: 1px solid red;
	width: 140px
}
</style>
</head>
<body>
<%String aaa=(String)request.getAttribute("ll"); %>
	<%
	new_customer_add list = (new_customer_add) request.getAttribute("list");
	%>

	<div
		class="container height-100 d-flex justify-content-center align-items-center">
		<div class="position-relative">
			<div class="card p-2 text-center">
				<h6>
					Please enter the one time password <br> to verify your account
				</h6>
				<div>
					<span>A code has been sent to</span>&nbsp;&nbsp; <b><%=list.getEmail_id()%></b>
				</div>
				<form action="ceck_otp_2?otp_generated=<%=aaa %>" method="post">
				<input type="hidden" value="<%=list.getUser_id() %>" style="text-align: center;" name="user_id" readonly>
				<div id="otp"
					class="inputs d-flex flex-row justify-content-center mt-2">
					<input class="m-2 text-center form-control rounded" type="text"
						id="first" maxlength="1" name="1st" /> <input
						class="m-2 text-center form-control rounded" type="text"
						id="second" maxlength="1" name="2st"  /> <input
						class="m-2 text-center form-control rounded" type="text"
						id="third" maxlength="1" name="3st"  />
						 <input class="m-2 text-center form-control rounded" type="text"
						id="fourth" maxlength="1" name="4st" /> 
				</div>
				<div class="mt-4">
					<button  type="submit" class="btn btn-danger px-4 validate">SUBMIT</button>
				</div>
			</div>
			</form>
			<div class="card-2">
				<div
					class="content d-flex justify-content-center align-items-center">
					<span>Didn't get the code</span> <a href="#"
						class="text-decoration-none ms-3">Resend(1/3)</a>
				</div>
			</div>
		</div>
	</div>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {

			function OTPInput() {
				const inputs = document.querySelectorAll('#otp > *[id]');
				for (let i = 0; i < inputs.length; i++) {
					inputs[i].addEventListener('keydown',
							function(event) {
								if (event.key === "Backspace") {
									inputs[i].value = '';
									if (i !== 0)
										inputs[i - 1].focus();
								} else {
									if (i === inputs.length - 1
											&& inputs[i].value !== '') {
										return true;
									} else if (event.keyCode > 47
											&& event.keyCode < 58) {
										inputs[i].value = event.key;
										if (i !== inputs.length - 1)
											inputs[i + 1].focus();
										event.preventDefault();
									} else if (event.keyCode > 64
											&& event.keyCode < 91) {
										inputs[i].value = String
												.fromCharCode(event.keyCode);
										if (i !== inputs.length - 1)
											inputs[i + 1].focus();
										event.preventDefault();
									}
								}
							});
				}
			}
			OTPInput();

		});
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>