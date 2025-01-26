<%@ page import="lk.ijse.ecommercewebsite.DTO.CategoryDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/25/2025
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Category</title>
    <link rel="stylesheet" href="css/Dashboard.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script>
        function loadProductDetails() {
            var categoryId = document.getElementById("productSelect").value;
            if (categoryId) {
                fetch('get-category-details?categoryId=' + categoryId)
                    .then(response => response.json())
                    .then(data => {

                        document.getElementById("categoryName").value = data.categoryName;
                        document.getElementById("categoryId").value = data.categoryId;
                        document.getElementById("description").value = data.description;

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
            background-color: #ececec;
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
                <span class="icon"><img src="Assets/images/dashboard_icon-removebg-preview.png" class="logo"></span>
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
            <a href="user.jsp" id="CustomerForm-button">
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
    <button class="btn btn-dark me-2 rounded my-3" type="button"><a href="category-list" class="fs-4 fw-bolder text-light"> View Category</a></button>

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

<%--   --------------- delete form ----------------%>
    <div class="card shadow-lg p-4 w-75 justify-content-center mx-auto my-5">
        <div class="container mt-5 justify-content-center">
            <h2>Delete Category</h2>
            <form action="delete-category" method="post">
                <div class="mb-3">
                    <label for="productSelect" class="form-label">Select Category</label>
                    <select id="productSelect" class="form-select" name="categoryId" onchange="loadProductDetails()">
                        <option value="">Select a Category</option>
                        <%
                            List<CategoryDTO> categoryList = (List<CategoryDTO>) request.getAttribute("categoryList");
                            if (categoryList != null && !categoryList.isEmpty()) {
                                for (CategoryDTO product : categoryList) {
                        %>
                        <option value="<%= product.getCategoryId()%>"><%= product.getCategoryName() %></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="categoryId" class="form-label">Category Id</label>
                    <input type="text" class="form-control" id="categoryId" name="categoryId" readonly>
                </div>
                <div class="mb-3">
                    <label for="categoryName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="categoryName" name="categoryName">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <input type="text" class="form-control" id="description" name="description">
                </div>


                <button type="submit" class="btn btn-primary">Delete Category</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
