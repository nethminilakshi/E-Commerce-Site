package lk.ijse.ecommercewebsite;

import com.google.gson.Gson;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommercewebsite.DTO.CategoryDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.*;

@WebServlet( name = "GetCategoryDetails", value = "/get-category-details")
public class GetCategoryDetails extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    public CategoryDTO search(String id) throws SQLException, ClassNotFoundException {
        try{
            Connection connection = dataSource.getConnection();
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM category WHERE categoryId=?");
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new CategoryDTO(
                        rs.getString("categoryId"),
                        rs.getString("categoryName"),
                        rs.getString("description")
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

        String categoryId = req.getParameter("categoryId");
        try {
            CategoryDTO category =  search(categoryId);
            resp.setContentType("application/json");
            resp.getWriter().write(new Gson().toJson(category));
        } catch (Exception e) {
            throw new ServletException("Error retrieving product details", e);
        }

    }
}
