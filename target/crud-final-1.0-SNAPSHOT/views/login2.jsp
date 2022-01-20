<%--
    Document   : index
    Created on : 24 dic. 2021, 18:59:36
    Author     : rpv15
--%>

<%@include file="/views/partials/header.jsp"%>

<div class="container">

        <span class="border border-white">
            <h2>Log In</h2>
        </span>

    <form method="POST" action="./user/login">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Ingrese su nombre de usuario" required="true">
            <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
        </div>
        <br>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese su contraseña" required="true">
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Log In</button>
        <a href="/views/register.jsp" type="button" class="btn btn-link">Register</a>
    </form>

</div>

<%@include file="/views/partials/footer.jsp"%>

