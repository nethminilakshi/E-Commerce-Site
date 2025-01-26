<%@ page import="lk.ijse.ecommercewebsite.DTO.UserDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/25/2025
  Time: 9:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Users</title>
    <link rel="stylesheet" href="css/Dashboard.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script>
        function loadProductDetails() {
            var id = document.getElementById("productSelect").value;
            if (id) {
                fetch('get-user-details?id=' + id)
                    .then(response => response.json())
                    .then(data => {

                        document.getElementById("userName").value = data.userName;
                        document.getElementById("password").value = data.password;
                        document.getElementById("email").value = data.email;
                        document.getElementById("phone").value = data.phone;

                    });
            }
        }
    </script>
    <style>
        body{
            background-color: #F9F6E6;
        }
        .bg-body-custom{
            background-color: #FBF5DD !important;
        }
        .card{
            background-color: #F9F6E6;
        }

        .btn-outline-custom{

            background-color: rgba(145, 116, 95, 0.72);
            border-color: rgba(63, 62, 61, 0.59);
        }
        .btn-outline-custom a{
            text-decoration: none;
            color: white;
        }
        .btn-outline-custom:hover{
            background-color: rgba(145, 116, 95, 0.72);
            border-color: rgba(63, 62, 61, 0.59);
        }

    </style>
</head>
<body>

<!-- ------------------------------------ Navgation Side Bar ------------------------------------ -->
<div id="navigation" class="navigation">
    <ul>
        <li>
            <a href="#">
                <span class="icon"><img src="Assets/images/DashBoard%20Logo.png" class="logo"></span>
                <span class="title" style="font-size: 1.5em;font-weight: 500; margin-top: 15px;">COZA Store</span>
            </a>
        </li>
        <li class="hovered">
            <a href="Dashboard.jsp" id="Dashboard-button">
                <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                <span class="title">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="user-list" id="CustomerForm-button">
                <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                <span class="title" >Users</span>
            </a>
        </li>
        <li>
            <a href="product-save.jsp" id="ProductsForm-button">
                <span class="icon"><ion-icon name="color-fill-outline"></ion-icon></span>
                <span class="title">Products</span>
            </a>
        </li>
        <li>
            <a href="category-save.jsp" id="CategoryForm-button">
                <span class="icon"><ion-icon name="color-fill-outline"></ion-icon></span>
                <span class="title">Category</span>
            </a>
        </li>
        <li>
            <a href="#" id="OrdersForm-button">
                <span class="icon"><ion-icon name="reader-outline"></ion-icon></span>
                <span class="title">Orders</span>
            </a>
        </li>
        <li>
            <a href="#">
                <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                <span class="title">Settings</span>
            </a>
        </li>
        <li>
            <a href="#">
                <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                <span class="title">Sign Out</span>
            </a>
        </li>
    </ul>
</div>

<div class="main">
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

    <div class="card shadow-lg p-4 w-75 justify-content-center">
        <div class="container mt-5 justify-content-center">
            <h2>Delete Product</h2>
            <form action="delete-product" method="post">
                <div class="mb-3">
                    <label for="productSelect" class="form-label">Select Users</label>
                    <select id="productSelect" class="form-select" name="id" onchange="loadProductDetails()">
                        <option value="">Select a user</option>
                        <%
                            List<UserDTO> userList = (List<UserDTO>) request.getAttribute("userList");
                            if (userList != null && !userList.isEmpty()) {
                                for (UserDTO user : userList) {
                        %>
                        <option value="<%= user.getUserId()%>"><%= user.getName() %></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="id" class="form-label">User ID</label>
                    <input type="text" class="form-control" id="id" name="id" readonly>
                </div>
                <div class="mb-3">
                    <label for="userName" class="form-label">userName</label>
                    <input type="text" class="form-control" id="userName" name="userName">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <textarea class="form-control" id="phone" name="phone"></textarea>
                </div>

                <button type="submit" class="btn btn-primary">Delete User</button>
            </form>
        </div>
    </div>




</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
