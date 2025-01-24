package lk.ijse.ecommercewebsite;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {

    private String message;
    String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    String DB_USER = "root";
    String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("productID");
        String name = req.getParameter("productName");
        String price = req.getParameter("price");
        String category = req.getParameter("category");
        String quantity = req.getParameter("quantity");



        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            String sql = "INSERT INTO products (productID, productName, price, category, quantity) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, price);
            pst.setString(4, category);
            pst.setString(5, quantity);

            int i = pst.executeUpdate();
            if (i>0){
                resp.sendRedirect("product-save.jsp?message=Product Save Successfully");
            }
            else{
                resp.sendRedirect("product-save.jsp?error=Failed to save product");
            }
        } catch (ClassNotFoundException | SQLException e) {

            throw new RuntimeException(e);
        }

    }
}














