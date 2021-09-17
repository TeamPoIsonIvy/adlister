<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <a href="/update_user_info">Update Profile</a>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <a href="/update?adId=${ad.id}">update</a>
            <a href="/delete?adId=${ad.id}">delete</a>
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
<div>
    <a href="/links"> Your Awesome Link</a>
</div>

</div>
</body>

</html>
