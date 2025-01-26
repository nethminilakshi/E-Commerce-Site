package lk.ijse.ecommercewebsite;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommercewebsite.DTO.CategoryDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UpdateCategory", value = "/update-category")
public class UpdateCategory extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String categoryId = req.getParameter("categoryId");
        if (categoryId == null || categoryId.trim().isEmpty()) {
            resp.getWriter().write("Error: categoryId should not be null or empty");
            return;
        }
        String name = req.getParameter("categoryName");
        String description = req.getParameter("description");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = dataSource.getConnection();
            String sql = " UPDATE category SET name=?, decsription=? WHERE categoryId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, description);

            int i = pst.executeUpdate();
            if (i>0){
                String alert = "Category updated Successfully";
                resp.sendRedirect("category-update.jsp?message=" + URLEncoder.encode(alert, "UTF-8"));
            }
            else{
                String error = "Can't update category";
                resp.sendRedirect("category-update.jsp?error=" + URLEncoder.encode(error, "UTF-8"));
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            resp.sendRedirect("category-update.jsp?error=Fail to Update Product");
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<CategoryDTO> categoryList = new ArrayList<>();
        try  {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = dataSource.getConnection();

            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM category");
            while (rs.next()) {
                CategoryDTO category = new CategoryDTO(
                        rs.getString("categoryId"),
                        rs.getString("categoryName"),
                        rs.getString("description")
                );
                categoryList.add(category);
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("categoryList",categoryList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("category-update.jsp");
        requestDispatcher.forward(req,resp);
    }


}
