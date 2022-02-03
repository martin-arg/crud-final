<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./partials/header.jsp" %>
<main class="container mt-4 w-75">
    <%  String nombreUsuario = (String) session.getAttribute("userName"); %>
    <h1>Registro para nuevos clientes</h1>
    <form class="row g-3" method="POST" action="/clientes/registrar">
        <div class="row g-3">
            <div class="col-md-6">
                <label for="cliNombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" placeholder="Nombre" id="cliNombre" name="cliNombre">
            </div>
            <div class="col-md-6">
                <label for="cliApellido" class="form-label">Apellido</label>
                <input type="text" class="form-control" placeholder="Apellido" id="cliApellido" name="cliApellido">
            </div>
        </div>
        <div class="col-md-6">
            <label for="cliEmail" class="form-label">Email</label>
            <input type="email" class="form-control" id="cliEmail" name="cliEmail" >
        </div>

        <div class="col-md-6">
            <label for="cliTelefono" class="form-label">Telefono</label>
            <input type="number" class="form-control" id="cliTelefono" name="cliTelefono">
        </div>
        <div class="col-md-6">
            <label for="cliCompania" class="form-label">Compania</label>
            <input type="text" class="form-control" id="cliCompania" name="cliCompania">
        </div>


        <div class="col-12">
            <button type="submit" class="btn btn-primary">Registrar</button>
        </div>
    </form>
    <div class="col-md-12">
        <p>
            <%
                out.println("Los cambios se registraran con el usuario: "+ nombreUsuario);
            %>
        </p>
    </div>
</main>

<%@include file="./partials/footer.jsp" %>