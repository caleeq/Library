<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 2/4/2021
  Time: 2:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <script src="http://ajax.microsoft.com/ajax/jquery/jquery-3.5.1.min.js"></script>
    <script src="/js/login.js"></script>
</head>
<body style="background: #f4f4f2">
<section class="section">
    <div class="level">
        <div class="level-item">
            <div class="column is-2">
                <div class="field">
                    <form action="${ctx}/user/signup" method="post">
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="text" name="userName" class="input" placeholder="UserName" required>
                                <span class="icon is-left">
                            <i class="ion-person"></i>
                        </span>
                            </div>
                        </label>
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="password" name="passWord" class="input" placeholder="PassWord" required>
                                <span class="icon is-left">
                            <i class="ion-locked"></i>
                        </span>
                            </div>
                        </label>
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="text" name="gender" class="input" placeholder="Gender" required>
                                <span class="icon is-left">
                            <i class="ion-female"></i>
                        </span>
                            </div>
                        </label>
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="email" name="email" class="input" placeholder="Email address" required>
                                <span class="icon is-left">
                            <i class="ion-email"></i>
                        </span>
                            </div>
                        </label>
                        <label class="label">
                            <div class="control has-icons-left">
                                <input type="tel" name="phone" class="input" placeholder="Phone number" required>
                                <span class="icon is-left">
                            <i class="ion-ios-telephone"></i>
                        </span>
                            </div>
                        </label>
                        <input type="hidden" name="admin" class="input" value="0" readonly>
                        <div class="field">
                            <div class="control">
                                <label class="checkbox">
                                    <input type="checkbox" name="terms">
                                    I agree to the <a href="#">terms and conditions</a>
                                </label>
                            </div>
                        </div>
                        <div class="field is-grouped">
                            <div class="control">
                                <button type="submit" class="button is-link" name="signup" disabled>Submit</button>
                            </div>
                            <div class="control">
                                <button type="reset" class="button is-link is-light">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="level-item" id="terms">
        <div class="column is-6">
            <article class="message is-info">
                <div class="message-header">
                    <p>Terms and conditions</p>
                    <button class="delete" aria-label="delete"></button>
                </div>
                <div class="message-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>,
                    tempus
                    quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida
                    purus
                    diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis
                    lectus.
                    Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna
                    a
                    neque.
                    Donec dui urna, vehicula et sem eget, facilisis sodales sem.
                </div>
            </article>
        </div>
    </div>
    </div>
</section>
</body>
</html>
