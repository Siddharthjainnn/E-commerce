
let hour = document.getElementById("hours");
let min = document.getElementById("min");
let second = document.getElementById("sec");

// console.log(se)

function Timer () {

    let date = new Date();

    let hh = date.getHours();
    let mm = date.getMinutes();
    let ss = date.getSeconds();
    
    // console.log(hh)
    // console.log(mm)

    let hRotetion = 30*hh + mm*0.25;
    let mRotetion = 6*mm;  
    let sRotetion = 6*ss;  

    console.log(hRotetion)
    // console.log(sRotetion)

    hour.style.transform = `rotate(${hRotetion}deg)`;
    min.style.transform = `rotate(${mRotetion}deg)`;
    second.style.transform = `rotate(${sRotetion}deg)`;

    // console.log(hour.style.transform = `rotate(${hRotetion}deg)`)

}
setInterval(Timer, 1000)




// weather

const apiKey = "34eb3b80fded091a175f70e5e59c0805";
// const apiUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&q=";
// const apiUrl = "https://api.openweathermap.org/data/2.5/weather?units=metric&q=";
const apiUrl = "https://api.openweathermap.org/data/2.5/weather?q="

const searchBox = document.querySelector(".search input");
const searchBtn = document.querySelector(".search button");
const weatherIcon = document.querySelector(".weather-icon");


// async function checkWeather (city) {
//     const response = await fetch(apiUrl + city + `$appid=${apiKey}`);
//     // var data = await response.json();
//     // console.log ( data);

//     if (response.status == 404){
//         document.querySelector(".error").style.display = "block";
//         document.querySelector(".weather").style.display = "none";
//     }
//     else{
//         var data = await response.json();
//      console.log ( data);
//     }
// }
// checkWeather("indor")


async function checkWeather(city) {

    const response = await fetch(apiUrl + city + `&appid=${apiKey}&units=metric`);
    // var data = await response.json();
    //     console.log(data);

    if (response.status == 404) {
        document.querySelector(".error").style.display = "block";
        document.querySelector(".weather").style.display = "none";
    }
    
    else {
        var data = await response.json();
        console.log(data);

        document.querySelector(".city").innerHTML = data.name;
        document.querySelector(".temp").innerHTML = Math.round(data.main.temp) + "°C";
        document.querySelector(".humidity").innerHTML = data.main.humidity + "%";
        document.querySelector(".wind").innerHTML = data.wind.speed + " km/h";

        if (data.weather[0].main == "Clouds") {
            weatherIcon.src = "./WeatherImages/clouds.png";
        }
        else if (data.weather[0].main == "Clear") {
            weatherIcon.src = "./WeatherImages/clear.png";
        }
        else if (data.weather[0].main == "Rain") {
            weatherIcon.src = "./WeatherImages/rain.png";
        }
        else if (data.weather[0].main == "Drizzle") {
            weatherIcon.src = "./WeatherImages/deizzle.png";
        }
        else if (data.weather[0].main == "Mist") {
            weatherIcon.src = "./WeatherImages/mist.png";
        }

        document.querySelector(".weather").style.display = "block";
        document.querySelector(".error").style.display = "none";

    }


}
searchBtn.addEventListener("click", () => {
    checkWeather(searchBox.value);
})

//  checkWeather();