<%--
  Created by IntelliJ IDEA.
  User: marti
  Date: 20/1/2022
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>

<%@page import="model.User" %>
<%@ page import="database.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>Entro</title>
</head>
<body>
<h1>Metodos para obetener infomarcion</h1>
<h2> usando session</h2>
<%  UserDAO userDB = new UserDAO();
    User user = (User) session.getAttribute("user");
    String usuario = user.getEmail();
    String clave = user.getPassword();
    boolean login = userDB.login(usuario, clave);
%>
<h3><% out.println("Bienvenido: " + usuario); %></h3>
<h4><% out.println("Tenes la password: " + clave); %></h4>


<p>

<% if (login) {
%>
<h4> Esta logueado</h4>
<%
} else {
%>
<h4> No esta logueado</h4>
<%
}
%>
</p>

</body>
</html>
