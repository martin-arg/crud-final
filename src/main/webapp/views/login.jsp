
<%@include file="./partials/header.jsp" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<main  class="container d-flex flex-column align-items-center gap-2 justify-content-center" >
<form method="POST" action="/user/login">
    <div class="mb-3">
        <label for="user" class="form-label">Usuario</label>
        <input type="text" class="form-control" id="user" name="user">
        <div id="emailHelp" class="form-text">No comparta estos datos con nadie.</div>
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Contraseña</label>
        <input type="password" class="form-control"name="password" id="password">
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Ingresar</button>
</form>
</main>
<%@include file="./partials/footer.jsp" %>