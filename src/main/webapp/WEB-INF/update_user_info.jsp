<%--
  Created by IntelliJ IDEA.
  User: oscarsantana
  Date: 9/16/21
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/update_user_info" method="post">

<label for="username">Username</label>
<input id="username" name="username"  type="text"  value="${sessionScope.user.username}">

<label for="email">Email</label>
<input id="email" name="email"  type="text"  value="${sessionScope.user.email}">



<input type="submit" name="editButton" >
</form>
</body>
</html>
