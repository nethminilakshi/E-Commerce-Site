package lk.ijse.ecommercewebsite;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommercewebsite.DTO.ProductDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DeleteProduct", value = "/delete-product")
public class DeleteProduct extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String productId = req.getParameter("productId");
        if (productId == null || productId.trim().isEmpty()) {
            resp.getWriter().write("Error: Product ID should not be null or empty");
            return;
        }
        String name = req.getParameter("productName");
        double price = Double.parseDouble(req.getParameter("price"));
        String category = req.getParameter("category");
        String quantity = req.getParameter("quantity");



        try {
            Connection connection = dataSource.getConnection();
            String sql = " Delete FROM products WHERE productId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, productId);

            int i = pst.executeUpdate();
            if (i>0){
                String alertMessage = "Product Deleted Successfully";
                resp.sendRedirect("product-delete.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
            }
            else{
                String errorMessage = "Can't delete product";
                resp.sendRedirect("product-delete.jsp?error=" + URLEncoder.encode(errorMessage, "UTF-8"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect("product-delete.jsp?error=Fail to Update Product");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductDTO> productList = new ArrayList<>();
        try  {
            Connection connection = dataSource.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM products");
            while (rs.next()) {
                ProductDTO product = new ProductDTO(
                        rs.getString("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("category"),
                        rs.getString("quantity")


                );
                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("productList",productList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("product-delete.jsp");
        requestDispatcher.forward(req,resp);
    }

}
