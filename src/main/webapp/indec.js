

let Icon = document.getElementById("search-icon");
let Search = document.getElementById("search-Bar");

let Icon2 = document.getElementById("shopping-icon");
let shopping_cart = document.querySelector(".shopping-cart");

let Icon3 = document.getElementById("logon-icon");
let login = document.querySelector(".login-page");
console.log(login);

let Icon4 = document.getElementById("bars-icon");
let nav_bar = document.querySelector(".header-nav")

Icon.addEventListener("click" , function(){
    // Search.style.display = "block"
    Search.classList.toggle("active");
    shopping_cart.classList.remove("active");
    login.classList.remove("active");
    nav_bar.classList.remove("active");
});

Icon2.addEventListener("click", function(){
    shopping_cart.classList.toggle("active");
    Search.classList.remove("active");
    login.classList.remove("active");
    nav_bar.classList.remove("active");
});

Icon3.addEventListener("click", function(){
    login.classList.toggle("active");
    Search.classList.remove("active");
    shopping_cart.classList.remove("active");
    nav_bar.classList.remove("active");
});

Icon4.addEventListener("click", function(){
  nav_bar.classList.toggle("active");
  Search.classList.remove("active");
  shopping_cart.classList.remove("active");
  login.classList.remove("active");

})



var swiper = new Swiper(".product-slider", {
    loop:true,
    spaceBetween: 20,
  autoplay:{
    delay: 7500,
    disableOnInteraction: false,
  },
    breakpoints: {
      0: {
        slidesPerView: 1,
        
      },
      500: {
        slidesPerView: 2,
        
      },
      1024: {
        slidesPerView: 3,
      },
    },
  });

