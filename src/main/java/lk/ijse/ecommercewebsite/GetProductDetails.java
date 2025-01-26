package lk.ijse.ecommercewebsite;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommercewebsite.DTO.ProductDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;



@WebServlet(name = "GetProductDetails", value = "/get-product-details")
public class GetProductDetails extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;



    public ProductDTO search(String id) throws SQLException, ClassNotFoundException {
        try{

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = dataSource.getConnection();

            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM products WHERE productId=?");
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new ProductDTO(
                        rs.getString("productId"),
                        rs.getString("productName"),
                        rs.getDouble("price"),
                        rs.getString("category"),
                        rs.getString("quantity")

                );
            }
            return null;

        } catch (Exception e){
            System.out.println("yyyyyyy");

        }
        return null;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String productId = req.getParameter("productId");
        try {
            ProductDTO product =  search(productId);
            resp.setContentType("application/json");
            resp.getWriter().write(new Gson().toJson(product));
        } catch (Exception e) {
            throw new ServletException("Error retrieving product details", e);
        }


    }
}
