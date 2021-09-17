<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <div class="nav navbar-nav navbar-right">
            <form action="/search">
                <label for="search">Username</label>
                <input id="search" name="search" type="text">
            </form>
            <form action="/login">
                <input type="submit" value="login">
            </form>
        </div>
    </div>
    </div>
</nav>

<body>

    <div class="container">
        <h1>Welcome to the Adlister!</h1>
    </div>
</body>
</html>
