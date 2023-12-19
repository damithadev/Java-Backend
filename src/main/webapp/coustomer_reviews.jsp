<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/18/2023
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="coustomer_reviews.css">
    <title>GREEN Supermarket-Coustomer_Reviews</title>
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
<header>
    <h1>Customer Reviews</h1>
    <p>Welcome to our Customer Reviews page. We appreciate your feedback!</p>
</header>

<section class="reviews-section">
    <article class="review">
        <div class="user-info">
            <img src="images/user-1.png" alt="Customer Photo">
            <p>John Doe</p>
        </div>
        <div class="review-content">
            <p>"Amazing service! The quality of products is outstanding, and the staff is very helpful. I highly
                recommend Green Supermarket."</p>
            <div class="rating">
                <span>&#9733;</span><span>&#9733;</span><span>&#9733;</span><span>&#9733;</span><span>&#9733;</span>
            </div>
        </div>
    </article>

    <!-- Add more reviews as needed -->

</section>

<section class="submit-review-section">
    <h2>Submit Your Review</h2>
    <form action="/addReview" method="post">
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="yourReview">Your Review:</label>
        <textarea id="yourReview" name="yourReview" rows="4" required></textarea>

        <button type="submit">Submit Review</button>
    </form>
</section>





<!-- footer -->

<%@ include file="Components/footer.jsp" %>


<!-- Js for toggle menu -->
<script src="script.js"></script>


<!-- Code injected by live-server -->
<script>
    // <![CDATA[  <-- For SVG support
    if ('WebSocket' in window) {
        (function () {
            function refreshCSS() {
                var sheets = [].slice.call(document.getElementsByTagName("link"));
                var head = document.getElementsByTagName("head")[0];
                for (var i = 0; i < sheets.length; ++i) {
                    var elem = sheets[i];
                    var parent = elem.parentElement || head;
                    parent.removeChild(elem);
                    var rel = elem.rel;
                    if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                        var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                        elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                    }
                    parent.appendChild(elem);
                }
            }
            var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
            var address = protocol + window.location.host + window.location.pathname + '/ws';
            var socket = new WebSocket(address);
            socket.onmessage = function (msg) {
                if (msg.data == 'reload') window.location.reload();
                else if (msg.data == 'refreshcss') refreshCSS();
            };
            if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                console.log('Live reload enabled.');
                sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
            }
        })();
    }
    else {
        console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
    }
    // ]]>
</script>
</body>
</html>
