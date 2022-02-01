package controller;

import database.ClientesDAO;
import model.Clientes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "clientesController", urlPatterns = {"/clientes/*"})
public class clientesController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String path = request.getPathInfo();
            HttpSession session = request.getSession();


            switch (path) {
                case "/listar" :

                    break;
                case "/registrar" :
//                    boolean createClient (String nombre, String apellido, String telefono, String email, String compania, String adminCuenta)
                    String nombre = request.getParameter("cliNombre");
                    String apellido = request.getParameter("cliApellido");
                    String telefono =request.getParameter("cliTelefono");
                    String email = request.getParameter("cliEmail");
                    String compania = request.getParameter("cliCompania");
                    String adminCuenta = (String)session.getAttribute("userName");
                    ClientesDAO clientesDAO = new ClientesDAO();
                    boolean seCreo = clientesDAO.createClient(nombre, apellido, telefono, email, compania, adminCuenta);
                    if (seCreo) {
                        response.sendRedirect("/views/userCreateResponse.jsp");
                        session.setAttribute("createMessage", seCreo);
                    } else {
                        session.setAttribute("createMessage", seCreo);
                        response.sendRedirect("/views/userCreateResponse.jsp");
                    }

                    break;
                case "/modificar" :
                        break;
                case "/borrar" :
                    break;

                default:
                    // TODO: 28/1/2022 redirigiir a la pagiina donde esta.
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
    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ClientesDAO clientesDAO = new ClientesDAO();
        ArrayList<Clientes> clientesList = null;
        try {
            clientesList = clientesDAO.getClientes();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //added here
        request.setAttribute("clientesList", clientesList);

        request.getRequestDispatcher("/views/clientesLista..jsp").forward(request, response);
    }*/





/*        @Override
        protected void doGet (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }*/

        @Override
        protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
                processRequest(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        @Override
        public String getServletInfo () {
            return "Short description";
        }

}