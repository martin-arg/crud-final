package controller;

import database.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "userController", urlPatterns = {"/user/*"})
public class userController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String path = request.getPathInfo();
            UserDAO userDB = new UserDAO();
            HttpSession session = request.getSession();
            switch (path) {
                case "/login":

                    String userName = request.getParameter("user");
                    String userPass = request.getParameter("password");

                    boolean login = userDB.login(userName, userPass);
                    String userNombre = userDB.getNombre(userName);

                    session.setAttribute("userName", userName);
                    session.setAttribute("userNombre", userNombre);

                    if (login) {
                        response.sendRedirect("/views/user.jsp");
                        session.setAttribute("islogin", login);
                    } else {
                        response.sendRedirect("/views/login.jsp");
                    }

                    break;

                case "/logout":
                    session.invalidate();
                    response.sendRedirect("/");
                    break;

                default:
                    break;
            }

        } catch (SQLException err) {
            err.printStackTrace();
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
