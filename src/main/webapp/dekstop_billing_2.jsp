<%@page import="DTO.billing"%>
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
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #e0e0e0;
	color: black;
}

.logo-container {
	max-width: 1300px;
	width: 100%;
	height: 10vh;
	box-shadow: 0px 0px 5px gray;
	display: flex;
	align-items: center;
	margin: auto;
	margin-top: 1rem;
	background-color: white;
}

.logo-container h1 {
	margin-left: 1rem;
	padding: 0.5rem;
}

.main-container {
	max-width: 1300px;
	width: 100%;
	height: auto;
	margin: auto;
	margin-top: 0.5rem;
	box-shadow: 0px 0px 5px gray;
	background-color: white;
}

.main-container .input-fild {
	width: 100%;
	height: 42vh;
	border-bottom: 1px solid #7c7878;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

.input-fild .box1 {
	border-right: 1px solid #7c7878;
	width: 33.5%;
	height: 100%;
}

.input-fild .box1 .bill {
	border-bottom: 1px solid grey;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0.5rem;
}

.input-fild .box1 .bill h2 {
	font-size: 16px;
	font-weight: 500;
}

.input-fild .box1 .bill span {
	box-shadow: 0px 0px 2px gray;
	padding: 0.2rem;
	border-radius: 5px;
}

.input-fild .box1 .bill span .check {
	margin-left: 1rem;
}

.input-fild .box1 .bill .bill-btn {
	box-shadow: 0px 0px 2px gray;
	padding: 0.3rem;
	border-radius: 5px;
	border: none;
	outline: none;
	cursor: pointer;
}

.box1 .sales-invoice {
	display: flex;
	margin-left: 1rem;
	margin-top: 0.5rem;
}

.box1 .sales-invoice label {
	color: rgb(163, 163, 163);
	font-size: 15px;
}

.box1 .sales-invoice .sales-input {
	border: none;
	/* box-shadow: 0px 0px 5px gray; */
	padding: 0.4rem;
	margin-top: 0.4rem;
	width: 130px;
	background-color: rgba(241, 240, 240, 0.658);
	border-radius: 10px;
}

.box1 .sales-invoice .sales-input:hover {
	border: none;
	background-color: rgb(241, 240, 240);
	border-radius: 10px;
}

.box1 .sales-invoice-1 {
	/* border:  1px solid red; */
	margin-top: 1.5rem;
	width: fit-content;
	display: flex;
}

.box1 .sales-invoice-1 .sales-fild {
	margin-left: 0.5rem;
}

.box1 .sales-invoice-1 label {
	color: rgb(163, 163, 163);
	font-size: 15px;
}

.box1 .sales-invoice-1 .sales-input {
	border: none;
	/* box-shadow: 0px 0px 5px gray; */
	padding: 0.4rem;
	margin-top: 0.4rem;
	margin-bottom: 0.5rem;
	width: 130px;
	background-color: rgba(241, 240, 240, 0.658);
	border-radius: 10px;
}

.box1 .sales-invoice-1 .sales-input-1 {
	border: 1px solid rgb(241, 240, 240);
	/* box-shadow: 0px 0px 5px gray; */
	padding: 0.4rem;
	margin-top: 0.4rem;
	margin-bottom: 0.5rem;
	width: 130px;
	background: white;
	border-radius: 10px;
}

.box1 .sales-invoice-1 .sales-fild span {
	position: relative;
	padding: 0.3rem;
	margin-top: 0.4rem;
	/* margin-bottom: 0.5rem; */
	width: 130px;
	background-color: rgba(241, 240, 240, 0.658);
	border-radius: 5px;
	right: 39px;
}

.box1 .from {
	position: relative;
	/* border: 1px solid red; */
	display: flex;
	flex-direction: column;
	width: 50%;
	top: 10px;
}

.box1 .from label {
	/* margin-bottom: 0.5rem; */
	/* color: rgba(10, 9, 9, 0.747); */
	color: black;
	margin-left: 5px;
	letter-spacing: 1px;
	background-color: rgba(241, 240, 240, 0.658);
}

.from input {
	background-color: #fff;
	border: none;
	height: 25px;
	border: 1px solid rgba(241, 240, 240, 0.658);
	border-radius: 5px;
	margin: 5px 5px;
}

.add-inputs {
	/* border: 1px solid black; */
	padding: 5px;
}

.add-inputs h3 {
	font-weight: 400;
	font-size: 16px;
	text-align: start;
	margin: auto;
	padding-bottom: 10px;
	padding-left: 5px;
	background-color: rgba(241, 240, 240, 0.658);
	border-radius: 2px;
	height: 30px;
}

.form-con {
	display: flex;
	justify-content: space-between;
}

.Add-item {
	padding: 0.4rem 2rem 0.4rem 2rem;
	background-color: rgba(58, 58, 252, 0.849);
	border: none;
	outline: none;
	border-radius: 5px;
	color: white;
	position: relative;
	top: 170px;
	right: 30px;
	cursor: pointer;
}

.Add-item:hover {
	background-color: white;
	color: black;
	border: 1px solid black;
}

.main-container_2 {
	max-width: 1300px;
	width: 100%;
	height: 4cm;
	margin: auto;
	margin-top: 0.5rem;
	box-shadow: 0px 0px 5px gray;
	background-color: white;
}
</style>
</head>
<body>
	<%
	billing bb = (billing) request.getAttribute("list");
	%>
	<%-- <h1><%=bb.getBilling_id() %></h1>
<h1><%=bb.getEmail_id() %></h1> --%>














	<div class="logo-container">
		<a class="navbar-brand me-2 mb-1 d-flex align-items-center" href="#">
			<img src="./image/logobringit.png" height="30" alt="MDB Logo"
			loading="lazy" style="margin-top: 2px; margin-left: 5rem;" />
		</a>

		<h1 style="letter-spacing: 10px; margin-left: 28rem;">SALES
			INVOICE</h1>
	</div>

	<div class="main-container">

		<div class="input-fild">

			<div class="box1">

				<div class="bill">
					<h2>Bill</h2>
					<span> <input type="checkbox" name="" value="" id=""
						class="check">Set Cash Sale as deflault
					</span>
					<button class="bill-btn">Change Party</button>
				</div>

				<div class="form-con">
					<div class="from">
						<label for="">Custem ID</label> <input type="text"
							class="form-input custem"> <label for="">Enter
							Name</label> <input type="text" class="form-input custem-name"> <label
							for="">mobile No.</label> <input type="number"
							class="form-input custem-phone"> <label for="">Email
							Id</label> <input type="email" class="form-input custem-email">

					</div>
					<div class="btn">
						<button class="Add-item">Add</button>
					</div>
				</div>

			</div>

			<div class="box1">

				<div class="bill">
					<h2>Ship To</h2>

					<button class="bill-btn">Change Shopping Address</button>
				</div>

				<div class="add-inputs">
					<label for="">Custem ID</label>
					<h3 class="custem-val "></h3>

					<label for="">Name</label>
					<h3 class="custem-val-name"></h3>

					<label for="">name</label>
					<h3 class="custem-val-phone"></h3>

					<label for="">name</label>
					<h3 class="custem-val-email"></h3>

				</div>

			</div>
			<div class="box1">

				<div class="sales-invoice">
					<div class="sales-fild">
						<label for="">Sales Invoice No.</label> <input type="text" name=""
							id="" class="sales-input" value=<%=bb.getBilling_id()%>>
					</div>
					<div class="sales-fild">
						<label for="">Sales Invoice Date</label> <input type="date"
							name="" id="" class="sales-input">
					</div>
				</div>
				<div class="sales-invoice-1">
					<div class="sales-fild">
						<label for="">Payment Terms:</label> <input type="number" name=""
							id="" class="sales-input-1"> <span>day</span>
					</div>
					<div class="sales-fild">
						<label for="">Sales Invoice Date</label> <input type="date"
							name="" id="" class="sales-input">
					</div>
				</div>


			</div>

		</div>

	</div>


	<div class="main-container_2">
	
	
	<!-- <a href="search_product_page_for_billing.jsp" class="btn btn-success" style="margin-top: 1.2cm;margin-left: 1cm; width: 94%;max-width: 1300px;height: 1.4cm; text-align: center;font-size: 0.8cm;font-weight: 600;box-shadow: 0px 0px 5px gray;
	">ADD PRODUCT  +</a> -->
	<a href="search_product_page_for_billing_servelet?billing_id=<%=bb.getBilling_id()%>" class="btn btn-success" style="margin-top: 1.2cm;margin-left: 1cm; width: 94%;max-width: 1300px;height: 1.4cm; text-align: center;font-size: 0.8cm;font-weight: 600;box-shadow: 0px 0px 5px gray;
	">ADD PRODUCT</a>
	</div>

	<script>
    
    

    let Add_item = document.querySelector('.Add-item');
    let Custem = document.querySelector('.custem');
    let custem_val = document.querySelector('.custem-val');

    let custem_val_name = document.querySelector('.custem-val-name');
    let custem_name = document.querySelector('.custem-name');

    let custem_val_phone = document.querySelector('.custem-val-phone')
    let custem_phone = document.querySelector('.custem-phone')

    let custem_val_email = document.querySelector('.custem-val-email');
    let custem_email = document.querySelector('.custem-email')

    Add_item.addEventListener('click' , () => {
        custem_val.innerText = Custem.value;
        custem_val_name.innerText = custem_name.value.toUpperCase();

        custem_val_phone.innerText = custem_phone.value;
        custem_val_email.innerText = custem_email.value;
    })

    // card_name_input.oninput = () => {
//         card_holder_name.innerText = card_name_input.value.toUpperCase();
    // }

    for(let i = 0; i < 5; i++) {
        
            setTimeout(() => {
                console.log(index)
            })
    }
    for(let i = 0; i < 5; i++) {
        (function(index){
            setTimeout(() => {
                console.log(index)
            })
        })
        (i)
    }
    </script>
</body>
</html>