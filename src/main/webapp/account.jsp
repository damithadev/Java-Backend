<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/18/2023
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
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
    </div>
</div>


<!-- account-page -->
<div class="accont-page">
    <div class="container">
        <div class="row">
            <div class="col-2">
                <img src="images/logo_logging-removebg-preview.png" alt="" width="80%">
            </div>
            <div class="col-2">
                <div class="form-container">
                    <div class="form-btn">
                        <span onclick="Login()">Login</span>
                        <span onclick="Register()">Register</span>
                        <hr id="indicator">
                    </div>
                    <form action="/login" method="post" id="LoginForm">
                        <input type="text" name="emaill" id="emaill" placeholder="Email">
                        <input type="password" name="passwordd" id="passwordd" placeholder="Password">
                        <button type="submit" class="btn">Login</button>
                        <a href="">Forgot Password</a>
                    </form>

                    <form action="/register" method="post" id="RegForm">
                        <input type="text" name="name" id="name" placeholder="Full Name">
                        <input type="email" name="email" id="email" placeholder="Email">
                        <input type="password" name="password" id="password" placeholder="Password">
                        <button type="submit" class="btn">Register</button>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- footer -->

<%@ include file="Components/footer.jsp" %>

<!-- Js for toggle menu -->
<script src="script.js"></script>


<!-- js for toggle form -->


<script>
    var LoginForm = document.getElementById("LoginForm");
    var RegForm = document.getElementById("RegForm");
    var indicator = document.getElementById("indicator");

    function Register() {
        RegForm.style.transform = " translateX(0px)"
        LoginForm.style.transform = " translateX(0px)"
        indicator.style.transform = " translateX(100px)"
    }

    function Login() {
        RegForm.style.transform = " translateX(300px)"
        LoginForm.style.transform = " translateX(300px)"
        indicator.style.transform = " translateX(0px)"
    }

</script>
</body>
</html>
