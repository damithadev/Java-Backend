<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Green Supermarket</title>
  <link rel="stylesheet" href="index.css">
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
          href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300&family=Red+Hat+Display:wght@300&family=Roboto+Serif:opsz@8..144&display=swap"
          rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="header">

  <div class="container">
    <%@ include file="Components/navbar.jsp" %>


    <div class="row">
      <div class="col-2">
        <h1> Green Supermarket<br>Easy Eco-Friendly Shopping</h1>
        <p> Welcome to Green Supermarket, your friendly spot for eco-friendly stuff.<br> We've got all
          the good things that won't mess with the planet.</p>
        <a href="/product.jsp" class="btn">Shop Now &#8594;</a>
      </div>
      <div class="col-2">
        <img src="images/Delivery_car-removebg-preview.png" alt="image1">
      </div>
    </div>

  </div>
</div>

<!-- featured cartegories -->

<div class="categories">
  <div class="small-container">
    <div class="row">
      <div class="col-3">
        <img src="images/p1.jpeg" alt="">
      </div>
      <div class="col-3">
        <img src="images/p2.jpeg" alt="">
      </div>
      <div class="col-3"><img src="images/p3.jpeg" alt="">
      </div>
    </div>
  </div>

</div>

<!-- Products -->

<div class="small-container">
  <h1 class="title">Popular Picks</h1>
  <div class="row">
    <div class="col-4">
      <img src="images/bigonion.jpeg" alt="">
      <h4>Big Onion</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <button onclick="addToCart(9)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$3.22</p>
    </div>

    <div class="col-4">
      <img src="images/broccoli.jpeg" alt="">
      <h4>Broccoli</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
<%--        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>--%>
        <button onclick="addToCart(10)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$5.75</p>
    </div>

    <div class="col-4">
      <img src="images/brinjal.jpeg" alt="">
      <h4>Brinjal</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(11)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$27.65</p>
    </div>

    <div class="col-4">
      <img src="images/corn.jpeg" alt="">
      <h4>Corn</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <button onclick="addToCart(12)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$5.75</p>
    </div>
  </div>
</div>

<div class="small-container" id="Explore_more">

  <h1 class="title">latest Products</h1>
  <div class="row">
    <div class="col-4">
      <img src="images/orange.jpeg" alt="">
      <h4>Orange</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(1)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$2.57</p>
    </div>

    <div class="col-4">
      <img src="images/pumpkin.jpeg" alt="">
      <h4>Pumpkin</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(2)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$7.7</p>
    </div>

    <div class="col-4">
      <img src="images/grapes.jpeg" alt="">
      <h4>Grapes</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(3)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$2.24</p>
    </div>

    <div class="col-4">
      <img src="images/banana.jpeg" alt="">
      <h4>Banana</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(4)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$3.53</p>
    </div>
  </div>

  <div class="row">
    <div class="col-4">
      <img src="images/meat.jpeg" alt="">
      <h4>Meat</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(5)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$10.23</p>
    </div>

    <div class="col-4">
      <img src="images/buns.png" alt="">
      <h4>Buns</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(6)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$7.5</p>
    </div>

    <div class="col-4">
      <img src="images/cheese.jpeg" alt="">
      <h4>Cheese</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(7)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$4.33</p>
    </div>

    <div class="col-4">
      <img src="images/egg.jpeg" alt="">
      <h4>Egg Pack</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <button onclick="addToCart(8)"><i class="fa-solid fa-cart-shopping cart"></i></button>
      </div>
      <p>$4.25</p>
    </div>
  </div>

</div>

<%--Offer Section start--%>
<div class="offer">
  <div class="small-container">
    <div class="row">
      <div class="col-2">
        <img src="images/honey_in_jar-removebg-preview.png" alt="" class="offer">
      </div>

      <div class="col-2 pl-10">
        <h2>Honey Harvest Special</h2>
        <samp>Sweeten the deal with our exclusive Honey Harvest Special!</samp><br>
          <p>
          Dive into the pure,natural goodness of our golden honey at an unbeatable price. Indulge in the richness of
          nature's delight with this limited-time offer – because every drop is a taste of sweet
          perfection.</p>
        <a href="/product.jsp">
        <button class="px-7 mt-8 rounded-2xl py-2 bg-[#641c27] hover:bg-[#641c27] text-white">Buy Now &#8594; </button></a>
      </div>
    </div>
  </div>
</div>




<!-- testimonial -->
<div class="testimonial">
  <div class="small-container">
    <div class="row">

      <div class="col-3">
        <i class="fa-solid fa-truck fa-3x pt-10"></i>
       <h4 class="mt-5 mb-8 font-semibold">Free Delivery up to 5000 </h4>
        <p class="pb-8">Elevate your shopping experience with Green Supermarket – relish the convenience of complimentary doorstep delivery on orders over 5000, enhancing your healthy lifestyle effortlessly.</p>
      </div>

      <div class="col-3">
        <i class="fa-solid fa-percent fa-3x pt-10"></i>
        <h4 class="mt-5 mb-8 font-semibold">More Discounts </h4>
        <p class="pb-8"> Unlock a world of savings at Green Supermarket Ecommerce Platform! Enjoy more discounts on eco-friendly products, bringing sustainability and affordability together.</p>
      </div>

      <div class="col-3">
        <i class="fa-solid fa-leaf fa-3x pt-10"></i>
        <h4 class="mt-5 mb-8 font-semibold">Fresh Items</h4>
        <p class="pb-8">Indulge in a feast for the senses with Green Supermarket's Ecommerce Platform, where freshness meets convenience. Explore a bounty of farm-to-table goodness today.</p>
      </div>

    </div>
  </div>
</div>











<!-- brands -->
<div class="brands">
  <div class="small-container">
    <div class="row">
      <div class="col-5">
        <img src="images/brand_01-removebg-preview.png" alt="">
      </div>
      <div class="col-5">
        <img src="images/brand_04-removebg-preview.png" alt="">
      </div>
      <div class="col-5">
        <img src="images/brand_03-removebg-preview.png" alt="">
      </div>
      <!-- <div class="col-5">
      <img src="images/brand_05-removebg-preview.png" alt="">
  </div> -->
      <div class="col-5">
        <img src="images/brand_02-removebg-preview.png" alt="">
      </div>

    </div>
  </div>
</div>

<!-- footer -->

<%@ include file="Components/footer.jsp" %>


<!-- Js for toggle menu -->
<script src="script.js"></script>

<script>

  function addToCart(productId) {
    let cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    const existingItem = cartItems.find(item => item.productId === productId);

    if (existingItem) {
      existingItem.quantity++;
    } else {
      cartItems.push({ productId, quantity: 1 });
    }
    localStorage.setItem("cart", JSON.stringify(cartItems));
     alert("Product added to cart!");
  }
</script>
</body>
</html>