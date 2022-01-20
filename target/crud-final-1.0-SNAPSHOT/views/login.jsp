<%--
  Created by IntelliJ IDEA.
  User: marti
  Date: 20/1/2022
  Time: 00:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="POST" action="../userController">
    <div>
        <label for="user" class="form-label">Usuario</label>
        <input type="text" class="form-control" id="user" name="user" >
        <div class="form-text">Nunca compartiremos sus datos con alguien más.</div>
    </div>
    <div>
        <label for="password" class="form-label">Contraseña</label>
        <input type="password" class="form-control" name="password" id="password">
    </div>
    <div>
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <div>
        <div>
            <button type="submit">Ingresar</button>
        </div>
        <div>
            <a href="./registro.jsp" class="link-primary">No tengo cuenta</a>
        </div>
    </div>
</form>
</body>
</html>
