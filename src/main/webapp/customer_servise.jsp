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
    background-color: #f0f0f0;
}

.chat-container {
    max-width: 600px;
    margin: 0 auto;
    border: 1px solid #ccc;
    background-color: white;
    padding: 20px;
}

.chat-log {
    height: 300px;
    overflow-y: scroll;
    border-bottom: 1px solid #ccc;
    margin-bottom: 10px;
}

.user-input input {
    width: 80%;
    padding: 5px;
}

.user-input button {
    padding: 5px 10px;
}
	</style>
	
	
	
</head>
<body>


 <div class="chat-container">
        <div class="chat-log" id="chat-log">
            <!-- Chat messages will be displayed here -->
        </div>
        <div class="user-input">
            <input type="text" id="user-message" placeholder="Type your message...">
            <button id="send-button">Send</button>
        </div>
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
		const chatLog = document.getElementById('chat-log');
		const userMessage = document.getElementById('user-message');
		const sendButton = document.getElementById('send-button');

		sendButton.addEventListener('click', sendMessage);

		function sendMessage() {
		    const message = userMessage.value;
		    if (message.trim() !== '') {
		        displayMessage('You', message);
		        // You can implement chatbot responses here
		        userMessage.value = '';
		    }
		}

		function displayMessage(sender, message) {
		    const messageElement = document.createElement('div');
		    messageElement.classList.add('message');
		    messageElement.innerHTML = `<strong>${sender}HOW CAN I HELP YOU</strong> ${message}`;
		    chatLog.appendChild(messageElement);
		}
		
		</script>
		
</body>
</html>