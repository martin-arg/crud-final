<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/css/styles.css" rel="stylesheet">
    <title>Bienvenido</title>
</head>
<body class="d-flex flex-column h-100">

<header>
    <nav class="navbar navbar-expand-lg navbar-light text-white  bg-dark bg-gradient mt-3">
        <div class="container">
            <div class="collapse navbar-collapse justify-content-end" id="navbarText">
                <%
                    if (session.isNew()) {
                        session.setAttribute("islogin", false);
                    }
                    boolean isLogged = (boolean) session.getAttribute("islogin");

                    if (isLogged) {
                %>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="/view/inicio">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="/view/user">Volver su perfil</a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link text-white" href="/view/registrar#">Agregar cliente</a>--%>
<%--                    </li>--%>
                   <li class="nav-item">
                        <a class="nav-link text-white" href="/user/logout">Cerrar Sesión</a>
                    </li>
                </ul>
                <%
                } else {
                %>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="/view/inicio">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="/view/login">Ingresa al sistema</a>
                    </li>

                </ul>
                <%
                    }
                %>
            </div>
        </div>
    </nav>
</header>

<main class=" d-flex flex-column vh-100 align-items-center justify-content-center bg-primary" style="--bs-bg-opacity: .1;">