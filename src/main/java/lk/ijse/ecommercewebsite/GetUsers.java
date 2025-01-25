package lk.ijse.ecommercewebsite;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ViewUsers", value = "/user-list")
public class ViewUsers extends HttpServlet {

    String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    String DB_USER = "root";
    String DB_PASSWORD = "Ijse@123";


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<UserDTO> allCustomer=new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection= DriverManager.getConnection(
                    DB_URL,
                    DB_USER,
                    DB_PASSWORD
            );
            ResultSet resultSet=connection.prepareStatement("SELECT * FROM users").executeQuery();
            while (resultSet.next()){
                UserDTO userDTO=new UserDTO(
                        resultSet.getString(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5)
                );
                allCustomer.add(userDTO);
            }
            req.setAttribute("users",allCustomer);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("user-list.jsp");
            requestDispatcher.forward(req,resp);
        } catch (ClassNotFoundException | SQLException e) {
            resp.sendRedirect("?user-list.jsp=Failed to retrieve users");
            throw new RuntimeException(e);

        }}}
