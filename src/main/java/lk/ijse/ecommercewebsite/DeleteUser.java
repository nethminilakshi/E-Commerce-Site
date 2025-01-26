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
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteUser", value = "/deleteUser")

public class DeleteUser extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        if (userId != null && !userId.isEmpty()) {
            try {
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM users WHERE id = ?");
                preparedStatement.setString(1, userId);
                int rowsDeleted = preparedStatement.executeUpdate();
                if (rowsDeleted > 0) {
                    String alertMessage = "User Deleted Successfully";
                    resp.sendRedirect("user.jsp?message=" + URLEncoder.encode(alertMessage, "UTF-8"));
                } else {
                    String errorMessage = "Can't delete user";
                    resp.sendRedirect("user.jsp?error=" + URLEncoder.encode(errorMessage, "UTF-8"));
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

}
