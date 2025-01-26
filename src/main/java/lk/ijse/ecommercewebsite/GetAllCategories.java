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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GetAllCategories", value = "/category-list")
public class GetAllCategories extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CategoryDTO> allCategories =new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();

            ResultSet resultSet=connection.prepareStatement("SELECT * FROM category").executeQuery();
            while (resultSet.next()){
                CategoryDTO categoryDTO=new CategoryDTO(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3)
                );
                allCategories.add(categoryDTO);
            }
            req.setAttribute("category",allCategories);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("category-list.jsp");
            requestDispatcher.forward(req,resp);
        } catch (SQLException e) {
            resp.sendRedirect("?category-list.jsp=Failed to retrieve category");
            throw new RuntimeException(e);

        }}

}
