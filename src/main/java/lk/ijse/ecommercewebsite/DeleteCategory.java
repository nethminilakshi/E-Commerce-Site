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

@WebServlet(name = "DeleteCategory", value = "/delete-category")
public class DeleteCategory extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String categoryId = req.getParameter("categoryId");
        if (categoryId == null || categoryId.trim().isEmpty()) {
            resp.getWriter().write("Error: category Id should not be null or empty");
            return;
        }
//        String name = req.getParameter("categoryName");
//        String description = req.getParameter("description");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = dataSource.getConnection();
            String sql = " Delete FROM category WHERE categoryId=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, categoryId);

            int i = pst.executeUpdate();
            if (i>0){
                String alert = "Category Deleted Successfully";
                resp.sendRedirect("category-delete.jsp?message=" + URLEncoder.encode(alert, "UTF-8"));
            }
            else{
                resp.sendRedirect("category-delete.jsp?error=Fail to delete Category");
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            resp.sendRedirect("category-delete.jsp?error=Fail to Update Category");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoryDTO> categoryList = new ArrayList<>();
        try  {
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
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("categoryList",categoryList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("category-delete.jsp");
        requestDispatcher.forward(req,resp);
    }

}
