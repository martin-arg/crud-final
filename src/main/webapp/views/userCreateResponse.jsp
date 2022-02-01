<<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./partials/header.jsp" %>
<%
boolean seCreo = (boolean) session.getAttribute("createMessage");
if (seCreo) {
    %>
<h1>El usuario se creo exitosamente </h1>
<a class="nav-link" href="/view/login">Ir al Login</a>
<%
    } else {
%>
<h1>El usuario no se pudo crear, prueba nuevamente.</h1>
<a class="nav-link" href="/view/registrar">Ir al Login</a>
<%
}
%>

<%@include file="./partials/footer.jsp" %>