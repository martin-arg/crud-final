<%-- 
    Document   : menu
    Created on : 26 dic. 2021, 19:52:28
    Author     : rpv15
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <% 
        User user = (User) session.getAttribute("user");
    %>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">                
                <li class="nav-item">
                  <a class="nav-link" href="/user/home">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/user/profile">Profile</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/user/accounts">My Accounts</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/user/logout">Log Out</a>
                </li>
            </ul>
        </div>
    </nav>
