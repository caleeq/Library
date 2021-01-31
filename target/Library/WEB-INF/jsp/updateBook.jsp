<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 1/23/2021
  Time: 2:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Update Book</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>
<body>
<section class="section">
    <div class="level">
        <div class="level-item">
            <div class="title">
                <h1>Update Book</h1>
            </div>
        </div>
    </div>
    <div class="level">
        <div class="level-item">
            <div class="field">
                <form action="${ctx}/book/updateBook" method="post">
                    <input type="hidden" name="bookID" value="${Qbooks.bookID}" class="input">
                    <div class="content">
                        <label for="bkname" class="label">Book Name:</label>
                        <input type="text" name="bookName" class="input" id="bkname"
                               value="${Qbooks.bookName}"
                               required/>
                    </div>
                    <div class="content">
                        <label for="bkcount" class="label">Book Count:</label>
                        <input type="text" name="bookCounts" class="input" id="bkcount"
                               value="${Qbooks.bookCounts}"
                               required/>
                    </div>
                    <div class="content">
                        <label for="bkdetail" class="label">Book Detail:</label>
                        <input type="text" name="detail" class="input" id="bkdetail" value="${Qbooks.detail}"
                               required/>
                    </div>
                    <div class="field is-grouped">
                        <div class="control">
                            <input type="submit" class="button is-link" value="Update">
                        </div>
                        <div class="control">
                            <a class="button is-link is-light" href="${ctx}/book/showBook/1">Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
