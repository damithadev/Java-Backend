package com.example.java_project;

import java.util.List;

public class order {
    private List<OrderItem> orderDetails;
    public static class OrderItem {
        private int productId;
        private int quantity;

        // Add getters and setters for productId and quantity
        public int getProductId() {
            return productId;
        }

        public void setProductId(int productId) {
            this.productId = productId;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }
    }

    public List<OrderItem> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderItem> orderDetails) {
        this.orderDetails = orderDetails;
    }
}
