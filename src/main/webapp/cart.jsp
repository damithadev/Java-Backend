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
        </table>
    </div>
</div>

<!-- footer -->
<%@ include file="Components/footer.jsp" %>



<!-- Js for toggle menu -->
<script src="script.js"></script>
<script>

    // Retrieve cart items from localStorage
    const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    let totalBillAmount = 0;
    let billWithTax = 0;

    const container = document.getElementById('cartContainer');

    // Use Promise.all to wait for all fetch operations to complete
    Promise.all(cartItems.map(item => {
        let arrayIndex = item.productId - 1;

        // Fetch product details from the /retrieveProducts servlet for each item
        return fetch(`/retrieveProducts?id=`+item.productId)
            .then(response => response.json())
            .then(productDetails => {
                const singleProduct = productDetails[arrayIndex]; // getting relevant product details (arrayIndex) by subtracting productId from 1

                if (singleProduct) {
                    const price = singleProduct.price;
                    const quantity = item.quantity;
                    let subTotal = 0;

                    // Update total bill amount
                    totalBillAmount += price * quantity;

                    //create subtotal amount
                    subTotal = price * quantity;

                    // Display product details in your HTML
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

                    // Populate the cart item with product data
                    cartItemElement.innerHTML = cartItemHTML;

                    // Append the cart item to the container
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
            // Display the total bill amount and total product count
            document.getElementById('totalBill').innerText = `$ `+totalBillAmount.toFixed(2);
            document.getElementById('billWithTax').innerText = `$ `+billWithTax.toFixed(2);
        })
        .catch(error => {
            console.error('Error fetching product details:', error);
        });


    function removeFromCart(productId) {
        // Get existing cart items or initialize an empty array
        let cartItems = JSON.parse(localStorage.getItem("cart")) || [];

        // Find the index of the product with the given ID in the cart
        const productIndex = cartItems.findIndex(item => item.productId === productId);

        if (productIndex !== -1) {
            // Remove the product from the cart array
            cartItems.splice(productIndex, 1);

            // Update the cart in localStorage
            localStorage.setItem("cart", JSON.stringify(cartItems));

            // Provide feedback to the user (optional)
            alert("Product removed from cart!");
            location.reload();
        } else {
            // Product not found in the cart
            // You can handle this case as needed
            alert("Product not found in cart!");
        }
    }





    // Assume you have a function to get the product count and details
    function getOrderDetails() {
        // Fetch order details from localStorage or any other source
        return cartItems.map(item => ({ productId: item.productId, quantity: item.quantity }));
    }

    // Function to handle the checkout process
    function checkout() {
        const orderDetails = getOrderDetails();

        // Make sure there are items in the cart before proceeding with checkout
        if (orderDetails.length === 0) {
            alert('Your cart is empty. Add items before checking out.');
            return;
        }

        console.log(orderDetails)
        //Send order details to the backend using fetch API
        fetch('/sendOrderData', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ orderDetails }),
        })
            .then(response => {
                if (response.ok) {
                    // Order was successful, you can handle success accordingly
                    console.log('Order placed successfully!');
                    // Optionally, you can clear the cart after successful order
                    localStorage.removeItem('cart');
                    //set payment amount in localstorage
                    localStorage.setItem('payment', totalBillAmount);
                    // Redirect to payment.jsp
                    window.location.href = 'payment.jsp';
                } else {
                    // Handle errors or failed orders
                    console.error('Error placing order:', response.statusText);
                }
            })
            .catch(error => {
                console.error('Error during fetch:', error);
            });
    }

    // Attach the checkout function to the button click event
    document.getElementById('checkoutButton').addEventListener('click', checkout);


</script>
</body>
</html>
