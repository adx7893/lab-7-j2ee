package com.apurva.inventory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/inventory")
public class InventoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> productList = new ArrayList<>();
        productList.add(new Product(1, "Laptop", 5, 999.99));
        productList.add(new Product(2, "Phone", 10, 599.99));
        productList.add(new Product(3, "Tablet", 7, 299.99));

        request.setAttribute("productList", productList);
        request.getRequestDispatcher("inventory.jsp").forward(request, response);
    }
}
