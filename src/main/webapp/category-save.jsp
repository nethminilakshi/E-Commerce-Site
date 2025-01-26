<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/24/2025
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category-Management</title>
    <link rel="icon" href="assest/icon/icons8-coffee-shop-64.png">
    <link rel="stylesheet" href="css/Dashboard.css">
    <link rel="stylesheet" href="css/Category.css">

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

<%--   Category Form --%>
    <section id="CategoryForm">
        <div class="categoryHeader-section">
            <h2> Category <span>Manage</span></h2>
            <button id="add-category" class="add-category-button">Add category</button>
            <%--        <button id="view-product" class="view-product-button"><a href="product-list">Add Product</a></button>--%>
        </div>

        <!-- -------------- Add Category Form -------------- -->
        <div id="categoryRegisterForm" class="categoryRegisterForm">
            <div class="RegisterForm">
                <span id="categoryRegisterForm-close" class="category-close">&times;</span>
                <h2 id="title">Add Categories</h2>
                <img src="Assets/images/popup_imge-removebg-preview.png" >

                <form  action="add-category" method="post" id="category-form" class="category-form">
                    <div class="category-form-row">
                        <input type="text" id="categoryID" name="categoryID" placeholder="Category ID" required>
                    </div>

                    <div class="category-form-row">
                        <input type="text" id="categoryName" name="categoryName" placeholder="Category Name" required>
                    </div>

                    <div class="category-form-row">
                        <input type="text" id="description" name="description" placeholder="Description" required>
                    </div>


                    <button id="category-submit" type="submit">Submit</button>
                </form>
            </div>
        </div>

        <div class="button-container">
            <button id="view-category" class="view-category-button"><a href="category-list">View Category</a></button>
            <button id="update-category" class="update-category-button"><a href="update-category" >Update Category</a></button>
            <button id="delete-category" class="delete-category-button"><a href="delete-category">Delete Category</a></button>
        </div>
    </section>

</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.51.0/apexcharts.min.js"></script>
<script src="js/Category.js"></script>
<script src="js/Navigation.js"></script>
</body>
</html>
