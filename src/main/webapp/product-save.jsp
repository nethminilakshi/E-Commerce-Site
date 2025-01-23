<%@ page import="lk.ijse.ecommercewebsite.ProductDTO" %>
<%@ page import="java.util.List" %>
<<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/19/2025
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Caffeine-Corner</title>
    <link rel="icon" href="assest/icon/icons8-coffee-shop-64.png">
    <link rel="stylesheet" href="css/Dashboard.css">
    <link rel="stylesheet" href="css/Products.css">

</head>
<body>

<!-- ------------------------------------ Navgation Side Bar ------------------------------------ -->
<div id="navigation" class="navigation">
    <ul>
        <li>
            <a href="#">
                <span class="icon"><img src="Assets/images/DashBoard%20Logo.png" class="logo"></span>
                <span class="title" style="font-size: 1.5em;font-weight: 500; margin-top: 15px;">Lino.lk</span>
            </a>
        </li>
        <li class="hovered">
            <a href="Dashboard.jsp" id="Dashboard-button">
                <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                <span class="title">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#" id="CustomerForm-button">
                <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                <span class="title" >Customers</span>
            </a>
        </li>
        <li>
            <a href="Product.jsp" id="ProductsForm-button">
                <span class="icon"><ion-icon name="color-fill-outline"></ion-icon></span>
                <span class="title">Products</span>
            </a>
        </li>
        <li>
            <a href="" id="CategoryForm-button">
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

<!-- ------------------------------------ Product Form ------------------------------------ -->
<section id="ProductsForm">
    <div class="productHeader-section">
        <h2> Products <span>Manage</span></h2>
        <button id="add-product" class="add-product-button">Add Product</button>
    </div>

    <!-- -------------- Add Product Form -------------- -->
    <div id="productRegisterForm" class="productRegisterForm">
        <div class="RegisterForm">
            <span id="productRegisterForm-close" class="product-close">&times;</span>
            <h2 id="title">Add Product</h2>
            <img src="assest/image/productRegisterForm.png" >

            <form  action="product" method="post" id="product-form" class="product-form">
                <div class="product-form-row">
                    <input type="text" id="productID" name="productID" placeholder="Product ID" required>
                </div>

                <div class="product-form-row">
                    <input type="text" id="productName" name="productName" placeholder="Product Name" required>
                </div>

                <div class="product-form-row">
                    <input type="text" id="price" name="price" placeholder="Price" required>
                </div>

                <div class="product-form-row">
                    <input type="text" id="category" name="category" placeholder="Category" required>
                </div>

                <div class="product-form-row">
                    <input type="text" id="quantity" name="quantity" placeholder="Quantity" required>
                </div>

                <button id="product-submit" type="submit">Submit</button>
            </form>
        </div>
    </div>

</section>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.51.0/apexcharts.min.js"></script>
<script src="js/Products.js"></script>
</body>
</html>