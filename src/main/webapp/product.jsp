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
    <script src="https://cdn.tailwindcss.com"></script>
    <title>All Products</title>
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
<%--        <select>--%>
<%--            <option value="">Default Shorting</option>--%>
<%--            <option value="">Short by price</option>--%>
<%--            <option value="">Short by Popularity</option>--%>
<%--            <option value="">Short rating</option>--%>
<%--            <option value="">Short by sale</option>--%>
<%--        </select>--%>
    </div>

    <div id="product-container" class="grid grid-cols-4 mb-20 gap-10">
        <%--        product cards will display here--%>
    </div>

</div>



<!-- footer -->

<%@ include file="Components/footer.jsp" %>


<!-- Js for toggle menu -->
<script src="script.js"></script>

<script>
// Fetch data from the servlet
fetch('/retrieveProducts')
    .then(response => response.json())
    .then(data => {

        data.forEach(product => {
            const id = product.id;
            const name = product.name;
            const price = product.price;
            const image = product.image;

            const productContainer = document.getElementById('product-container');

            const card = document.createElement('div');
            card.className = 'product-card';

            const productCard =

                `<div class="col-4">
                    <img src="images/`+image+`" alt="">
                    <h4>`+name+`</h4>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <button onclick="addToCart(`+id+`)"><i class="fa-solid fa-cart-shopping cart"></i></button>
                    </div>
                    <p>$`+price+`</p>
                </div>`;

            card.innerHTML = productCard;

            productContainer.appendChild(card);

        });
    })
    .catch(error => {
        console.error('Error fetching data:', error);
    });

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
