<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Registration Popup</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
    />
    <style>
        body {
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #f8f9fa; /* Light gray Bootstrap background */
        }
        .popup-modal {
            background-color: #f7e8ff; /* Light purple background for the popup */
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            position: relative;
            height: auto; /* Adjusted for content size */
        }
        .popup-modal .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 18px;
            color: #000;
            cursor: pointer;
        }
    </style>
</head>
<body>



<div class="popup-modal">
    <span class="close-btn" onclick="window.location.href='Login-reg.jsp'">&times;</span>
    <h4 class="text-center mb-3 fw-bold">Create an Account</h4>

    <% String message = request.getParameter("message");
        String error = request.getParameter("error");
    %>
    <% if (message != null) {
    %>
    <p style="color: green"><%= message %></p>
    <% }
    %>
    <% if (error != null) {
    %>
    <p style="color: red"><%= error %></p>
    <% }
    %>
    <br>


    <form action="register" method="POST" class="register-form" id="register-form">
        <!-- Name Input -->
        <div class="mb-2 form-group">
            <label for="id" class="form-label">User Id</label>
            <input type="text" class="form-control" name="id" id="id" placeholder="UserId" />
        </div>
        <div class="mb-2 form-group">
            <label for="userName" class="form-label">Name</label>
            <input type="text" class="form-control" name="userName" id="userName" placeholder="Your Name" />
        </div>



        <!-- Password Input -->
        <div class="mb-2 form-group">
            <label for="pass" class="form-label">Password</label>
            <input type="password" class="form-control" name="pass" id="pass" placeholder="Password" />
        </div>
        <!-- Email Input -->
        <div class="mb-2 form-group">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" />
        </div>

        <!-- Repeat Password Input -->
        <div class="mb-2 form-group">
            <label for="rePass" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" name="rePass" id="rePass" placeholder="Repeat your password" />
        </div>

        <div class="mb-2 form-group">
            <label for="phone">Contact Number</label>
            <input type="text" class="form-control" name="phone" id="phone" placeholder="Contact no" />
        </div>
        <!-- Terms Checkbox -->
        <div class="form-check mb-3 form-group">
            <input type="checkbox" class="form-check-input" id="agree-term" name="agree-term" />
            <label class="form-check-label" for="agree-term">I agree to the <a href="#" class="text-primary">Terms of Service</a></label>
        </div>

        <!-- Submit Button -->
        <div class="form-group form-button">
            <button type="submit" class="form-submit btn btn-primary w-100">Sign Up</button>
        </div>

        <!-- Login Link -->
        <div class="text-center mt-3">
            <a href="Login-reg.jsp" class="text-decoration-none">I am already a member</a>
        </div>
    </form>
</div>
<script src="js/jquery-3.7.1.min.js"></script>
<%--<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--%>
<%--<link rel="stylesheet" href="alert/dist/sweetalert.css">--%>
</body>
</html>
