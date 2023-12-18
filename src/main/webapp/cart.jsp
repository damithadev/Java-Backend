<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/18/2023
  Time: 3:07 PM
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


<!-- cart item details -->


<div class="small-container cart-page">
    <table>
        <tr>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <tr>
            <td>

                <div class="cart-info">
                    <img src="images/buy-1.jpg" alt="">
                    <div>
                        <p>Cheese</p>
                        <small>Price:20$</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1"></td>
            <td>$250</td>
        </tr>
        <tr>
            <td>

                <div class="cart-info">
                    <img src="images/p01.jpeg" alt="">
                    <div>
                        <p>Cheese</p>
                        <small>Price:20$</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1"></td>
            <td>$250</td>
        </tr>
        <tr>
            <td>

                <div class="cart-info">
                    <img src="images/p02.jpeg" alt="">
                    <div>
                        <p>Cheese</p>
                        <small>Price:20$</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1"></td>
            <td>$250</td>
        </tr>
        <tr>
            <td>

                <div class="cart-info">
                    <img src="images/p04.jpeg" alt="">
                    <div>
                        <p>Cheese</p>
                        <small>Price:20$</small>
                        <br>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1"></td>
            <td>$250</td>
        </tr>
    </table>

    <div class="total-price">
        <table>
            <tr>
                <td>Subtotal</td>
                <td>$200</td>
            </tr>
            <tr>
                <td>Tax</td>
                <td>$10</td>
            </tr>
            <tr>
                <td>Total</td>
                <td>$300</td>
            </tr>
        </table>
    </div>
</div>

<!-- footer -->
<%@ include file="Components/footer.jsp" %>



<!-- Js for toggle menu -->
<script src="script.js"></script>

</body>
</html>
