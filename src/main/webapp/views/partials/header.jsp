<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Bienvenido</title>
</head>
<body id="main-body">

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
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
                    <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/clientes/listar">Listar clientes</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/view/registrar#">Agregar cliente</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/clientes/modificar">Modiifiicar cliente</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/clientes/borrar">Borrar cleinte</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/user/logout">Cerrar Sesión</a>
                    </li>
                    </ul>
                    <%
                    } else {
                    %>
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="views/login.jsp">Ingresa al sistema</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Institucional</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contacto</a>
                        </li>
                    </ul>
                    <%
                        }
                    %>
            </div>
        </div>
    </nav>
</header>