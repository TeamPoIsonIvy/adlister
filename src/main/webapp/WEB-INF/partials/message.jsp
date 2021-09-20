<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:choose>
    <c:when test="${param.loginError !=null}">
        <div class="alert">
            <strong>Login Error Has Occurred</strong>
        </div>
    </c:when>
</c:choose>


<c:choose>
    <c:when test="${param.createAdError !=null}">
        <div class="alert">
            <strong>Title and/or Description cannot be empty</strong>
        </div>
    </c:when>
</c:choose>











