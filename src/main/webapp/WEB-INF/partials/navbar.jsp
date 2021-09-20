<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <div class="nav navbar-nav navbar-right">
            <form method="GET" action="/search">
                <label for="search">Username</label>
                <input id="search" name="search" type="text">
                <input type="submit">
            </form>
            <form action="/logout">
                <input type="submit" value="logout">
            </form>
        </div>

        <% if (request.getAttribute("username") == null) {
            response.sendRedirect("/profile");
        }
        %>


    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
