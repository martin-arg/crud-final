<%--
  Created by IntelliJ IDEA.
  User: marti
  Date: 20/1/2022
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>Entro</title>
</head>
<body>
<h1>Acceso garantizado</h1>
<h2><% User user = (User) session.getAttribute("user");
    out.println("Bienvenido: " + user.getUser()); %></h2>
</body>
</html>
