package lk.ijse.ecommeceweb.Serverlete;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommeceweb.DTO.UserDto;

import javax.sql.DataSource;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
@WebServlet("/user" )
public class UserServerlete extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = "user";
/*
       String confirmPassword = String.valueOf(req.getParameter("confirmPassword").equals(password));
*/
        System.out.println(name + email +  password);

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement =connection.prepareStatement("INSERT INTO users (name, email, password, role, is_active) VALUES (?, ?, ?, ?, ?)");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,email);
            preparedStatement.setString(3,password);
            preparedStatement.setString(4,role);
            preparedStatement.setBoolean(5,true);
            int i =preparedStatement.executeUpdate();
            if (i>0) {
                resp.sendRedirect("index.jsp?message=user Saved Successfully");


            }else {
                resp.sendRedirect("login.jsp?message=user Saved Failed");
            }

        } catch (  SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println(email + password);
        ServletContext context = getServletContext();

        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement =connection.prepareStatement("SELECT * FROM users where  email =?");
            preparedStatement.setString(1,email);
            ResultSet resultSet =preparedStatement.executeQuery();
            String dbUserId = "";
            String dbPassword ="";
            String dbEmail ="";
            String dbName ="";
            String dbRole ="";
            String dbActive ="";
            while (resultSet.next()) {
                dbUserId = resultSet.getString(1);
                dbName = resultSet.getString(2);
                dbEmail = resultSet.getString(3);
                dbPassword = resultSet.getString(4);
                dbRole = resultSet.getString(5);
                dbActive = resultSet.getString(6);

            }

            System.out.println(dbEmail+"pw"+dbPassword);




            if (dbEmail.equals(email) && dbPassword.equals(password)) {
                UserDto user = new UserDto(dbUserId,dbName,dbEmail,dbPassword,dbRole,Boolean.parseBoolean(dbActive));
                if (user.getRole().equals("admin")) {
                    String alertMessage = "Login successfully!";
                    response.sendRedirect("adminDashbord.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
                }else {
                    String alertMessage = "Login successfully!";
                    response.sendRedirect("index.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
                }
                request.getServletContext().setAttribute("user",user);
                System.out.println(user.getEmail());

            } else {
                String alertMessage = "login failed!";
                response.sendRedirect("login.jsp?error="+URLEncoder.encode(alertMessage, "UTF-8"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
