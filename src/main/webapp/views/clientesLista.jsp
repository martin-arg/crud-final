<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="./partials/header.jsp" %>
<%@ page import="database.ClientesDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Clientes" %>

<%@include file="./partialUser/barra.jsp" %>
<h1 class="my-3">
    <% String nombreUsuario = (String) session.getAttribute("userNombre");
        out.println(nombreUsuario + ", sus clientes son: ");
    %>
</h1>
    <table class="table table-success table-hover w-75">
        <thead>
        <tr>
            <th class="text-center align-middle d-none" scope="col">#</th>
            <th class="text-center align-middle" scope="col">Nombre</th>
            <th class="text-center align-middle" scope="col">Apellido</th>
            <th class="text-center align-middle" scope="col">Telefono</th>
            <th class="text-center align-middle" scope="col">Email</th>
            <th class="text-center align-middle" scope="col">Compañia</th>
            <th class="text-center align-middle" scope="col">Modificar</th>
            <th class="text-center align-middle" scope="col">Borrar</th>
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
                String id = Integer.toString(clientes.get(i).getId());


        %>

        <tr>
            <td class="text-center d-none" name="id"><%= id %></td>
            <td class="text-center"><% out.println(clientes.get(i).getNombre()); %></td>
            <td class="text-center"><% out.println(clientes.get(i).getApellido()); %></td>
            <td class="text-center"><% out.println(clientes.get(i).getTelefono()); %></td>
            <td class="text-center"><% out.println(clientes.get(i).getEmail()); %></td>
            <td class="text-center"><% out.println(clientes.get(i).getCompania()); %></td>

            <td>
                <form action="/clientes/leer" method="POST">
                    <div>
                        <input type="hidden" name="idCliente2" value="<%=id%>">
                        <button class="btn btn btn-sm text-danger text-center" type="submit" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                            </svg>
                        </button>
                    </div>
                </form>
            </td>
            <td>
                <form action="/clientes/borrar" method="POST">
                    <div>
                        <input type="hidden" name="idCliente" value="<%= id %>">
                        <button class="btn btn btn-sm text-danger text-center" type="submit" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                            </svg>
                        </button>
                    </div>
                </form>
            </td>
        </tr>

        </tbody>

        <%
            }
        %>
    </table>
</main>

<%@include file="./partials/footer.jsp" %>