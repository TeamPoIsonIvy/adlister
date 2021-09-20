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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Title</title>


</head>
<body>
<form style="width: 549px;margin-left: 50px;" action="/update_user_info" method="post">
    <div class="col-md-8" style="width: 512px;padding-right: -1px;padding-left: 0px;">
        <h1 style="font-size: 20px;"><i class="icon-user" style="margin-right: 8px;color: #00baff;"></i>Account
            information</h1>
        <hr/>
        <div class="form-group">
            <label for="username">Username</label>
            <input class="border rounded-0 form-control" id="username" type="text" name="username"
                                       style="margin-bottom: 15px;" value="${sessionScope.user.username}"/>
            <label for="email">Email</label>
            <input  class="border rounded-0 form-control" id="email" type="email" name="email" style="margin-bottom: 15px;"
                    value="${sessionScope.user.email}"/>
            <input  class="border rounded form-control" type="submit" name="editButton"
                style="margin-top: 15px;background-color: #00baff;color: rgb(255,255,255);" />
        </div>
    </div>
</form>
</body>
</html>
