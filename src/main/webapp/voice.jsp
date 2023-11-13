<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <style>
*,*:after,*:before{
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
}
body{
	font-family: arial;
	font-size: 16px;
	margin: 0;
	background:linear-gradient(to right bottom, #d13cff, #031f6a);
	color: #000;
	
	display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
}

.voice_to_text{
  width: 600px;
  text-align: center;
}
h1{
	color: #fff;
	font-size: 50px;
}
#convert_text{
  width: 100%;
  height: 200px;
  border-radius: 10px;
  resize: none;
  padding: 10px;
  font-size: 20px;
  margin-bottom: 10px;
}
button{
	padding: 12px 20px;
  background: #0ea4da;
  border: 0;
  color: #fff;
  font-size: 18px;
  cursor: pointer;
  border-radius: 5px;
}


</style> -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>














	<!-- <div class="voice_to_text"> 
		<h1>Voice to Text Converter</h1>
		
    <textarea name="" id="convert_text"></textarea>
    <button id="click_to_record">Voice To Text</button>
  </div>



<script>

click_to_record.addEventListener('click',function(){
    var speech = true;
    window.SpeechRecognition = window.webkitSpeechRecognition;

    const recognition = new SpeechRecognition();
    recognition.interimResults = true;

    recognition.addEventListener('result', e => {
        const transcript = Array.from(e.results)
            .map(result => result[0])
            .map(result => result.transcript)
            .join('')

        document.getElementById("convert_text").innerHTML = transcript;
        console.log(transcript);
    });
    
    if (speech == true) {
        recognition.start();
    }
})
</script>
 -->
 
 <button id="startButton">Start Listening</button>
    <input type="text" id="output" readonly>

    <script>
        // Check if the browser supports the Web Speech API
        if ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window) {
            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();

            // Define a function to handle recognition results
            recognition.onresult = function (event) {
                const result = event.results[0][0].transcript;
                const output = document.getElementById('output');
                output.value = result;
            };

            const startButton = document.getElementById('startButton');
            startButton.addEventListener('click', function () {
                recognition.start();
                startButton.textContent = 'Listening...';
            });

            recognition.onend = function () {
                startButton.textContent = 'Start Listening';
            };
        } else {
            alert('Speech recognition is not supported in this browser.');
        }
    </script>
 




</body>
</html>