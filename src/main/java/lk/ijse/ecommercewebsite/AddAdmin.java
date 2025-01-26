package lk.ijse.ecommercewebsite;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommercewebsite.DTO.UserDTO;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddAdmin", value = "/addAdmin")
public class AddAdmin extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = "admin";
        boolean active = true;
        System.out.println(name + email + password);
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (name, email, password, role, is_active) VALUES (?, ?, ?, ?, ?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, role);
            preparedStatement.setBoolean(5, active);
            int i = preparedStatement.executeUpdate();
            if (i > 0) {
                String alertMessage = "Admin Saved Successfully";
                resp.sendRedirect("Dashboard.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
            } else {
                String errorMessage = "Admin Saved Failed";
                resp.sendRedirect("index.jsp?error=" + URLEncoder.encode(errorMessage, "UTF-8"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<UserDTO> userDtoList = new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String email = resultSet.getString(3);
                String password = resultSet.getString(4);
                String role = resultSet.getString(5);
                boolean isactive = resultSet.getBoolean(6);


                UserDTO userDto = new UserDTO(String.valueOf(id),name,email,password,role,isactive);
                userDtoList.add(userDto);
                System.out.println(userDto);
            }
            req.setAttribute("userDtoList", userDtoList);

// Forward the request to the JSP
            RequestDispatcher dispatcher = req.getRequestDispatcher("user.jsp");
            dispatcher.forward(req, resp);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }



}
