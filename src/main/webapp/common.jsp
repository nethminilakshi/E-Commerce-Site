<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/18/2025
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .category-menu {
            background-color: #f8f9fa;
        }
        .top-links {
            background-color: #f8f9fa;
            font-size: 14px;
        }
        .category-item {
            transition: background-color 0.3s;
        }
        .category-item:hover {
            background-color: #e9ecef;
            cursor: pointer;
        }
        .card {
            transition: transform 0.2s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        .btn-info {
            background-color: #00b0f0;
            border-color: #00b0f0;
        }
        .btn-info:hover {
            background-color: #0099d6;
            border-color: #0099d6;
        }
    </style>
</head>
<body>
<!-- Top Links -->
<div class="top-links py-2">
    <div class="container text-end">
        <a href="index.jsp" class="text-decoration-none text-primary mx-2">HOME</a> |
        <a href="how-to-buy" class="text-decoration-none text-primary mx-2">HOW TO BUY</a> |
        <a href="track-order" class="text-decoration-none text-primary mx-2">TRACK YOUR ORDER</a> |
        <a href="contact" class="text-decoration-none text-primary mx-2">CONTACT US</a>
    </div>
</div>

<!-- Header with Logo and User Controls -->
<header class="py-3 border-bottom">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-3">
                <img src="Assets/images/LogoBanner.png" alt="Lino Shop" class="img-fluid" style="max-width: 200px;">
            </div>
            <div class="col-md-9 text-end">
                <div class="btn-group">
                    <a href="register" class="btn btn-outline-secondary">
                        <i class="bi bi-person"></i> Register
                    </a>
                    <a href="login" class="btn btn-outline-secondary">
                        <i class="bi bi-box-arrow-in-right"></i> Login
                    </a>
                    <a href="wishlist" class="btn btn-outline-secondary">
                        <i class="bi bi-heart"></i> Wishlist (1)
                    </a>
                    <a href="cart" class="btn btn-outline-secondary">
                        <i class="bi bi-cart"></i> Cart (1)
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMain">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarMain">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="shop">SHOP</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="daily-deal">THE DAILY DEAL</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="special-offer">SPECIAL OFFER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="best-seller">BEST SELLER</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search entire store here...">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</body>
</html>
