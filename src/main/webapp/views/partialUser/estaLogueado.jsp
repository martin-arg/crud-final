
<h1>Sistema para la aministracion de clientes</h1>
<div><h3><% out.println("Bienvenido " + usuario); %></h3></div>
<div>
    <h3> Tareas con los clientes</h3>
    <div class="btn-group" role="group" aria-label="Basic example">
        <a type="button"  href="/clientes/listar" class="btn btn-primary">Listar Clientes</a>
        <a type="button"  href="/clientes/registro" class="btn btn-primary">Agregar un cliente</a>
        <a type="button"  href="/clientes/modificar" class="btn btn-primary">Modificar un cliente</a>
        <a type="button"  href="/clientes/borrar" class="btn btn-danger">Borrar un cliente</a>
    </div>
</div>