<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 9/17/21
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<c:choose>
    <c:when test="${errorAlert == 'IncorrectPassword'}">
        <div class="alert">
            <bold>Incorrect Password!</bold>
        </div>
    </c:when>

</c:choose>

</body>
</html>
