<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 1/26/2021
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="body">
<div class="sign-up-form">
    <img src="${pageContext.request.contextPath}/img/user_icon.png">
    <h1> Sign Up Now</h1>
    <form>
        <input type="email" class="input-box" placeholder="Your Email">
        <input type="password" class="input-box" placeholder="Your Password">
        <p><span><input type="checkbox"></span> I agree to the terms of services</p>
        <button type="button" class="button1 signup-btn">Sign up</button>
        <hr>
        <p class="or">OR</p>
        <button type="button" class="button1 twitter-btn">Login with twitter</button>
        <p>Do you have a account ? <a href="#">Sign in</a></p>
    </form>
</div>
</body>
</html>
