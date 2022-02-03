package controller;

import database.ClientesDAO;
import database.UserDAO;
import model.Clientes;
import model.User;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "clientesController", urlPatterns = {"/clientes/*"})
public class clientesController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String path = request.getPathInfo();
            HttpSession session = request.getSession();
            UserDAO userDB = new UserDAO();
            ClientesDAO clientesDB = new ClientesDAO();

            switch (path) {
                case "/listar":
                    response.sendRedirect("/views/clientesLista.jsp");
                    String userName = (String) session.getAttribute("userName");

                    List<Clientes> clientes = new ArrayList<>();
                    clientes = clientesDB.getClientes(userName);
                    session.setAttribute("clientes", clientes);

                    break;
                case "/registrar":
//                    boolean createClient (String nombre, String apellido, String telefono, String email, String compania, String adminCuenta)
                    String nombre = request.getParameter("cliNombre");
                    String apellido = request.getParameter("cliApellido");
                    String telefono = request.getParameter("cliTelefono");
                    String email = request.getParameter("cliEmail");
                    String compania = request.getParameter("cliCompania");
                    String adminCuenta = (String) session.getAttribute("userName");

                    boolean seCreo = clientesDB.createClient(nombre, apellido, telefono, email, compania, adminCuenta);
                    if (seCreo) {
                        session.setAttribute("mensaje", "El cliente fue creado exitosamente");
                        response.sendRedirect("/view/mensaje");
                    } else {
                        session.setAttribute("mensaje", "El cliente no pudo ser creado");
                        response.sendRedirect("/view/mensaje");
                    }

                    break;
                case "/leer":
                    int id2 = Integer.parseInt(request.getParameter("idCliente2"));
                    Clientes clientes2 = clientesDB.getCliente(id2);
                    session.setAttribute("id", id2);


                    session.setAttribute("clientes2", clientes2);
                    response.sendRedirect("/views/actualizar.jsp");
                    break;

                case "/modificar":

                    int id3 = (int) session.getAttribute("id");
                    String nombre2 = request.getParameter("cliNombre");
                    String apellido2 = request.getParameter("cliApellido");
                    String telefono2 = request.getParameter("cliTelefono");
                    String email2 = request.getParameter("cliEmail");
                    String compania2 = request.getParameter("cliCompania");


                    boolean seModifico = clientesDB.modificarCliente(id3, nombre2, apellido2, telefono2, email2, compania2);
                    if (seModifico) {
                        session.setAttribute("mensaje", "El cliente fue modificado exitosamente");
                        response.sendRedirect("/view/mensaje");
                    } else {
                        session.setAttribute("mensaje", "El cliente no pudo ser modificado");
                        response.sendRedirect("/view/mensaje");
                    }

                    break;

                case "/borrar":
                    int idCliente = Integer.parseInt(request.getParameter("idCliente"));
                    boolean seBorro = clientesDB.deleteCliente(idCliente);
                    if (seBorro) {
                        session.setAttribute("mensaje", "El cliente fue borrado exitosamente");
                        response.sendRedirect("/view/mensaje");
                    } else {
                        session.setAttribute("mensaje", "El cliente no pudo ser borrado");
                        response.sendRedirect("/view/mensaje");
                    }


                    break;

                default:

                    break;

            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}