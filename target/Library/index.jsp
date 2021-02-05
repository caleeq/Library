<html>
<title>Welcome</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<script src="http://ajax.microsoft.com/ajax/jquery/jquery-3.5.1.min.js"></script>
<script>const ctx = "${pageContext.request.contextPath}";</script>
<script src="/js/ajax.js"></script>
<body style="background: #f4f4f2">
<section class="section">
    <div class="container">
        <h1 class="title">Hello World!</h1>
        <div class="columns">
            <div class="column">
                <a class="button is-primary" href="${pageContext.request.contextPath}/book/showBook/1">Show All
                    Books</a>
            </div>
            <div class="column">
                <a class="button is-warning" href="${pageContext.request.contextPath}/user/toLogin">Login</a>
            </div>
            <div class="column">
                <a class="button is-danger" href="#">to be add</a>
            </div>
            <div class="column">
                <a class="button is-dark" href="#">to be add</a>
            </div>
            <div class="column">
                <a class="button is-light" href="#">to be add</a>
            </div>
        </div>
    </div>
</section>
</body>
</html>
