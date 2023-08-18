<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Add_to_cart"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">

<link rel="stylesheet" href="main.css">



<style>
@import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);

body {
    background-color: #eee;
    font-family: 'Calibri', sans-serif !important;
}

.mt-100{
   margin-top:100px;

}


.card {
    margin-bottom: 30px;
    border: 0;
    -webkit-transition: all .3s ease;
    transition: all .3s ease;
    letter-spacing: .5px;
    border-radius: 8px;
    -webkit-box-shadow: 1px 5px 24px 0 rgba(68,102,242,.05);
    box-shadow: 1px 5px 24px 0 rgba(68,102,242,.05);
}

.card .card-header {
    background-color: #fff;
    border-bottom: none;
    padding: 24px;
    border-bottom: 1px solid #f6f7fb;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
}

.card-header:first-child {
    border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0;
}



.card .card-body {
    padding: 30px;
    background-color: transparent;
}

.btn-primary, .btn-primary.disabled, .btn-primary:disabled {
    background-color: #4466f2!important;
    border-color: #4466f2!important;
}

</style>


<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>

<script>
	// Function to calculate the cart total
	function calculateTotal() {
		var cartItems = document.querySelectorAll('.cart-item');
		var total = 0;

		cartItems.forEach(function(item) {
			var price = parseFloat(item.querySelector('.price').textContent);
			var quantity = parseInt(item.querySelector('.quantity').value);
			total += price * quantity;
		});

		document.getElementById('cart-total').textContent = total.toFixed(2);
	}

	// Event listener for quantity changes
	document.addEventListener('change', function(event) {
		if (event.target.classList.contains('quantity')) {
			calculateTotal();
		}
	});

	// Initial calculation on page load
	window.onload = calculateTotal;

	// Function to send cart data to the server
	function sendCartData() {
		var cartItems = document.querySelectorAll('.cart-item');
		var cartData = [];

		cartItems.forEach(function(item) {
			var name = item.querySelector('.product-name').textContent;
			var price = parseFloat(item.querySelector('.price').textContent);
			var quantity = parseInt(item.querySelector('.quantity').value);
			cartData.push({
				name : name,
				price : price,
				quantity : quantity
			});
		});

		// Send cartData to the server using AJAX
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'CartServlet', true);
		xhr.setRequestHeader('Content-Type', 'application/json');
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status === 200) {
				console.log('Cart data sent successfully.');
			}
		};
		xhr.send(JSON.stringify(cartData));
	}
</script>



</head>
<body>

	<%@include file="header.jsp"%>

	<%
	String gg = (String) request.getAttribute("msg");
	%>
	<%
	if (gg != null) {
	%>
	<center>
		<h1 style="color: red;"><%=gg%></h1>
	</center>
	<%
	}
	%>
	
	<%
	ArrayList<Add_to_cart> list = (ArrayList<Add_to_cart>) request.getAttribute("LIST");
	%>
	
	

	<div class="container" style="margin-top: 1cm">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">REMOVE</th>
					<th scope="col">Order Id</th>
					<th scope="col">NAME</th>
					<th scope="col">PRODUCT_ID</th>
					<th scope="col">CATEGORY</th>
					<th scope="col">TOTAL_QUANTITY</th>
					<th scope="col">PRICE</th>
					<th scope="col">UPDATE CHANGES</th>
					 
				
				</tr>
			</thead>
<%int itemCount = 0;  %>

			
			<%
			for (Add_to_cart mm : list) {
			%>
			 <%
			itemCount++;
			
			%>
			
				<tr class="cart-item">
					<input type="hidden" value="<%=aa.getUser_id()%>" name="order_id">

					<td><a
						href="./delete_product_from_cart?pro_id=<%=mm.getPro_id()%>&user_id=<%=aa.getUser_id()%>">
							<i class="fa-solid fa-trash fa-2xl" style="color: #0f54c2;"></i>
					</a></td>

<form action="update_quantity" method="post">
					<td><%=aa.getUser_id()%></td>
					
					<input type="hidden" value="<%=aa.getUser_id()%>" name="user_id">

					<td class="product-name"><%=mm.getName()%></td>
					<input type="hidden" value="<%=mm.getName()%>" name="pro_name">
					<td><%=mm.getPro_id()%></td>
					<input type="hidden" value="<%=mm.getPro_id()%>" name="pro_id">
					<td><%=mm.getCategory()%> </td>
					<input type="hidden" value="<%=mm.getCategory()%>" name="cat">
					<td><input id="quantity" name="quantity" class="quantity" type="number" value="<%=mm.getQuantity() %>" min="1"
						style="text-align: center; width: 3cm; "></td>
						
					<td class="price"><%=mm.getPro_price()%></td>
					<input type="hidden" value="<%=mm.getPro_price()%>" id="pro_price" name="price">


                    <!--  <td><h1 id="total_amount"></h1></td> -->
					</td>
					<td><button type="submit" class="btn btn-outline-warning">UPDATE</button></td>
</form>

				
				</tr>
				
				
			
				<%
				}
				%>
				
					
			<h3 >
			Total items in the cart: <%=itemCount %>
      </h3>
      
		</table>
		<br>
		<br>
		<hr>
		<div >
		<center>
		<h2>
		<span >TOTAL AMOUNT TO BE PAY</span>
		<span id="cart-total"
		style="text-align: center; color: red;">0.00</span>	
		</h2>	
		</div>
		</center>
		<hr>
		
		
		
	
		<%if(itemCount==0)
	{%>
<div class="container-fluid  mt-100">
				 <div class="row">
				 
					<div class="col-md-12">
					
							<div class="card">
						<div class="card-header">
						
						</div>
						<div class="card-body cart">
								<div class="col-sm-12 empty-cart-cls text-center">
									<img src="https://i.imgur.com/dCdflKN.png" width="130" height="130" class="img-fluid mb-4 mr-3">
									<h3><strong>Your Cart is Empty</strong></h3>
									<h4>Add something to make me happy :)</h4>
									<a href="home.jsp" class="btn btn-primary cart-btn-transform m-3" data-abc="true">continue shopping</a>
									
								
								</div>
						</div>
				</div>
						
					
					</div>
				 
				 </div>
				
				</div>
				
			
	<%}else{ %>
		

	</div>
	</div>
	</div>

<% 
int otp=0;
otp=(int) Math.floor(1000 + Math.random() * 9000);

String otp2 = String.valueOf(otp); 
%>

<%
        java.time.LocalDate currentDate = java.time.LocalDate.now();
        String formattedDate = currentDate.toString(); // Format: YYYY-MM-DD
 
    %>

<form id="myForm" action="MyServlet_2" method="post"> 
	<!-- This is the span containing the dynamic value -->
	<input type="hidden" value=<%=formattedDate %> name="date"> 
	<input type="hidden" value=<%=otp2 %> name="order_id">
	<input type="hidden" value="<%=aa.getUser_id() %>" name="customer_id">
	<input type="hidden" id="dynamicValueInput" name="dynamicValue">
	<input type="submit" class="btn btn-success btn-block btn-lg"
		value="Submit">
	</form>


	<%-- <a href="show_order?user_id=<%=aa.getUser_id()%>">show order</a> --%>
	</div>
	</div>
	</div>

      




<%} %>


	<script>
		document.getElementById('myForm').onsubmit = function() {
			var dynamicValue = parseFloat(document.getElementById('cart-total').innerText);
			document.getElementById('dynamicValueInput').value = dynamicValue
					.toFixed(2); // Round to 2 decimal places// Round to 2 decimal places
			return true; // Allow the form to be submitted
		};
	</script>


<script >

/* let quantity = document.getElementById("quantity").value;
console.log(quantity)
let price = document.getElementById("pro_price").value;
console.log(price)
let tt=quantity*price;
console.log(tt)
let total_amount = document.getElementById("total_amount").innerText=tt;
console.log(total_amount) */

 
			
			let quantity = document.getElementById("quantity").value;
			console.log(quantity)
			let price = document.getElementById("pro_price").value;
			console.log(price)
			let tt=quantity*price;
			console.log(tt)
			let total_amount = document.getElementById("total_amount").innerText=tt;
			console.log(total_amount)
	

	
	


</script>





</body>
</html>