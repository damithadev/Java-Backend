<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/21/2023
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

    <div class="header">

        <div class="container">
            <%@ include file="Components/navbar.jsp" %>
        </div>
    </div>



    <div class="py-8">
        <div class="container mx-auto z-10">
            <div class="flex flex-col lg:flex-row w-10/12 lg:w-8/12 bg-white rounded-xl mx-auto shadow-lg overflow-hidden">

                <div class="w-full lg:w-2/5 p-2 bg-no-repeat bg-cover bg-center bg-gray-100" >
                    <div class="flex flex-col items-start rounded-xl pt-12 bg-gradient-to-b from-[#641c27] to-[#641c27]/[0.7]">
                        <h1 class="text-white self-center text-center leading-8 text-2xl mt-10 mb-10">Pay with PayPal.</h1>
                        <div class="flex self-center mb-8 mt-2">
                            <img src="images/payment.png" class="h-80" alt="3d cart">
                        </div>
                    </div>
                </div>

                <div class="w-full lg:w-3/5 py-12 px-24 bg-gray-100">
                    <div class="paymentSpace" id="paypalSpace">

                    </div>
                    <script src="https://www.paypal.com/sdk/js?client-id=" data-sdk-integration-source="button-factory"></script>
                </div>
            </div>
        </div>
    </div>



<%--    <div class="min-h-full ">--%>
<%--        <div class="paymentSpace" id="paypalSpace">--%>

<%--        </div>--%>
<%--    </div>--%>

    <!-- footer -->

    <%@ include file="Components/footer.jsp" %>


<!-- Js for toggle menu -->
<script src="script.js"></script>
<script src="https://www.paypal.com/sdk/js?client-id=AQgkuqiGO2AWIiHhFdIks2o6WcKw6E_NBXfZ17KppkB9vPvcdm5OTCAVA1lKps39eqDkS03boqSFstgu&currency=USD" data-sdk-integration-source="button-factory"></script>
<script>
    const retrievedTotalBillAmount = localStorage.getItem('payment');
    paypal.Buttons({
        createOrder: function(data, actions) {
            // Set up the transaction details
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: retrievedTotalBillAmount // Set the amount based on your checkout total
                    }
                }]
            });
        },
        onApprove: function(data, actions) {
            // Redirect to your PayPalServlet with the order ID
            return actions.order.capture().then(function(details) {
                window.location.href = 'paymentStatus?orderID=' + data.orderID;
            });
        }
    }).render('#paypalSpace');
</script>
</body>
</html>
