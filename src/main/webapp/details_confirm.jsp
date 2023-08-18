<%@page import="java.util.Date"%>
<%@page import="DTO.order"%>
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
	
	
	
	<style>
	.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 ;
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

.btn_ok {
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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer">
<body>
<%@include file="header.jsp" %>
	<%
	String rr = (String) request.getAttribute("msg");
	%>
	<h1>
		<center><%=rr%></center>
	</h1>


	<%
	ArrayList<order> list = (ArrayList<order>) request.getAttribute("LIST");
	%>
	
<form action="final_order_details_full" method="post" enctype="multipart/form-data"  >
<input type="hidden" value="<%=aa.getUser_id()%>"  name="customer_id" >
	<input type="hidden" name="status" value="pending">
			<%
			for (order mm : list) {
			%>

			<tr class="cart-item">
				<input type="hidden" value="<%=mm.getDynamicValuel()%>" id="total"  name="total_ammount">
				<input type="hidden" value="<%=mm.getOrder_id()%>" id="order_no" name="order_no" >
			</tr>
			<%
			}
			%>
		
		
	
	<div class="row">
  <div class="col-75">
    <div class="container">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="name" placeholder="Enter Name "    required="required">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="Enter Email" required="required">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="Enter Adress" required="required"> 
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="Enter City" required="required">

            <div class="row">
              <div class="col-50">
                <label for="state">LandMark</label>
                <input type="text" id="state" name="landmark" placeholder="Enter LandMark" required="required">
              </div>
              <div class="col-50">
                <label for="zip">Pincode</label>
                <input type="text" id="" name="pincode" placeholder="Enter Pincode" required="required"> 
              </div>
              </div>
            <%
        java.time.LocalDate currentDate = java.time.LocalDate.now();
        String formattedDate = currentDate.toString(); // Format: YYYY-MM-DD
 
    %>
    <div class="col-50">
                <label for="doo">Date of Order</label>
                <input type="text" id="" name="date" readonly value=<%=formattedDate %>>
              </div>
            </div>
          

          <div class="col-50">
          <center><h3>Payment Option</h3>
         
          <hr>
          
          <h3 style="color: orange;">
          <div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="cash_on_delivery" checked>
  
    CASH ON DELIVEY
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="online">
  
    ONLINE PAYMENT
  </label>
</div>
</h3>
           
           
            <label for="fname" style="color: red; font-weight: 1000;">Note - **after payment please send screen shot </label>
           
            <div class="icon-container" style="color: black;font-weight: 700">
              Scan QR and pay total amount
            </div></center><center>
            <img src="./image/paytym.png"  alt="" style=" height: 8cm;width:auto;">
            </center>
            <div class="row">
              <div class="col-50"><br>
                <center>
                <label for="expyear" style="color: red; font-weight: 1000;">PLEASE SEND SCREEN SHOT OF PAYMENT DONE</label>
               <center> <input type="file" id="expyear" name="image" ></center>
                </center>
              </div>
              
            </div>
        
  
   </div>

        </div>
        
        <input type="submit" value="Continue to checkout" class="btn_ok">
      
    </div>
  </div>

  <div class="col-25" >
    <div class="container" style="margin-right: 1px;" >
      <h4>Cart For Order No
        <span id="total_order_no" class="price" style="color:red;" >
          
        </span>
      </h4>
      <br>
      <table>
      <tr>
      
      <th>NAME</th>
      <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QUANTITY</th>
      <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRICE</th>
      
      </tr>
      
      <%int itemCount = 0;  %>
      
      <%
			for (order mm : list) {
			%>
			<tr>
			<%
			itemCount++;
			
			%>
        <%-- <td><%=mm.getName()%></td>  <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=mm.getQuantity()%></td>  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=mm.getPrice() %> --%>
			<td><%=mm.getName()%></td>  <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=mm.getQuantity()%></td>  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=mm.getPrice() %>
			
			</tr>
			
			<input type="hidden" name="itemid" value="<%=mm.getId()%>">
			<input type="hidden" name="itemName" value="<%=mm.getName()%>">
                <input type="hidden" name="itemquantity" value="<%=mm.getQuantity()%>">
                <input type="hidden" name="itemPrice" value="<%=mm.getPrice() %>">
		
		
			<%
			}
			%>
			      
      </table>
      
      <hr>
     
      <p>Total <span id="total_amount" class="price" style="color:black" ></span></p>
      
    </div>
    <center><h3 >Total items in the cart: <%=itemCount %>
      </h3></center>
      <input type="hidden" value="<%=itemCount %>" name="quantity" >
    
     
  </div>
  
</div>







	
	
	
	
	
	
	


</form>


<script>

var order_no=document.getElementById("order_no").value;
var total=document.getElementById("total").value;
console.log(total)
let total_order_no = document.getElementById("total_order_no").innerText=order_no;
			console.log(total_order_no)
let total_amount = document.getElementById("total_amount").innerText=total;
			console.log(total_amount)

</script>



</body>
</html>