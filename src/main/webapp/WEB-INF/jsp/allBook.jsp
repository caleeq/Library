<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 1/23/2021
  Time: 1:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>All Book</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <script src="http://ajax.microsoft.com/ajax/jquery/jquery-3.5.1.min.js"></script>
    <script>const ctx = "${pageContext.request.contextPath}";</script>
    <script src="/js/script.js"></script>
</head>
<body>
<section class="section">
    <div class="container">
        <div class="level">
            <div class="level-left">
                <div class="content">
                    <h1 class="title">Welcome</h1>
                    <p class="subtitle">Please enjoy these helpful books.</p>
                </div>
            </div>
        </div>
        <div class="level">
            <div class="level-left">
                <a class="button is-success" href="${ctx}/book/toAddBook">Add Book</a>
            </div>
            <div class="level-right">
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" class="field">
                    <div class="field has-addons">
                        <div class="control">
                            <input id="test" oninput="ajax()" type="text" class="input" name="queryBookName" placeholder="book name">
                        </div>
                        <div class="control">
                            <button class="button is-link" type="submit">Search</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="hero">
            <div class="level">
                <div class="level-item">
                    <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Counts</th>
                            <th>Detail</th>
                            <th>Edit</th>
                        </tr>
                        </thead>
                        <tbody id="tbody">
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>
                                    <div class="tags has-addons">
                                        <a class="tag is-info is-light" title="update" href="${ctx}/book/toUpdate/${book.bookID}"><i class="ion-edit"></i></a>
                                        <a class="tag is-delete" title="delete"
                                           href="javascript:if(confirm('Confirm to delete ?'))location='${ctx}/book/deleteBook/${book.bookID}'"></a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="level">
                <div class="level-item">
                    <span class="subtitle is-warning">${error}</span>
                </div>
            </div>
        </div>

        <c:if test="${error!='No Result' && pageCount>1}">
            <div class="level">
                <div class="level-item">
                    <nav class="pagination is-centered is-small" role="navigation">
                        <c:if test="${pageNow!=1}">
                            <a class="pagination-previous" title="Previous page" href="/book/showBook/${pageNow-1}">&lt;</a>
                        </c:if>
                        <c:if test="${pageNow!=pageCount}">
                            <a class="pagination-next" title="Next page" href="/book/showBook/${pageNow+1}">&gt;</a>
                        </c:if>
                        <ul class="pagination-list">
                            <li><a class="pagination-link" href="/book/showBook/1">1</a></li>
                            <li><span class="pagination-ellipsis">&hellip;</span></li>
                            <c:if test="${pageNow!=1}">
                                <li><a class="pagination-link" href="/book/showBook/${pageNow-1}">${pageNow-1}</a></li>
                            </c:if>
                            <li><a class="pagination-link is-current" style="cursor:default">${pageNow}</a></li>
                            <c:if test="${pageNow!=pageCount}">
                                <li><a class="pagination-link" href="/book/showBook/${pageNow+1}">${pageNow+1}</a></li>
                            </c:if>
                            <li><span class="pagination-ellipsis">&hellip;</span></li>
                            <li><a class="pagination-link" href="/book/showBook/${pageCount}">${pageCount}</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </c:if>
        <section class="section">
            <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Counts</th>
                    <th>Detail</th>
                </tr>
                </thead>
                <tbody id="list">

                </tbody>
            </table>
        </section>
    </div>
</section>
</body>
</html>
