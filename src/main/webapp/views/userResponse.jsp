<<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./partials/header.jsp" %>
<%
String mensaje = (String) session.getAttribute("mensaje");
%>
<h1><%out.println(mensaje);%></h1>
<a class="nav-link" href="/view/user">Volver al perfil</a>


<%@include file="./partials/footer.jsp" %>