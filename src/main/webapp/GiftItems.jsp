<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/18/2025
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Electronics</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
</head>
<style>

    .logo img {
        max-height: 60px;
    }
    .product-card {
        border: 1px solid #dee2e6;
        border-radius: 2px;
        transition: transform 0.2s;
        height: 100%;
    }
    .product-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }
    .product-image {
        height: 200px;
        object-fit: cover;
        width: 100%;
    }

    .product-title {
        font-size: 14px;
        margin: 8px 0;
        height: 40px;
        overflow: hidden;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }
    .product-price {
        color: #ee4d2d;
        font-size: 18px;
        font-weight: 500;
    }
    .product-rating {
        font-size: 12px;
        color: #FADA7A;
    }
    .product-sales {
        font-size: 12px;
        color: #767676;
    }

    .bg-customNav{
        background-color: #997C70;
    }

    .bg-customLinks{
        background-color: #FDF7F4;
    }
</style>
<body>

<!-- Top Links -->
<div class="top-links py-2 bg-customLinks">
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
<nav class="navbar navbar-expand-lg bg-customNav">
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
                <button class="btn  btn-secondary" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container my-4">

    <div class="row ">
        <!-- Category Menu -->
        <div class="col-md-3">
            <div class="category-menu rounded">
                <div class="bg-secondary text-white p-3">
                    <h5 class="mb-0">CATEGORY</h5>
                </div>
                <div class="list-group list-group-flush">
                    <a href="Clothing%20fashion.jsp" class="list-group-item list-group-item-action"> Clothing</a>
                    <a href="Jewelleries.jsp" class="list-group-item list-group-item-action">Jewellery</a>
                    <a href="GiftItems.jsp" class="list-group-item list-group-item-action">Gift Items</a>
<%--                    <a href="#" class="list-group-item list-group-item-action">Electronics</a>--%>

                </div>
            </div>
            <div class="card mt-3">
                <div class="card-header">
                    FILTER BY PRICE
                </div>
                <div class="card-body">
                    <input type="range" class="form-range" min="150" max="5000" id="priceRange">
                    <div class="d-flex justify-content-between">
                        <span>Rs150</span>
                        <span>Rs5000</span>
                    </div>
                    <button class="btn btn-info mt-2">FILTER</button>
                </div>
            </div>
        </div>

        <!-- Main Content Area -->
        <div class="col-md-9">
            <!-- Banner -->
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active">Gift Items</li>
                </ol>
            </nav>


            <div class="row g-3">
                <!-- Product 1 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/g1.webp" alt="rose flower" class="product-image mb-2">
                        <h3 class="product-title">1 PC Valentine rose gift </h3>
                        <div class="product-price">Rs. 1880</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (102)
                            </div>
                            <div class="product-sales">37 sold</div>
                        </div>

                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/g2.webp" alt="Cat Print T-Shirt" class="product-image mb-2">
                        <h3 class="product-title">1 PC Valentine rose gift</h3>
                        <div class="product-price">Rs. 1,260</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (130)
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/g3.webp" alt="Frog And Toad T-Shirt" class="product-image mb-2">
                        <h3 class="product-title">Print Your Photo on a Wood, 6X8 Size, Personalized Gift, Love Gift,</h3>
                        <div class="product-price">Rs. 1,990</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (59)
                            </div>
                            <div class="product-sales">67 sold</div>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/g4.webp" alt="Camo T-shirt" class="product-image mb-2">
                        <h3 class="product-title">Personalized Love Gift, Wooden love heart Picture Frame </h3>
                        <div class="product-price">Rs. 2,750</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                (52)
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
