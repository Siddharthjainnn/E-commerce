function talk(){
var know = {
"About us" : "Hello, customer welcome to jain provision  you one time passwordis.,Hello, customer welcome to jain provision  you one time passwordis  ",
"about us" : "Hello, customer welcome to jain provision  ",
"About Delivery" : "Hello, customer welcome to jain provision  you one time passwordis.,Hello, customer welcome to jain provision  you one time passwordis :)",
"about Delivery" : "Hello, customer welcome to jain provision  you one time passwordis.,Hello, customer welcome to jain provision  you one time passwordis.",
"About Customer Service" : "I have my family of 5000 members, i don't have follower ,have supportive Famiy ",
"about Customer Service" : "I have my family of 5000 members, i don't have follower ,have supportive Famiy ",
"About Catigoris" : "Thank You So Much ",
"about Catigoris" : "Thank You So Much ",
"About Adress" : "Okay! Will meet soon..",
"about Adress" : "Okay! Will meet soon..",
"About Timming & days" : "Okay! Will meet soon..",
"about Timming & days" : "Okay! Will meet soon.."
};
var user = document.getElementById('userBox').value;
document.getElementById('chatLog').innerHTML = user + "<br>";
if (user in know) {
document.getElementById('chatLog').innerHTML = know[user] + "<br>";
}else{
document.getElementById('chatLog').innerHTML = "Sorry,I didn't understand <br> please use Question you may ask";
}
}



 /**
 * 
 */