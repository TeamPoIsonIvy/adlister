<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 9/14/21
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>



<form method="POST" action="/search">

    <label for="username">Username</label>
    <input id="username" name="searchByTerm" type="text">
    <br>
    <input type="submit">
</form>

<c:choose>

<c:when test="${Ads.isEmpty()}">
    <h2>No Ads to view.</h2>
</c:when>

<c:otherwise>
<c:forEach var="Ad" items="${Ads}">
    <div class="Ad">
        <h3>${ads.title}</h3>
        <p>${ads.description}</p>
    </div>
    </c:forEach>
</c:otherwise>

</c:choose>

</body>
</html>
