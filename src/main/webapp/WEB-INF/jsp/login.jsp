<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 1/26/2021
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Sign In</title>
    <link rel="stylesheet" href="${ctx}/css/style.css">
    <script src="http://ajax.microsoft.com/ajax/jquery/jquery-3.5.1.min.js"></script>
    <script src="/js/login.js"></script>
</head>
<body class="body">
<div class="sign-up-form">
    <img src="${ctx}/img/user_icon.png">
    <h1> Sign Up Now</h1>
    <form action="${ctx}/user/login" method="post">
        <input type="text" name="username" class="input-box" placeholder="Your Username" required">
        <span class="msg" style="color: crimson; font-size: small">${msg}</span>
        <input type="password" name="password" class="input-box" placeholder="Your Password" required>
        <p><span><input type="checkbox"></span> remember me</p>
        <button type="submit" class="button1 signup-btn">Sign up</button>
        <hr>
        <p class="or">OR</p>
        <button type="button" class="button1 twitter-btn">Login with twitter</button>
        <p>Do you have a account ? <a href="${ctx}/user/toSignup">Sign in</a></p>
    </form>
</div>
</body>
</html>
