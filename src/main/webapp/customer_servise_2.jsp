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
<style>
/* body {
    font-family: Arial, sans-serif;
}

.chat-container {
    max-width: 100%;
    margin: 0 auto;
    padding: 20px;
    border: 2px solid black;
   /*  border: 1px solid #ccc; */
border-radius
:
 
20px
;


}
.input-container {
	display: flex;
	margin-top: 10px;
}

#message-input {
	flex-grow: 5;
	padding: 5px;
	height: 1cm;
}

#send-button {
	padding: 5px 10px;
	background-color: green;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 3cm;
}

#send-button:hover {
	background-color: #0056b3;
}

* /
 
 body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.chat-container {
	max-width: 80%;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 25px;
	background-color: white;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.message {
	padding: 10px;
	margin: 5px;
	border-radius: 10px;
}

.user-message {
	background-color: #dcf8c6;
	align-self: flex-end;
}

.bot-message {
	background-color: #D3D3D3;
	align-self: flex-start;
}

.input-container {
	display: flex;
	justify-content: space-between;
	padding: 10px;
	background-color: white;
	border-top: 1px solid #ccc;
	width: 80%;
	margin: 0 auto;
}

#message-input {
	flex-grow: 6;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 25px;
}

#send-button {
	padding: 5px 10px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 25px;
	cursor: pointer;
}

.message-button {
	padding: 10px 20px;
	margin: 5px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

#send-button:hover {
	background-color: #0056b3;
}

.message-button:hover {
	background-color: #0056b3;
}

/* body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
 */
#welcome-heading {
	font-size: 46px;
	text-align: center;
	opacity: 0;
}

.heading {
	font-size: 24px;
	margin-bottom: 20px;
}

.button-group {
	opacity: 0;
	transform: translateY(20px);
	transition: opacity 1s ease-in-out, transform 1s ease-in-out;
}
</style>
</head>
<body>





	<h1 id="welcome-heading">Welcome to BringIt Customer Service</h1>


	<div class="chat-container" id="chat-container">
		<i class="fa-solid fa-user-tie fa-2xl" style="text-align: center;"></i>
	</div>
	<div class="input-container">

		<input type="text" id="message-input"
			placeholder="Type your message...">&nbsp;&nbsp;&nbsp;
		<button id="send-button">Send</button>


	</div>

	<div class="button-group" id="button-group" style="text-align: center;">
		<h1 class="heading">These are some Frequent asked question's by customers</h1>
		<button class="message-button" style="background-color: red;"
			data-response="How can I contact BringIt's customer service?">How
			can I contact BringIt's customer service?</button>
		<button class="message-button"
			data-response="What are your main questions or concerns about [product/service]?" id="Hello-btn">What are your main questions or concerns about [product/service]?
</button>
		<button class="message-button"
			data-response="What can we improve?">What can we improve?</button>
		
		<button class="message-button" style="background-color: yellow;color: black;"
			data-response="what are bringits customer service hours">What
			are BringIt's customer service hours?</button>


		<button class="message-button" style="background-color: red;"
			data-response="How do I know if a product is currently in stock on BringIt?">How
			do I know if a product is currently in stock on BringIt?</button>

<button class="message-button"
			data-response="Are there any shipping fees for my order on BringIt?">Are there any shipping fees for my order on BringIt?</button>


<button class="message-button" style="background-color: yellow;color: black;" data-response="How can I track my order on BringIt?">How can I track my order on BringIt?</button>
<button class="message-button" data-response="Can I cancel an order after it's been placed?">Can I cancel an order after it's been placed?</button>
<button class="message-button" style="background-color: red;" data-response="How does BringIt handle returns and refunds?">How does BringIt handle returns and refunds?</button>
<button class="message-button" data-response="What payment options does BringIt accept?">What payment options does BringIt accept?
</button>
<button class="message-button" data-response="How do I provide feedback about my experience with BringIt customer service?">How do I provide feedback about my experience with BringIt customer service?</button>
<button class="message-button" data-response="How can I change my delivery address for an upcoming order?">How can I change my delivery address for an upcoming order?
</button>
<button class="message-button" style="background-color: yellow;color: black;" data-response="What should I do if an item is missing from my order?">What should I do if an item is missing from my order?
</button>
<button class="message-button" data-response="How quickly can I expect a response from BringIt customer service?">How quickly can I expect a response from BringIt customer service?
</button>
<button class="message-button"  style="background-color: red;" data-response="What if I receive a product that's past its expiration date?">What if I receive a product that's past its expiration date?
</button>
<button class="message-button" data-response="How do I change or modify my payment method for an order?">How do I change or modify my payment method for an order?
</button>
<button class="message-button" data-response="What are the main reasons you chose to shop on BringIt today?">What are the main reasons you chose to shop on BringIt today?
</button>
<button class="message-button" style="background-color: yellow;color: black;" data-response="How did you feel about BringIt customer service?">How did you feel about BringIt customer service?
</button>
<button class="message-button" data-response="Where did you look before coming to BringIt?">Where did you look before coming to BringIt?
</button>
<button class="message-button" style="background-color: red;" data-response="Would you use our [product/service] again?">Would you use our [product/service] again?
</button>
<button class="message-button" data-response="What did you like best about your experience?">What did you like best about your experience?</button>
<button class="message-button" data-response="What can we do to help you find what you're looking for?">What can we do to help you find what you're looking for?</button>

<button class="message-button" style="background-color: yellow;color: black;" data-response="What can we do to help you find what you're looking for?">What can we do to help you find what you're looking for?</button>

 <button class="message-button" data-response="What safety measures does BringIt have for handling my personal and payment information?">What safety measures does BringIt have for handling my personal and payment information?</button>
    <button class="message-button" style="background-color: red;" data-response="Can I save items in my cart for later?">Can I save items in my cart for later?</button>
    <button class="message-button" data-response="Are there any loyalty programs or rewards for frequent shoppers on BringIt ?!">Are there any loyalty programs or rewards for frequent shoppers on BringIt ?!</button>
    <button class="message-button" style="background-color: yellow;color: black;" data-response="What's the process for returning a product I'm not satisfied with BringIt?">Whats the process for returning a product Im not satisfied with BringIt?</button>
    <button class="message-button" data-response="Is it possible to schedule a specific delivery date and time on BringIt?">Is it possible to schedule a specific delivery date and time on BringIt?</button>
    <button class="message-button" style="background-color: red;" data-response="Does BringIt offer international shipping?">Does BringIt offer international shipping?</button>
    <button class="message-button" data-response="Can I change the quantity of items in my order after checkout?">Can I change the quantity of items in my order after checkout?</button>
    <button class="message-button" style="background-color: yellow;color: black;" data-response="Are there any shipping fees for my order on BringIt?">Are there any shipping fees for my order on BringIt?</button>
    <button class="message-button"  data-response="How do I know if a product is currently in stock on BringIt?">How do I know if a product is currently in stock on BringIt?</button>
    
<button class="message-button" style="background-color: red;" data-response="Can I receive notifications when an out-of-stock item becomes available?">Can I receive notifications when an out-of-stock item becomes available?</button>



	</div>













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
	<script>


const buttonGroup = document.getElementById("button-group");

//Wait for the page to load and then start the animation
window.addEventListener("load", () => {
 animateButtonGroup();
});

function animateButtonGroup() {
 buttonGroup.style.opacity = 10;
 buttonGroup.style.transform = "translateY(0)";
}

const welcomeHeading = document.getElementById("welcome-heading");

//Wait for the page to load and then start the animation
window.addEventListener("load", () => {
 animateWelcomeHeading();
});

function animateWelcomeHeading() {
 welcomeHeading.style.opacity = 5;

 welcomeHeading.style.transform = "translateY(0)";
 welcomeHeading.style.transition = "opacity 1s ease-in, transform 1s ease-in";
 setTimeout(() => {
     appendMessage("How can i help you ?");
 }, 1000);
}




const messageButtons = document.querySelectorAll(".message-button");

messageButtons.forEach(button => {
    button.addEventListener("click", () => {
        const response = button.getAttribute("data-response");
      
        appendMessage("You: " + response, "user-message");
        simulateBotResponse(response);
    });
});

function simulateBotResponse(userMessage) {
    console.log(userMessage);
    
    
    
    if(userMessage=="Hello! How can I help you?")
    	{
    botResponse = " This is a response from the bot.";
    	}
    else if(userMessage=="I'm doing well, thank you!"){//for question
    		 botResponse = " This is a response from the vicky jain mmmmm.";//for answer
    	}
   
    else if(userMessage=="what are bringits customer service hours"){//for question
		 botResponse = " BringIt customer service operates during regular business hours, typically from 7:00 AM to 10:00 PM. However, these hours may vary based on your location and the day of the week. It's best to check their website or contact them directly for the most accurate information.";
	}
    else if(userMessage== "How do I know if a product is currently in stock on BringIt?")      
    {
    	botResponse = " You can check the availability of a product by visiting its product page. If the product is in stock, you'll see an  button. If it's out of stock, you'll see an  label or a notification indicating when it's expected to be back in stock.";
    }

     else if(userMessage=="Are there any shipping fees for my order on BringIt?")      
    {
       botResponse = "  Shipping fees may vary based on factors such as the destination, the weight of the items, and the shipping method you choose. During the checkout process, you'll see the applicable shipping fees before confirming your order.";
    }

    else if(userMessage=="Can I change the quantity of items in my order after checkout?")      
    {
       botResponse = " Typically, once an order is placed, you can't change the quantity of items directly. However, you might be able to cancel the order if it hasn't been processed and place a new order with the correct quantity";
    }


    else if(userMessage=="Does BringIt offer international shipping?")      
    {
       botResponse = " no, BringIt offer international shipping to select countries. During the checkout process, you'll be able to see if your country is eligible for shipping and the associated costs.";
    }

    else if(userMessage=="Is it possible to schedule a specific delivery date and time on BringIt?")      
    {
       botResponse = "  Yes, we offer delivery scheduling for your convenience. During checkout, you can select from available delivery time slots that best suit your preferences.";
    }

    else if(userMessage=="What's the process for returning a product I'm not satisfied with BringIt?")      
    {
       botResponse = "  If you're not satisfied with a product, you can initiate a return through your account's  section within the specified return window. Follow the instructions provided to return the item, and once received and inspected, you'll receive a refund or replacement..";
    }

    else if(userMessage=="Are there any loyalty programs or rewards for frequent shoppers on BringIt ?!")      
    {
       botResponse = " Absolutely! We have a loyalty program that rewards our regular customers. As part of the program, you'll enjoy benefits such as exclusive discounts, early access to sales, and more.";
    }


    else if(userMessage=="Can I save items in my cart for later?")      
    {
       botResponse = " Yes, you can! If you're not ready to make a purchase, you can save items in your cart for later. Just make sure you're logged into your account, and the items will be waiting for you when you're ready to complete your order.";
    }

    else if(userMessage=="What safety measures does BringIt have for handling my personal and payment information?")      
    {
       botResponse = " Protecting your information is a priority for us. We use industry-standard encryption and security measures to safeguard your personal and payment data. Our payment processing partners also adhere to strict security protocols.";
    }


    else if(userMessage=="Can I receive notifications when an out-of-stock item becomes available?")      
    {
       botResponse = " Yes, we offer a  feature for out-of-stock items. You can sign up to receive notifications via email when the item is back in stock, so you don't miss out.";
    }
    
    else if(userMessage=="How can I contact BringIt's customer service?")      
    	{
    	   botResponse = " You can contact BringIt's customer service through their website by visiting the  section. You'll find options to reach out via phone, email, or chat. Their customer service representatives are available to assist you with any queries or concerns you may have.";
    	}
    	
    	else if(userMessage=="How can I track my order on BringIt?")      
    	{
    	   botResponse = "You can track your order on BringIt by logging into your account and navigating to the  section. There, you'll find information about your current and past orders, including tracking details. You'll receive updates about your order's status through email and SMS as well.";
    	}
    	else if(userMessage=="Can I cancel an order after it's been placed?")      
    	{
    	   botResponse = "Yes, you can cancel an order on BringIt , but the ability to cancel may depend on the order's status. If your order has not yet been packed, you can cancel it from the section. If the order has already been packed or is out for delivery, you may need to contact customer service to discuss cancellation options.";
    	}

    	else if(userMessage=="How does BringIt handle returns and refunds?")      
    	{
    	   botResponse = " BringIt has a return and refund policy that allows you to return products that are damaged, incorrect, or not as described. You can initiate a return through your account's  section. Once the return is approved, you'll receive a refund to your original payment method.";
    	}


    	else if(userMessage=="What payment options does BringIt accept?")      
    	{
    	   botResponse = "BringIt accepts various payment options, including credit and debit cards, net banking, digital wallets, and UPI payments. Cash on Delivery (COD) is also available for select location."
    	}

    	else if(userMessage=="How do I provide feedback about my experience with BringIt customer service?")      
    	{
    	   botResponse = " BringIt values customer feedback. You can share your feedback about your experience with their customer service by using the feedback forms provided on their website or by contacting them directly via phone or email.";
    	}


    	else if(userMessage=="How can I change my delivery address for an upcoming order?")      
    	{
    	   botResponse = " You can update your delivery address for an upcoming order by BringIt going to the  section on the  website. From there, select the order you want to modify and click on the  button next to the delivery address. Make the necessary changes and save your updated address.";
    	}


    	else if(userMessage=="What should I do if an item is missing from my order?")      
    	{
    	   botResponse = " If an item is missing from your order, you can report it by going to the  section in your account. Select the order with the missing item and click on the  button. Provide details about the missing item, and BringIt customer service will assist you in resolving the issue.";
    	}



    	else if(userMessage=="How quickly can I expect a response from BringIt customer service?")      
    	{
    	   botResponse = "BringIt strives to provide timely responses to customer inquiries. You can typically expect to receive a response within a few hours during their business hours. If your query requires more complex investigation, it might take a bit longer, but they will keep you informed.";
    	}

    	

    	else if(userMessage=="What if I receive a product that's past its expiration date?")    
    	{
    	   botResponse = "If you receive a product that's past its expiration date, you should contact BringIt customer service immediately. They will assist you in arranging a return and refund for the expired item.";
    	}


    	else if(userMessage=="How do I change or modify my payment method for an order?")    
    	{
    	   botResponse = "You can update your payment method for an order by going to the  section in your account settings. Add or select the desired payment method and save the changes. When you proceed to checkout, you'll be able to choose the updated payment method.";
    	}



    	

    	else if(userMessage=="What are the main reasons you chose to shop on BringIt today?")    
    	{
    	   botResponse = "The main reason for choosing BringIt is that it offers a lot of variety and all the items are at affordable prices.";
    	}


    	else if(userMessage=="How did you feel about BringIt customer service?")    
    	{
    	   botResponse = "It was a wonderfull experience with the BringIt Customer services.";
    	}



    	else if(userMessage=="Where did you look before coming to BringIt?")    
    	{
    	   botResponse = "Just used to depend on other e-commerce sites before coming on BringIt.";
    	}


    	else if(userMessage=="Would you use our [product/service] again?")    
    	{
    	   botResponse = "Yes,sure BringIt provides a very good service and all products are also very affordable.";
    	}


    	else if(userMessage=="What did you like best about your experience?")    
    	{
    	  botResponse = "The most pleasing thing about BringIt was it made shopping very hasslefree.";
    	}


    	else if(userMessage=="What can we do to help you find what you're looking for?")    
    	{
    	  botResponse = "Please give the best possible result for the item.";
    	}


    	else if(userMessage=="What are your main questions or concerns about [product/service]?")    
    	{
    	  botResponse = "The main concern is with the quality of the product.";
    	}


    	else if(userMessage=="What can we improve?")    
    	{
    	  botResponse = "BringIt can improve through maintaining the quality of goods and through giveing a better shopping experience.";
    	}


    
     
    
    
   
    	else{
    		botResponse = " This is a response from the siddharth.";
    	}
    
    
    
    
    
    setTimeout(() => {
        appendMessage("Bot: " + botResponse, "bot-message");
    }, 500);
}

function appendMessage(text, className) {
    const messageElement = document.createElement("div");
    messageElement.textContent = text;
    messageElement.classList.add("message", className);
    chatContainer.appendChild(messageElement);
    chatContainer.scrollTop = chatContainer.scrollHeight;
}

  
  const chatContainer = document.getElementById("chat-container");
  const messageInput = document.getElementById("message-input");
  const sendButton = document.getElementById("send-button");
  
  
  const responses = {
		    "hello": "Hi there! How can I assist you?",
		    "how are you": "I'm just a virtual assistant, but I'm here to help!",
		    "how can i contact bringit customer service": "You can contact BringIt's customer service through their website by visiting the  section. You'll find options to reach out via phone, email, or chat. Their customer service representatives are available to assist you with any queries or concerns you may have.",
		    "bye": "Goodbye! Feel free to come back if you have more questions.",
		    
		    "what are bringits customer service hours": "BringIt customer service operates during regular business hours, typically from 7:00 AM to 10:00 PM. However, these hours may vary based on your location and the day of the week. It's best to check their website or contact them directly for the most accurate information.",
		    // Add more customized responses here
		};

  
  sendButton.addEventListener("click", () => {
	    sendMessage();
	});

	messageInput.addEventListener("keyup", (event) => {
	    if (event.key === "Enter") {
	        sendMessage();
	    }
	});

  sendButton.addEventListener("click", sendMessage);
  
  
  function sendMessage() {
      const messageText = messageInput.value.trim().toLowerCase();;
      if (messageText === "") return;

      appendMessage(messageText, "user-message");
      processResponse(messageText);
      messageInput.value = "";
  }

  
 
	

  
  function processResponse(message) {
      // Simulate bot's response (replace with your logic)
      const response = responses[message] || "I'm sorry, I don't understand that.";
      setTimeout(() => {
          appendMessage(  response);
      }, 800);
  }

  function appendMessage(text, className) {
      const messageElement = document.createElement("div");
      messageElement.textContent = text;
      messageElement.classList.add("message", className);
      chatContainer.appendChild(messageElement);
      chatContainer.scrollTop = chatContainer.scrollHeight;
  }

 
 
 
</script>
</body>
</html>