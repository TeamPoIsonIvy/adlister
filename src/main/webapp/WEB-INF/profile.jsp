<<<<<<< HEAD

=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> main
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<<<<<<< HEAD
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
<div><h1>Your recent Posts</h1>


=======
<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
<div><h1>Your recent Posts</h1>


>>>>>>> main
</div>
</body>
</html>
