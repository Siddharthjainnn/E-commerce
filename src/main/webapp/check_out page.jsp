<%@page import="DTO.Add_to_cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	
	<style>
	.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
	</style>
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
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

		document.getElementById('cart-total').textContent = 
				 total.toFixed(2);
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
				<!-- <th scope="col">TOTAL_PRICE</th>
				<th scope="col">submit</th> -->
			</tr>
		</thead>
		<%
		for (Add_to_cart mm : list) {
		%>
		<tr class="cart-item">


			<td><a
				href="./delete_product_from_cart?pro_id=<%=mm.getPro_id()%>"> <i
					class="fa-solid fa-trash fa-2xl" style="color: #0f54c2;"></i></a></td>
			
				
				<td class="product-name"><%=mm.getName()%>
					</td>
				<td><%=mm.getPro_id()%>
					</td>
				<td><%=mm.getCategory()%>
					</td>
				<td><input class="quantity" type="number" value="1" min="1" style="text-align: center;width: 3cm;"></td>
				
				 <td class="price"><%=mm.getPro_price() %></td>
				</td>


				<%-- <td><input type="text" value="<%=mm.getTotal_price()%>"
					name="total_price" readonly id="total_price"
					style="color: green; font-size: 25px; width: 100%; text-align: center; font-weight: 600; border-right: 2px solid rgba(0, 0, 0, 0.2); border-left: 2px solid rgba(0, 0, 0, 0.2);">
				</td> --%>
		</tr>
		<%
		}
		%>
	</table>
	
	<!-- <h2>Total: <span id="cart-total">0.00</span></h2> -->
	
	<!-- <div style="width:content;height: 2cm; text-align: right;align-items: right;margin-top: 5px;">
	<h2><span style="color: red;">Total:</span> <span id="cart-total">0.00</span></h2>
	</div>
    -->
	
</div>









          <div class="card-body d-flex flex-row">
            <div class="form-outline flex-fill">
              <input type="text" id="form1" class="form-control form-control-lg" placeholder="Discound code"  style="width: 18cm;text-align: center;align-items: center;margin-left: 9cm;"/>
            </div>
            <button type="button" class="btn btn-outline-primary btn-lg " style="width: 5cm;height: 1.3cm;">Apply</button>
          </div>
        </div>
        
        
        <%
        java.time.LocalDate currentDate = java.time.LocalDate.now();
        String formattedDate = currentDate.toString(); // Format: YYYY-MM-DD
 
    %>
<form id="myForm" action="MyServlet_2" method="post">
<input type="hidden" value=<%=formattedDate %> name="date"> 
  <span id="cart-total">0.00</span><!-- This is the span containing the dynamic value -->
  <input type="text" id="dynamicValueInput" name="dynamicValue">
  <input type="submit" value="Submit">
</form>
        <div class="card">
          <div class="card-body">
            <!--   <button type="button" class="btn btn-success btn-block btn-lg">Total Amount To be Pay <span id="cart-total">0.00</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span> </button>   -->
                       </div>
        </div>
       
      </div>
    </div>
  </div>






<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">

        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>

        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>

  <div class="col-25">
    <div class="container">
      <h4>Cart
        <span class="price" style="color:black">
          <i class="fa fa-shopping-cart"></i>
          <b>4</b>
        </span>
      </h4>
      <p><a href="#">Product 1</a> <span class="price">$15</span></p>
      <p><a href="#">Product 2</a> <span class="price">$5</span></p>
      <p><a href="#">Product 3</a> <span class="price">$8</span></p>
      <p><a href="#">Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>$30</b></span></p>
    </div>
  </div>
</div>









<script>
  document.getElementById('myForm').onsubmit = function() {
    var dynamicValue = parseFloat(document.getElementById('cart-total').innerText);
    document.getElementById('dynamicValueInput').value = dynamicValue.toFixed(2); // Round to 2 decimal places// Round to 2 decimal places
    return true; // Allow the form to be submitted
  };
</script>




</body>
</html>