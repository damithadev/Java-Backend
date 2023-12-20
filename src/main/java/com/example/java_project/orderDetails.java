package com.example.java_project;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "orderDetails", value = "/orderDetails")
public class orderDetails extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        BufferedReader reader = req.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }

        // Convert JSON data to a Java object using Jackson
        ObjectMapper objectMapper = new ObjectMapper();
        order orderDetailsDTO = objectMapper.readValue(sb.toString(), order.class);


        List<order.OrderItem> items = orderDetailsDTO.getOrderDetails();
        //initializing 4 different arrayLists
        List<Integer> productIds = new ArrayList<>();
        List<Integer> quantities = new ArrayList<>();
        List<Integer> orderIdArray = new ArrayList<>();
        List<String> userEmailArray = new ArrayList<>();

        //adding productIds and quantities to 2 different arrayLists
        for (order.OrderItem item : items) {
            productIds.add(item.getProductId());
            quantities.add(item.getQuantity());
        }

        // Retrieve the user's email from the HttpSession
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        int orderID = generateRandomOrderID();

        //get the length of productId arrayList after adding items
        int length = productIds.size();

        //duplicating user email to a arrayList
        for (int i = 0; i < length; i++) {
            userEmailArray.add(userEmail);
        }

        //duplicating order ID to a arrayList
        for (int i = 0; i < length; i++) {
            orderIdArray.add(orderID);
        }

        // Now you have the order details as a Java object, you can process it accordingly
        // Construct the dynamic SQL query
        String query = "INSERT INTO orders (orderid, pid, userEmail, quantity) VALUES ( ?, ?, ?, ?)";

        // Establish a database connection using dbConnection class
        try (Connection connection = dbConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            // Loop through the products and set parameters for each
            for (int i = 0; i < length; i++) {
                preparedStatement.setInt(1, orderIdArray.get(i));
                preparedStatement.setInt(2, productIds.get(i));
                preparedStatement.setString(3, userEmailArray.get(i));
                preparedStatement.setInt(4, quantities.get(i));

                // Execute the query for each product
                preparedStatement.executeUpdate();
            }

            System.out.println("Rows inserted successfully.");

        } catch (SQLException e) {
            e.printStackTrace();
        }


        try {
            email.sendEmail(userEmail, "Your Order Has Been Placed", "Your order has been successfully placed on our platform. We are work on it."); // Replace with your OTP code
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Send a response if needed
        resp.setContentType("application/json");
        resp.getWriter().write("Order received successfully");

        // Forward the request back to verify.jsp
        RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, resp);
    }

    private int generateRandomOrderID() {
        Random random = new Random();
        int generatedOID = 100000 + random.nextInt(900000); // This generates a 4-digit random number between 1000 and 9999

        return generatedOID;
    }

}