package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "viewController", urlPatterns = {"/view/*"})
public class viewController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String path = request.getPathInfo();
            switch (path) {
                case "/inicio" :
                    // TODO: 8/2/2022 Agregar un if para que si este logueado vaya a user
                    response.sendRedirect("/");
                    break;
                case "/registrar":
                    response.sendRedirect("/views/registro.jsp");
                    break;

                case "/user" :
                    response.sendRedirect("/views/user.jsp");
                    break;
                case "/mensaje" :
                    response.sendRedirect("/views/userResponse.jsp");
                    break;

                case "/login" :
                    response.sendRedirect("/views/login.jsp");
                    break;


                default:
                    response.sendRedirect("/views/404.html");
                    break;

            }


        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
