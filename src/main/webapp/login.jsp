<%@ page import="lk.ijse.ecommercewebsite.DTO.UserDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/26/2025
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- ===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="css/login.css" />
    <title>Login & Registration Form</title>
</head>
<body>
<div class="container">
        <% List<UserDTO> users = (List<UserDTO>) request.getAttribute("users");

    %>
    <div class="forms">
        <div class="form login">
            <span class="title">Login</span>
            <form action="user" method="get">

                <div class="input-field">
                    <input type="text" placeholder="Enter your email" name="email" required />
                    <i class="uil uil-envelope icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" class="password" placeholder="Enter your password" name="password" required />
                    <i class="uil uil-lock icon"></i>
                    <i class="uil uil-eye-slash showHidePw"></i>
                </div>
                <div class="checkbox-text">
                    <div class="checkbox-content">
                        <input type="checkbox" id="logCheck" />
                        <label for="logCheck" class="text">Remember me</label>
                    </div>
                    <a href="#" class="text">Forgot password?</a>
                </div>
                <div class="input-field button">
                    <input  id="btnLogin" type="submit" value="Login" />
                </div>
            </form>
            <div class="login-signup">
            <span class="text"
            >Not a member?
              <a href="#" class="text signup-link">Signup Now</a>
            </span>
            </div>
        </div>

        <!-- Registration Form -->
        <div class="form signup">
            <span class="title">Registration</span>
            <form action="user" method="post">
                <div class="input-field">
                    <input type="text" placeholder="Enter your name" name="name" id="name" required />
                    <i class="uil uil-user"></i>
                </div>
                <div class="input-field">
                    <input type="email" placeholder="Enter your email" name="email" id="email" required />
                    <i class="uil uil-envelope icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" class="password" placeholder="Create a password" name="password" id="password" required />
                    <i class="uil uil-lock icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" class="password" placeholder="Confirm a password" name="confirm Password" id="confirm Password" required />
                    <i class="uil uil-lock icon"></i>
                    <i class="uil uil-eye-slash showHidePw"></i>
                </div>
                <div class="checkbox-text">
                    <div class="checkbox-content">
                        <input type="checkbox" id="termCon" />
                        <label for="termCon" class="text">I accepted all terms and conditions</label>
                    </div>
                </div>
                <div class="input-field button">
                    <input  id="btnSignUp" type="submit" value="Signup" />
                </div>
            </form>
            <div class="login-signup">
            <span class="text"
            >Already a member?
              <a href="#" class="text login-link">Login Now</a>
            </span>
            </div>
        </div>
    </div>
        <%
    String message = request.getParameter("message");
    if (message != null && !message.isEmpty()) {
%>
    <script>
        alert("<%= message %>");
    </script>
        <%
    }
%>
        <%
    String error = request.getParameter("error");
    if (error != null) {
%>
    <script>
        alert("<%= error %>");
    </script>
        <%
    }
%>

    <script src="js/login.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
</html>
