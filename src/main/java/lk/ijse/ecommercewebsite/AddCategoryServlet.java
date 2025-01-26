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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "AddCategoryServlet", value = "/add-category")
public class AddCategoryServlet extends HttpServlet {


    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("categoryID");
        String name = req.getParameter("categoryName");
        String description = req.getParameter("description");


        try {
            Connection connection = dataSource.getConnection();
            String sql = "INSERT INTO category (categoryId, categoryName, description) VALUES (?, ?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, description);


            int i = pst.executeUpdate();
            if (i>0){
                String alert = "Category saved Successfully";
                resp.sendRedirect("category-save.jsp?message=" + URLEncoder.encode(alert, "UTF-8"));
            }
            else{
                String error = "Fail to Add Category";
                resp.sendRedirect("category-save.jsp?error=" + URLEncoder.encode(error, "UTF-8"));
            }
        } catch (SQLException e) {

            throw new RuntimeException(e);
        }

    }












}
