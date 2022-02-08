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
                            <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                                 width="64" height="64"
                                 viewBox="0 0 64 64"
                                 style=" fill:#000000;"><radialGradient id="XxuzckEKxQAhu215VR7vra" cx="36" cy="32" r="26.875" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#afeeff"></stop><stop offset=".193" stop-color="#bbf1ff"></stop><stop offset=".703" stop-color="#d7f8ff"></stop><stop offset="1" stop-color="#e1faff"></stop></radialGradient><path fill="url(#undefined)" d="M5.5,61L5.5,61C3.015,61,1,58.985,1,56.5v0C1,54.015,3.015,52,5.5,52h0 c2.485,0,4.5,2.015,4.5,4.5v0C10,58.985,7.985,61,5.5,61z"></path><radialGradient id="XxuzckEKxQAhu215VR7vrb" cx="32" cy="31.5" r="30.775" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#afeeff"></stop><stop offset=".193" stop-color="#bbf1ff"></stop><stop offset=".703" stop-color="#d7f8ff"></stop><stop offset="1" stop-color="#e1faff"></stop></radialGradient><path fill="url(#undefined)" d="M64,24L64,24c0-2.761-2.239-5-5-5h-5c-2.761,0-5-2.238-5-5v0c0-2.762,2.238-5,5-5h0.565 C56.48,9,58,7.48,58,5.605L58,5.5C58,3.567,56.433,2,54.5,2l-38,0c-1.926,0-3.49,1.556-3.5,3.483L13,5.5 C12.99,7.43,14.552,9,16.483,9H17c2.209,0,4,1.791,4,4v0c0,2.209-1.791,4-4,4H5c-2.761,0-5,2.239-5,5v0c0,2.761,2.239,5,5,5h1 c2.209,0,4,1.791,4,4v0c0,2.209-1.791,4-4,4H5.5C2.462,35,0,37.462,0,40.5v0C0,43.538,2.462,46,5.5,46H19c1.657,0,3,1.343,3,3v0 c0,1.657-1.343,3-3,3h-1.5c-2.485,0-4.5,2.015-4.5,4.5v0c0,2.485,2.015,4.5,4.5,4.5H33h22c2.209,0,4-1.791,4-4v0 c0-2.209-1.791-4-4-4h-6.5c-1.933,0-3.5-1.567-3.5-3.5v0c0-1.933,1.567-3.5,3.5-3.5H60c2.209,0,4-1.791,4-4v0c0-2.209-1.791-4-4-4 h-1.5c-2.485,0-4.5-2.015-4.5-4.5v0c0-2.485,2.015-4.5,4.5-4.5H59C61.761,29,64,26.761,64,24z"></path><linearGradient id="XxuzckEKxQAhu215VR7vrc_118958_gr1" x1="10.098" x2="10.098" y1="50.804" y2="57" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#a4a4a4"></stop><stop offset=".63" stop-color="#7f7f7f"></stop><stop offset="1" stop-color="#6f6f6f"></stop><stop offset="1" stop-color="#6f6f6f"></stop></linearGradient><path fill="url(#XxuzckEKxQAhu215VR7vrc_118958_gr1)" d="M8.02,50.804l-1,5c-0.065,0.328,0.037,0.667,0.273,0.903C7.482,56.896,7.737,57,8,57 c0.065,0,0.131-0.007,0.196-0.02l5-1L8.02,50.804z"></path><linearGradient id="XxuzckEKxQAhu215VR7vrd_118958_gr2" x1="28.5" x2="28.5" y1="55" y2="16" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#ff8b67"></stop><stop offset=".847" stop-color="#ffa76a"></stop><stop offset="1" stop-color="#ffad6b"></stop><stop offset="1" stop-color="#ffad6b"></stop></linearGradient><path fill="url(#XxuzckEKxQAhu215VR7vrd_118958_gr2)" d="M47.707,28.293l-12-12c-0.391-0.391-1.023-0.391-1.414,0l-25,25 c-0.391,0.391-0.391,1.023,0,1.414l12,12C21.488,54.902,21.744,55,22,55s0.512-0.098,0.707-0.293l25-25 C48.098,29.316,48.098,28.684,47.707,28.293z"></path><linearGradient id="XxuzckEKxQAhu215VR7vre_118958_gr3" x1="15.5" x2="15.5" y1="56" y2="41.001" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#ffc662"></stop><stop offset=".004" stop-color="#ffc662"></stop><stop offset=".609" stop-color="#ffc582"></stop><stop offset="1" stop-color="#ffc491"></stop><stop offset="1" stop-color="#ffc491"></stop></linearGradient><path fill="url(#XxuzckEKxQAhu215VR7vre_118958_gr3)" d="M21.986,47.836C21.906,47.354,21.489,47,21,47h-4v-4c0-0.489-0.354-0.906-0.836-0.986l-6-1 c-0.271-0.043-0.548,0.023-0.768,0.188c-0.219,0.166-0.36,0.414-0.391,0.688l-1,9c-0.033,0.302,0.072,0.603,0.287,0.817l4,4 C12.481,55.896,12.736,56,13,56c0.037,0,0.073-0.002,0.11-0.006l9-1c0.273-0.03,0.521-0.172,0.688-0.391 c0.165-0.22,0.233-0.497,0.188-0.768L21.986,47.836z"></path><linearGradient id="XxuzckEKxQAhu215VR7vrf_118958_gr4" x1="49.736" x2="49.736" y1="23.5" y2="5.028" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#ff634d"></stop><stop offset=".204" stop-color="#fe6464"></stop><stop offset=".521" stop-color="#fc6581"></stop><stop offset=".794" stop-color="#fa6694"></stop><stop offset=".989" stop-color="#fa669a"></stop><stop offset="1" stop-color="#fa669a"></stop></linearGradient><path fill="url(#XxuzckEKxQAhu215VR7vrf_118958_gr4)" d="M57.603,13.188l-6.791-6.791c-1.826-1.826-4.797-1.826-6.623,0l-3.396,3.396 c-0.391,0.391-0.391,1.023,0,1.414l12,12c0.195,0.195,0.451,0.293,0.707,0.293s0.512-0.098,0.707-0.293l3.396-3.396 C59.429,17.985,59.429,15.015,57.603,13.188z"></path><linearGradient id="XxuzckEKxQAhu215VR7vrg_118958_gr5" x1="44" x2="44" y1="9.026" y2="30.974" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#b2b2b2"></stop><stop offset=".594" stop-color="#949494"></stop><stop offset="1" stop-color="#848484"></stop><stop offset="1" stop-color="#848484"></stop></linearGradient><path fill="url(#XxuzckEKxQAhu215VR7vrg_118958_gr5)" d="M53.957,21.543l-11.5-11.5c-1.355-1.355-3.559-1.355-4.914,0l-3.5,3.5 c-1.354,1.354-1.354,3.56,0,4.914l11.5,11.5c0.678,0.678,1.567,1.017,2.457,1.017s1.779-0.339,2.457-1.017l3.5-3.5 C55.312,25.103,55.312,22.897,53.957,21.543z"></path></svg>
                        </button>
                    </div>
                </form>
            </td>
            <td>
                <form action="/clientes/borrar" method="POST">
                    <div>
                        <input type="hidden" name="idCliente" value="<%= id %>">
                        <button class="btn btn btn-sm text-danger text-center" type="submit" >
                            <svg class="text-center" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                                 width="64" height="64"
                                 viewBox="0 0 64 64"
                                 style=" fill:#000000;"><radialGradient id="hGOJzj8L5E~Nhy3sq1Ba_a" cx="36.833" cy="35.917" r="26" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#afeeff"></stop><stop offset=".193" stop-color="#bbf1ff"></stop><stop offset=".703" stop-color="#d7f8ff"></stop><stop offset="1" stop-color="#e1faff"></stop></radialGradient><path fill="url(#undefined)" d="M10,8L10,8c2.209,0,4-1.791,4-4v0c0-2.209-1.791-4-4-4h0C7.791,0,6,1.791,6,4v0 C6,6.209,7.791,8,10,8z"></path><radialGradient id="hGOJzj8L5E~Nhy3sq1Ba_b" cx="31.417" cy="29.917" r="28.77" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#afeeff"></stop><stop offset=".193" stop-color="#bbf1ff"></stop><stop offset=".703" stop-color="#d7f8ff"></stop><stop offset="1" stop-color="#e1faff"></stop></radialGradient><path fill="url(#undefined)" d="M7.5,64L7.5,64c1.933,0,3.5-1.567,3.5-3.5v0c0-1.933-1.567-3.5-3.5-3.5h0 C5.567,57,4,58.567,4,60.5v0C4,62.433,5.567,64,7.5,64z"></path><radialGradient id="hGOJzj8L5E~Nhy3sq1Ba_c" cx="32.5" cy="32" r="30.775" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#afeeff"></stop><stop offset=".193" stop-color="#bbf1ff"></stop><stop offset=".703" stop-color="#d7f8ff"></stop><stop offset="1" stop-color="#e1faff"></stop></radialGradient><path fill="url(#undefined)" d="M62,20.5L62,20.5c0-2.485-2.015-4.5-4.5-4.5H44c-2.209,0-4-1.791-4-4v0c0-2.209,1.791-4,4-4 h2c2.209,0,4-1.791,4-4v0c0-2.209-1.791-4-4-4L22,0c-2.209,0-4,1.791-4,4v0c0,2.209,1.791,4,4,4h2c1.657,0,3,1.343,3,3v0 c0,1.657-1.343,3-3,3H10.5C8.567,14,7,15.567,7,17.5v0c0,1.933,1.567,3.5,3.5,3.5H13c1.657,0,3,1.343,3,3v0c0,1.657-1.343,3-3,3H8 c-2.761,0-5,2.239-5,5v0c0,2.761,2.239,5,5,5h5.5c1.933,0,3.5,1.567,3.5,3.5v0c0,1.933-1.567,3.5-3.5,3.5H9c-2.209,0-4,1.791-4,4v0 c0,2.209,1.791,4,4,4h8.5c1.381,0,2.5,1.119,2.5,2.5v0c0,1.381-1.119,2.5-2.5,2.5h0c-1.933,0-3.5,1.567-3.5,3.5v0 c0,1.933,1.567,3.5,3.5,3.5h30c1.933,0,3.5-1.567,3.5-3.5v0c0-1.933-1.567-3.5-3.5-3.5H47c-1.105,0-2-0.895-2-2v0 c0-1.105,0.895-2,2-2h7c2.209,0,4-1.791,4-4v0c0-2.209-1.791-4-4-4h-5.5c-1.381,0-2.5-1.119-2.5-2.5v0c0-1.381,1.119-2.5,2.5-2.5 H49c2.209,0,4-1.791,4-4v0c0-2.209-1.791-4-4-4h-1.5c-1.933,0-3.5-1.567-3.5-3.5v0c0-1.933,1.567-3.5,3.5-3.5h10 C59.985,25,62,22.985,62,20.5z"></path><radialGradient id="hGOJzj8L5E~Nhy3sq1Ba_d" cx="35.917" cy="35.417" r="27.938" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#afeeff"></stop><stop offset=".193" stop-color="#bbf1ff"></stop><stop offset=".703" stop-color="#d7f8ff"></stop><stop offset="1" stop-color="#e1faff"></stop></radialGradient><path fill="url(#undefined)" d="M59,40L59,40c-2.209,0-4-1.791-4-4v0c0-2.209,1.791-4,4-4h0c2.209,0,4,1.791,4,4v0 C63,38.209,61.209,40,59,40z"></path><g><path fill="#717171" d="M41.5,14.5c-0.829,0-1.5-0.672-1.5-1.5V8.5C40,7.121,38.654,6,37,6H27c-1.654,0-3,1.121-3,2.5V13 c0,0.828-0.671,1.5-1.5,1.5S21,13.828,21,13V8.5C21,5.468,23.691,3,27,3h10c3.309,0,6,2.468,6,5.5V13 C43,13.828,42.329,14.5,41.5,14.5z"></path></g><linearGradient id="hGOJzj8L5E~Nhy3sq1Ba_e_118953_gr1" x1="32" x2="32" y1="26.503" y2="64.503" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#a4a4a4"></stop><stop offset=".63" stop-color="#7f7f7f"></stop><stop offset="1" stop-color="#6f6f6f"></stop><stop offset="1" stop-color="#6f6f6f"></stop></linearGradient><path fill="url(#hGOJzj8L5E~Nhy3sq1Ba_e_118953_gr1)" d="M43,59H21c-4.418,0-8-3.582-8-8V21h38v30C51,55.418,47.418,59,43,59z"></path><linearGradient id="hGOJzj8L5E~Nhy3sq1Ba_f_118953_gr2" x1="32" x2="32" y1="3.541" y2="31.891" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#a4a4a4"></stop><stop offset=".63" stop-color="#7f7f7f"></stop><stop offset="1" stop-color="#6f6f6f"></stop></linearGradient><path fill="url(#hGOJzj8L5E~Nhy3sq1Ba_f_118953_gr2)" d="M51,21H13c-1.657,0-3-1.343-3-3v-2c0-3.314,2.686-6,6-6h32c3.314,0,6,2.686,6,6v2 C54,19.657,52.657,21,51,21z"></path><g><linearGradient id="hGOJzj8L5E~Nhy3sq1Ba_g" x1="32" x2="32" y1="21" y2="49" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#d8d8d8"></stop><stop offset=".759" stop-color="#c9c9c9"></stop><stop offset="1" stop-color="#c3c3c3"></stop></linearGradient><path fill="url(#undefined)" d="M30,21h4v26c0,1.105-0.895,2-2,2h0c-1.105,0-2-0.895-2-2V21z"></path><linearGradient id="hGOJzj8L5E~Nhy3sq1Ba_h" x1="42" x2="42" y1="21" y2="49" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#d8d8d8"></stop><stop offset=".759" stop-color="#c9c9c9"></stop><stop offset="1" stop-color="#c3c3c3"></stop></linearGradient><path fill="url(#undefined)" d="M40,21h4v26c0,1.105-0.895,2-2,2h0c-1.105,0-2-0.895-2-2V21z"></path><g><linearGradient id="hGOJzj8L5E~Nhy3sq1Ba_i" x1="22" x2="22" y1="21" y2="49" gradientUnits="userSpaceOnUse" spreadMethod="reflect"><stop offset="0" stop-color="#d8d8d8"></stop><stop offset=".759" stop-color="#c9c9c9"></stop><stop offset="1" stop-color="#c3c3c3"></stop></linearGradient><path fill="url(#undefined)" d="M20,21h4v26c0,1.105-0.895,2-2,2h0c-1.105,0-2-0.895-2-2V21z"></path></g></g></svg>
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