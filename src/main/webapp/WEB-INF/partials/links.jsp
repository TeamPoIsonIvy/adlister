<%--
  Created by IntelliJ IDEA.
  User: kennethvincent
  Date: 9/16/21
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>


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
</div>
<div>
    <h1>Links For Days</h1>

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>

    <a href="https://www.callofduty.com/home"></a>


</div>
</body>
</html>
