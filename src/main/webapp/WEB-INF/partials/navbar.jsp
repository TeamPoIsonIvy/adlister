<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li><form method="GET" action="/search">

                <label for="search">Username</label>
                <input id="search" name="search" type="text">
                <br>
            </form></li>
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a> </li>
        </ul>


        <% if (request.getAttribute("username") == null) {
            response.sendRedirect("profile");}
        %>

        <form action = "/logout">
            <input type="submit" value="logout">
        </form>



    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>