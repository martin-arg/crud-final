<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./partials/header.jsp" %>
<%@ page import="database.ClientesDAO"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<main class="container d-flex flex-column align-items-center gap-2 justify-content-center" >
<table>
    <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Telefono</th>
        <th>Email</th>
        <th>Compañia</th>
    </tr>
    <%
    ClientesDAO dao = new ClientesDAO();
    List<>
    %>
<c:forEach var="clientesDAO" item="${clientesList}">
<tr>
    <td>${clientesList.getNombre}</td>
    <td>${clientesList.getApellido}</td>
    <td>${clientesList.getTelefono}</td>
    <td>${clientesList.getEmail}</td>
    <td>${clientesList.getCompania}</td>
</tr>
    </c:forEach>
</table>
</main>

<%@include file="./partials/footer.jsp" %>