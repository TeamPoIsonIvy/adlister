<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 9/15/21
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Ad</title>
</head>

<body>
<form method="POST" action="/update">
    <label for="updateTitle">Title</label>
    <input id="updateTitle" name="updateTitle" type="text" value="${ad.title}">
    <br>
    <label for="updateDescription">Description</label>
    <input id="updateDescription" name="updateDescription" type="text" value="${ad.description}">
    <br>
    <input type="hidden" value="${adId}" name="adId">
    <input type="submit">
</form>

</body>
</html>
