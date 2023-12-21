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
    <title>Cart</title>
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
<%
    HttpSession checkEmail = request.getSession();

    String userEmail = (String) checkEmail.getAttribute("userEmail");
%>
<div class="header">

    <div class="container">
        <%@ include file="Components/navbar.jsp" %>
    </div>
</div>


<!-- cart item details -->


<div class="small-container cart-page">
    <table>
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
        </thead>
        <tbody id="cartContainer">

        </tbody>
    </table>


<%--    Total values--%>
    <div class="total-price">
        <table>
            <tr>
                <td>Total</td>
                <td id="totalBill">Null</td>
            </tr>
            <tr>
                <td>Tax</td>
                <td>$15</td>
            </tr>
            <tr>
                <td>Bill With tax</td>
                <td id="billWithTax">Null</td>
            </tr>
            <tr>
                <td></td>
                <td><button <% if (userEmail == null) { %>disabled<% } %> id="checkoutButton" class="<% if (userEmail == null) { %>hover:bg-gray-500 cursor-not-allowed<% } %> mt-5 py-3 px-20 bg-[#641c27] text-white">Checkout</button></td>
            </tr>
            <tr>
                <td colspan="2">
                    <% if (userEmail == null) { %>
                    <p class="text-red-500 text-sm">Please <a href="/account.jsp"> <u><strong>login</strong></u></a> to the system before placing the order.</p>
                    <% } %>
                </td>
            </tr>
        </table>
    </div>
</div>

<!-- footer -->
<%@ include file="Components/footer.jsp" %>



<!-- Js for toggle menu -->
<script src="script.js"></script>
<script>

    const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    let totalBillAmount = 0;
    let billWithTax = 0;

    const container = document.getElementById('cartContainer');

    Promise.all(cartItems.map(item => {
        let arrayIndex = item.productId - 1;

        return fetch(`/retrieveProducts?id=`+item.productId)
            .then(response => response.json())
            .then(productDetails => {
                const singleProduct = productDetails[arrayIndex];

                if (singleProduct) {
                    const price = singleProduct.price;
                    const quantity = item.quantity;
                    let subTotal = 0;

                    totalBillAmount += price * quantity;

                    subTotal = price * quantity;

                    const cartItemElement = document.createElement('tr');
                    cartItemElement.className = 'cart-item';

                    const cartItemHTML =
                        `    <td>
                                <div class="cart-info">
                                    <img src="images/`+singleProduct.image+`" alt="">
                                    <div>
                                        <p class="pb-3">`+singleProduct.name+`</p>
                                        <small>Price:$`+price+`</small>
                                        <br>
                                        <a href="#" class="pt-3" onclick="removeFromCart(`+item.productId+`)" type="button">Remove</a>
                                    </div>
                                </div>
                            </td>
                            <td>`+quantity+`</td>
                            <td>$`+subTotal+`</td>
                        `;

                    cartItemElement.innerHTML = cartItemHTML;
                    container.appendChild(cartItemElement);
                } else {
                    console.error(`Product with ID `+item.productId+` not found`);
                }
            })
            .catch(error => {
                console.error('Error fetching product details:', error);
            });
    }))
        .then(() => {
            billWithTax = totalBillAmount + 15;
            document.getElementById('totalBill').innerText = `$ `+totalBillAmount.toFixed(2);
            document.getElementById('billWithTax').innerText = `$ `+billWithTax.toFixed(2);
        })
        .catch(error => {
            console.error('Error fetching product details:', error);
        });


    function removeFromCart(productId) {
        let cartItems = JSON.parse(localStorage.getItem("cart")) || [];
        const productIndex = cartItems.findIndex(item => item.productId === productId);

        if (productIndex !== -1) {
            cartItems.splice(productIndex, 1);
            localStorage.setItem("cart", JSON.stringify(cartItems));
            alert("Product removed from cart!");
            location.reload();
        } else {
            alert("Product not found in cart!");
        }
    }

    function getOrderDetails() {
        return cartItems.map(item => ({ productId: item.productId, quantity: item.quantity }));
    }

    function checkout() {
        const orderDetails = getOrderDetails();

        if (orderDetails.length === 0) {
            alert('Your cart is empty. Add items before checking out.');
            return;
        }

        console.log(orderDetails)
        fetch('/orderDetails', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ orderDetails }),
        })
            .then(response => {
                if (response.ok) {
                    console.log('Order placed successfully!');
                    localStorage.removeItem('cart');
                    localStorage.setItem('payment', totalBillAmount);
                    window.location.href = 'pay.jsp';
                } else {
                    console.error('Error placing order:', response.statusText);
                }
            })
            .catch(error => {
                console.error('Error during fetch:', error);
            });
    }

    document.getElementById('checkoutButton').addEventListener('click', checkout);


</script>
</body>
</html>
