<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="stylesheet" href="index.css">
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
        <a href="#Explore_more" class="btn">Explore Now &#8594;</a>
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
      <img src="images/p01.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/p02.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/p03.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>
      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/p04.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>
  </div>
</div>

<div class="small-container" id="Explore_more">

  <h1 class="title">latest Products</h1>
  <div class="row">
    <div class="col-4">
      <img src="images/p05jpeg.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/p06.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/mushroom.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/banana.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>
  </div>

  <div class="row">
    <div class="col-4">
      <img src="images/latest p1.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/latest_p2-removebg-preview.png" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/latest p3.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>

    <div class="col-4">
      <img src="images/latest p4.jpeg" alt="">
      <h4>Product 1</h4>
      <div class="rating">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <i class="fa-regular fa-star"></i>
        <a href=""><i id="cart" class="fa-solid fa-cart-shopping"></i></a>

      </div>
      <p>$100</p>
    </div>
  </div>

</div>

<div class="offer">
  <div class="small-container">
    <div class="row">
      <div class="col-2">
        <img src="images/honey_in_jar-removebg-preview.png" alt="" class="offer">
      </div>
      <div class="col-2">
        <h2>Honey Harvest Special</h2>

        <small><samp>Sweeten the deal with our exclusive Honey Harvest Special!</samp><br> Dive into the
          pure,natural goodness of our golden honey at an unbeatable price. Indulge in the richness of
          nature's delight with this limited-time offer – because every drop is a taste of sweet
          perfection.</small>
        <a href="" class="btn">Buy Now &#8594;</a>
      </div>
    </div>
  </div>
</div>

<!-- testimonial -->


<div class="testimonial">
  <div class="small-container">
    <div class="row">
      <div class="col-3">
        <i class="fa fa-quote-left"></i>
        <p>Step into the world of sweetness with our Honey Harvest Special. We believe in the power of pure,
          natural honey to transform everyday moments into extraordinary experiences.</p>
        <div class="rating">
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
        </div>
        <img src="images/user-1.png" alt="">
        <h3>User 01</h3>

      </div>

      <div class="col-3">
        <i class="fa fa-quote-left"></i>
        <p>Step into the world of sweetness with our Honey Harvest Special. We believe in the power of pure,
          natural honey to transform everyday moments into extraordinary experiences.</p>
        <div class="rating">
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
        </div>
        <img src="images/user-2.png" alt="">
        <h3>User 02</h3>

      </div>

      <div class="col-3">
        <i class="fa fa-quote-left"></i>
        <p>Step into the world of sweetness with our Honey Harvest Special. We believe in the power of pure,
          natural honey to transform everyday moments into extraordinary experiences.</p>
        <div class="rating">
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
        </div>
        <img src="images/user-3.png" alt="">
        <h3>User 03</h3>

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

</body>
</html>