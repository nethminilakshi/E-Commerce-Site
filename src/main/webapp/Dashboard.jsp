<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/19/2025
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
<link rel="stylesheet" href="css/Dashboard.css">
    <link rel="stylesheet" href="css/Dashboard-content.css">
</head>
<body>
<div class="container">

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

        <section id="DashboardForm">
            <div class="container">
                <div class="breadcrumb">
                    <a href="#">Home</a> &gt; <a href="#">E-commerce</a> &gt; Product Detail
                </div>

                <div class="product-detail">
                    <div class="product-image">
                        <img src="Assets/images/d2.jpg" alt="Trainers">
                    </div>
                    <div class="product-info">
                        <h1>Styles</h1>
                        <div class="rating">
                            <span>4.6 ★</span>
                            <p>Choose your own Choice</p>
                        </div>
                        <div class="price">$76</div>
                        <div class="size-guide">
                            <a href="#">Size Guide</a>
                        </div>
                        <div class="actions">
                            <select>
                                <option value="">Select size</option>
                                <option value="1">S</option>
                                <option value="2">M</option>
                                <option value="3">L</option>
                            </select>
                            <button>Add to Bag</button>
                        </div>
                        <div class="payment-options">
                            <img src="Assets/images/visa-card-removebg-preview.png" alt="Visa">
                            <img src="Assets/images/master-card-removebg-preview.png" alt="Mastercard">
                            <img src="Assets/images/payremovebg-preview.png" alt="Paypal">
                        </div>
                        <div class="free-delivery">FREE Delivery & Returns</div>
                    </div>
                </div>
            </div>
            <div class="dashboard-cards">
                <div class="card products">
                    <h2>120</h2>
                    <p>Products</p>
                </div>
                <div class="card categories">
                    <h2>15</h2>
                    <p>Categories</p>
                </div>
                <div class="card users">
                    <h2>230</h2>
                    <p>Users</p>
                </div>
            </div>
        </section>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-7PrySNU9ewAWYtE5BuWgouHekOjf7KjHKehsnBJKPU0pyIz9fzMXpjnl3/Ntr2M+"
        crossorigin="anonymous"></script>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
