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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "getAllProducts", value = "/product-list")

public class getAllProducts extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductDTO> allCustomer=new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            ResultSet resultSet=connection.prepareStatement("SELECT * FROM products").executeQuery();
            while (resultSet.next()){
                ProductDTO customerDTO=new ProductDTO(
                        resultSet.getString(1),
                           resultSet.getString(2),
                            resultSet.getDouble(3),
                            resultSet.getString(4),
                            resultSet.getString(5)
                );
                allCustomer.add(customerDTO);
            }
            req.setAttribute("product",allCustomer);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("product-list.jsp");
            requestDispatcher.forward(req,resp);
        } catch (SQLException e) {
            resp.sendRedirect("?product-list.jsp=Failed to retrieve product");
            throw new RuntimeException(e);

        }}}


