<%--
  Created by IntelliJ IDEA.
  User: oscarsantana
  Date: 9/15/21
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Show Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<h1>${ad.title}</h1>
<p>${ad.description}</p>
<p>${user.username}</p>
</body>
</html>
