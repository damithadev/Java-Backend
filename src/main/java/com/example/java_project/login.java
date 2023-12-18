package com.example.java_project;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "login", value = "/login")
public class login extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("emaill");
        String password = req.getParameter("passwordd");

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dbConnection.getConnection();
            String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("userEmail", email);
                resp.sendRedirect("/product.jsp");
            } else {
                resp.sendRedirect("/account.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) dbConnection.closeConnection(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}