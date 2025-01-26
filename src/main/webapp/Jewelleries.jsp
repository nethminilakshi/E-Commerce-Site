<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/18/2025
  Time: 12:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jewelleries</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <style>

        .banner-container {
            position: relative;
            overflow: hidden;
            background-color: #fff;
        }

        .banner-image {
            width: 100%;
            height: 600px;
            object-fit: cover;
        }

        .legacy-text {
            position: absolute;
            top: 50%;
            left: 10%;
            transform: translateY(-50%);
            z-index: 2;
        }

        .since-text {
            font-size: 120px;
            color: rgba(200, 200, 200, 0.3);
            font-family: serif;
            font-style: italic;
            line-height: 1;
        }

        .crafting-text {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
        }

        .carousel-control-prev,
        .carousel-control-next {
            width: 50px;
            height: 50px;
            background-color: rgba(0, 0, 0, 0.3);
            border-radius: 50%;
            top: 50%;
            transform: translateY(-50%);
            margin: 0 20px;
        }

        .carousel-indicators {
            bottom: 20px;
        }

        .carousel-indicators button {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            margin: 0 5px;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .carousel-indicators .active {
            background-color: #000;
        }

        .product-card {
            background: #f8f9fa;
            border-radius: 8px;
            transition: transform 0.3s ease;
            height: 100%;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .product-image {
            padding: 20px;
            height: 250px;
            object-fit: contain;
        }
        .product-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        .product-category {
            color: #6c757d;
            font-size: 0.9rem;
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

        .bg-customNav{
            background-color: #997C70;
        }

        .bg-customLinks{
            background-color: #FDF7F4;
        }
    </style>
</head>
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

<div class="container my-4">
    <div class="row ">
    <div class="col-md-3">
        <div class="category-menu rounded">
            <div class="bg-secondary text-white p-3">
                <h5 class="mb-0">CATEGORY</h5>
            </div>
            <div class="list-group list-group-flush">
                <a href="Clothing%20fashion.jsp" class="list-group-item list-group-item-action"> Clothing</a>
                <a href="Jewelleries.jsp" class="list-group-item list-group-item-action">Jewellery</a>
                <a href="GiftItems.jsp" class="list-group-item list-group-item-action">Gift Items</a>
                <a href="#" class="list-group-item list-group-item-action">Electronics</a>

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
        <div class="col-md-9">
<div id="jewelryBanner" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#jewelryBanner" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#jewelryBanner" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#jewelryBanner" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>

    <div class="carousel-inner ">
        <div class="carousel-item active">
            <div class="banner-container">
                <img src="Assets/images/Vogue-Jewellers-Banner-1920x1000-1.jpg" alt="Jewelry Model" class="banner-image">
                <div class="legacy-text">
<%--                    <h2 class="crafting-text">Crafting Legacy</h2>--%>
<%--                    <div class="since-text">Since 1962</div>--%>
                </div>
            </div>
        </div>
        <!-- Additional carousel items can be added here -->
    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#jewelryBanner" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#jewelryBanner" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
        </div>

</div>
    <div class="card border-0 shadow-sm overflow-hidden">
        <div class="card-body p-4 bg-white position-relative">
            <!-- Gold splash background -->
            <img src="Assets/images/diamond%20duzzel.jpg" alt="Gold Splash" class="gold-splash h-50">

            <!-- Main content -->
            <div class="content-wrapper row align-items-center">
                <!-- Left section with logo and brand -->
                <div class="col-md-5">
                    <div class="d-flex align-items-center gap-3">
                    </div>
                </div>

                <!-- Right section with offer text and button -->
                <div class="col-md-7">
                    <h2 class="fs-3 fw-bold mb-4 pe-5">
                        Up to 45% Off on Selected Diamond and Precious Stone Jewellery
                    </h2>
                    <button class="btn btn-dark px-4 py-2 text-uppercase fw-semibold">
                        Inquire Now
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <h1 class="text-center mb-5">Our Best Sellers</h1>

        <div class="row g-4">
            <!-- Pendant -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="product-card p-3">
                    <img src="Assets/images/j1.jpg" alt="Rose Gold Diamond Pendant" class="img-fluid product-image w-100">
                    <div class="text-center mt-3">
                        <h2 class="product-title">Pendant</h2>
                        <p class="product-category mb-0">Diamonds Pendants</p>
                        <div class="product-price">Rs.15900/=</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (120)
                            </div>
                            <div class="product-sales">400 sold</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Ear studs -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="product-card p-3">
                    <img src="Assets/images/j2.jpg" alt="Ruby Ear Studs" class="img-fluid product-image w-100">
                    <div class="text-center mt-3">
                        <h2 class="product-title">Ear studs & Earring</h2>
                        <p class="product-category mb-0">Ruby Earrings</p>
                        <div class="product-price">Rs. 3400/=</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (150)
                            </div>
                            <div class="product-sales">190 sold</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Ring -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="product-card p-3">
                    <img src="Assets/images/j3.jpg" alt="Ladies Ring" class="img-fluid product-image w-100">
                    <div class="text-center mt-3">
                        <h2 class="product-title">Ring</h2>
                        <p class="product-category mb-0">Ladies Rings</p>
                        <div class="product-price">Rs.6700/=</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (220)
                            </div>
                            <div class="product-sales">541 sold</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Necklace -->
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="product-card p-3">
                    <img src="Assets/images/j4.jpg" alt="Diamond Necklace" class="img-fluid product-image w-100">
                    <div class="text-center mt-3">
                        <h2 class="product-title">Necklace</h2>
                        <p class="product-category mb-0">Diamond Necklaces</p>
                        <div class="product-price">Rs. 29800/=</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (89)
                            </div>
                            <div class="product-sales">348 sold</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-4">

<%--            ear ring--%>
            <div class="col-12 col-sm-6 col-lg-3">
                <div class="product-card p-3">
                    <img src="Assets/images/Ear-studs-Earring-1000x1000-1.jpg" alt="Rose Gold Diamond Pendant" class="img-fluid product-image w-100">
                    <div class="text-center mt-3">
                        <h2 class="product-title">Earring</h2>
                        <p class="product-category mb-0">Studs-Earring</p>
                        <div class="product-price">Rs.25400/=</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (120)
                            </div>
                            <div class="product-sales">40 sold</div>


                        </div>
                    </div>
                </div>
            </div>


<%--    Pendant--%>
    <div class="col-12 col-sm-6 col-lg-3">
        <div class="product-card p-3">
            <img src="Assets/images/Pendant-22972040438-1000x1000-1.jpg" alt="Rose Gold Diamond Pendant" class="img-fluid product-image w-100">
            <div class="text-center mt-3">
                <h2 class="product-title">Pendant</h2>
                <p class="product-category mb-0">Diamonds Pendants</p>
                <div class="product-price">Rs.18900/=</div>
                <div class="d-flex justify-content-between align-items-center mt-2">
                    <div class="product-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        (115)
                    </div>
                    <div class="product-sales">34 sold</div>
                </div>
            </div>
        </div>
    </div>
        </div>
    </div>
</div>
</body>
</html>
