<%@ page import="database.UserDAO" %>
<%@ page import="model.User" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./partials/header.jsp" %>
<main class="container d-flex flex-column align-items-center gap-2 justify-content-center" >



<p>Bienvenido al sistema</p>
<p>
    <% String nombreUsuario = (String) session.getAttribute("userName");
    out.println("Bienvenido "+ nombreUsuario);
    %>
</p>






</main>
<%@include file="./partials/footer.jsp" %>