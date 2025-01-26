package lk.ijse.ecommercewebsite;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.*;


@WebServlet(name = "ProductSaveServlet", value = "/product")
public class ProductSaveServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("productID");
        String name = req.getParameter("productName");
        String price = req.getParameter("price");
        String category = req.getParameter("category");
        String quantity = req.getParameter("quantity");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = dataSource.getConnection();
            String sql = "INSERT INTO products (productID, productName, price, category, quantity) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, price);
            pst.setString(4, category);
            pst.setString(5, quantity);

            int i = pst.executeUpdate();
            if (i>0){
                String alert = "Product added Successfully";
                resp.sendRedirect("product-save.jsp?message=" + URLEncoder.encode(alert, "UTF-8"));
            }
            else{
                String error = "Fail to update product";
                resp.sendRedirect("product-save.jsp?error=" + URLEncoder.encode(error, "UTF-8"));
            }
        } catch (ClassNotFoundException | SQLException e) {

            throw new RuntimeException(e);
        }

    }
}














