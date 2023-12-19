package com.example.java_project;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "retrieveReviews", value = "/retrieveReviews")
public class retrieveReviews extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<review> reviews = new ArrayList<>();
        Connection connection = null;

        try {
            connection = dbConnection.getConnection();

            String query = "SELECT id, name, review FROM reviews";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String review = resultSet.getString("review");

                review obj = new review(id, name, review);
                reviews.add(obj);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    dbConnection.closeConnection(connection);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            String jsonProducts = objectMapper.writeValueAsString(reviews);
            resp.setContentType("application/json");

            resp.getWriter().write(jsonProducts);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}