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
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.chat-container {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
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
    background-color: #fff;
    align-self: flex-start;
}

.input-container {
    display: flex;
    justify-content: space-between;
    padding: 10px;
    background-color: white;
    border-top: 1px solid #ccc;
}

#message-input {
    flex-grow: 1;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

#send-button {
    padding: 5px 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#send-button:hover {
    background-color: #0056b3;
}
	
	</style>
	
	
	
</head>
<body>


  <div class="chat-container" id="chat-container"></div>
    <div class="input-container">
        <button class="message-button" data-message="hello">Hello</button>
        <button class="message-button" data-message="how are you">How are you?</button>
        <button class="message-button" data-message="bye">Goodbye</button>
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
		const chatContainer = document.getElementById("chat-container");
		const messageButtons = document.querySelectorAll(".message-button");

		const responses = {
		    "hello": "Hi there!",
		    "how are you": "I'm doing well, thank you!",
		    "bye": "Goodbye! Have a great day.",
		    // Add more customized responses here
		};

		messageButtons.forEach(button => {
		    button.addEventListener("click", () => {
		        const message = button.getAttribute("data-message");
		        appendMessage("You: " + message, "user-message");
		        processResponse(message);
		    });
		});

		function processResponse(message) {
		    const response = responses[message] || "I'm sorry, I don't understand that.";
		    setTimeout(() => {
		        appendMessage("Bot: " + response, "bot-message");
		    }, 500);
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