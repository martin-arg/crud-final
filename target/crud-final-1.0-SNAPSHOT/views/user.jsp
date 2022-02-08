<%@ page import="database.UserDAO" %>
<%@ page import="model.User" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="./partials/header.jsp" %>
<main class="container d-flex flex-column align-items-center gap-2 justify-content-center">


    <h1>Bienvenido al sistema</h1>
    <p>
        <% String nombreUsuario = (String) session.getAttribute("userNombre");
            out.println("Bienvenido " + nombreUsuario);
        %>
    </p>


</main>
<%@include file="./partials/footer.jsp" %>