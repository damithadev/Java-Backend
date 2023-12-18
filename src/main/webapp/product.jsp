<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/18/2023
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="index.css">
    <title>GREEN Supermarket-Products</title>
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


    </div>
</div>

<div class="small-container">
    <div class="row row-2">
        <h2>All Products</h2>
        <select>
            <option value="">Default Shorting</option>
            <option value="">Short by price</option>
            <option value="">Short by Popularity</option>
            <option value="">Short rating</option>
            <option value="">Short by sale</option>
        </select>
    </div>



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

            </div>
            <p>$100</p>
        </div>
    </div>
    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>&#8594;</span>
    </div>

</div>



<!-- footer -->

<%@ include file="Components/footer.jsp" %>


<!-- Js for toggle menu -->
<script src="script.js"></script>
</body>
</html>
