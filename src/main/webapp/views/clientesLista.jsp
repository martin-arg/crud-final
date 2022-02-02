<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="./partials/header.jsp" %>
<%@ page import="database.ClientesDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Clientes" %>
<%@ page import="model.User" %>
<main class="container d-flex flex-column align-items-center gap-2 justify-content-center">

    <table>
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Telefono</th>
            <th>Email</th>
            <th>Compañia</th>
        </tr>
        </thead>
        <tbody>
        <%
            String usuario = (String) session.getAttribute("userName");
            List<Clientes> clientes = (List<Clientes>) session.getAttribute("clientes");
            ClientesDAO clientesDB = new ClientesDAO();
            clientes = clientesDB.getClientes(usuario);
            session.setAttribute("clientes", clientes);

            for (int i = 0; i < clientes.size(); i++) {


        %>

        <tr>
            <td><% out.println(clientes.get(i).getNombre()); %></td>
            <td><% out.println(clientes.get(i).getApellido()); %></td>
            <td><% out.println(clientes.get(i).getTelefono()); %></td>
            <td><% out.println(clientes.get(i).getEmail()); %></td>
            <td><% out.println(clientes.get(i).getCompania()); %></td>
        </tr>

        </tbody>

        <%
            }
        %>
    </table>
</main>

<%@include file="./partials/footer.jsp" %>