package controller;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "userController", urlPatterns = {"/userController"})
public class userController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");


        try (PrintWriter out = response.getWriter()) {

            String userEmail = request.getParameter("user");
//            String userName = request.getParameter("user");
//            String userLastname = request.getParameter("")
            String userPass = request.getParameter("password");
//            String userPhone = request.getParameter("phone");

            User user = new User(userEmail, userPass);

            HttpSession session = request.getSession();
            session.setAttribute("user", user);
//            session.setAttribute("password", userPass);
            response.sendRedirect("./views/user.jsp");


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
