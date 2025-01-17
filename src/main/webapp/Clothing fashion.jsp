<%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/17/2025
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LGC Shopping</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
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
    .product-badge {
        background-color: #ffeee8;
        color: #ee4d2d;
        font-size: 12px;
        padding: 2px 4px;
        border-radius: 2px;
        display: inline-block;
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
        color: #ee4d2d;
    }
    .product-sales {
        font-size: 12px;
        color: #767676;
    }
    .location-badge {
        font-size: 12px;
        color: #767676;
        padding: 2px 4px;
        background-color: #f5f5f5;
        border-radius: 2px;
    }
</style>

</head>
<body>
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

<!-- Main Content -->
<div class="container my-4">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3">
                <div class="category-menu rounded">
                    <div class="bg-primary text-white p-3">
                        <h5 class="mb-0">CATEGORY</h5>
                    </div>
                    <div class="list-group list-group-flush">
                        <a href="#" class="list-group-item list-group-item-action">Women's Fashion</a>
                        <a href="Mens's%20fashion.jsp" class="list-group-item list-group-item-action">Men's Fashion</a>
                        <a href="#" class="list-group-item list-group-item-action">Electronics</a>
                        <a href="#" class="list-group-item list-group-item-action">Jewellery</a>
                        <a href="#" class="list-group-item list-group-item-action">Gift Items</a>
                    </div>
            </div>

            <div class="card mt-3">
                <div class="card-header">
                    FILTER BY PRICE
                </div>
                <div class="card-body">
                    <input type="range" class="form-range" min="450" max="1900" id="priceRange">
                    <div class="d-flex justify-content-between">
                        <span>Rs450</span>
                        <span>Rs1900</span>
                    </div>
                    <button class="btn btn-info mt-2">FILTER</button>
                </div>
            </div>
        </div>

        <!-- Main Content Area -->
        <div class="col-md-9">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Men's Fashion</li>
                </ol>
            </nav>

            <h1 class="h2">MEN'S FASHION</h1>
            <p>Buy Men's Cotton Shirt, Men's Casual Pants, Men's Wallet, Men's Long Sleeve Shirts, Men's Multi Color Shirt, Men's sportswear Set & Men's Tie Clip online Sri Lanka.</p>

            <div class="row g-3">
                <!-- Product 1 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/shirt1.webp" alt="Scorpion 3D T-Shirt" class="product-image mb-2">
                        <div class="product-badge">Buy More Save More</div>
                        <h3 class="product-title">Man Tees Cool Scorpion 3D Printed Oversized T Shirt</h3>
                        <div class="product-price">Rs. 818</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (2)
                            </div>
                            <div class="product-sales">15 sold</div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Overseas</span>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/shirt2.webp" alt="Cat Print T-Shirt" class="product-image mb-2">
                        <div class="product-badge">Buy More Save More</div>
                        <h3 class="product-title">I Just Baked You Some Cakes Mother Cat Print T Shirt</h3>
                        <div class="product-price">Rs. 1,260</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (1)
                            </div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Overseas</span>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/shirt3.webp" alt="Frog And Toad T-Shirt" class="product-image mb-2">
                        <div class="product-badge">Buy More Save More</div>
                        <h3 class="product-title">Cottagecore Aesthetic Frog And Toad Men Cotton Tops</h3>
                        <div class="product-price">Rs. 1,382</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (11)
                            </div>
                            <div class="product-sales">79 sold</div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Overseas</span>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/S5f458dbeb95746b08e25d080a60d1eb9v.jpg_200x200q90.jpg_.webp" alt="Camo T-shirt" class="product-image mb-2">
                        <h3 class="product-title">Yfashion Men Cotton T-shirt Fashion Landscape Painting</h3>
                        <div class="product-price">Rs. 1,890</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                (12)
                            </div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Western</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-3">
                <!-- Product 5 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/trouser1.webp" alt="Scorpion 3D T-Shirt" class="product-image mb-2">
                        <div class="product-badge">Buy More Save More</div>
                        <h3 class="product-title">
                            Classic Streetwear Casual Men Ribbons Harem Jogging</h3>
                        <div class="product-price">Rs. 2,241
                         </div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (2)
                            </div>
                            <div class="product-sales">15 sold</div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Overseas</span>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/shirt2.webp" alt="Cat Print T-Shirt" class="product-image mb-2">
                        <div class="product-badge">Buy More Save More</div>
                        <h3 class="product-title">I Just Baked You Some Cakes Mother Cat Print T Shirt</h3>
                        <div class="product-price">Rs. 1,260</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (1)
                            </div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Overseas</span>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/shirt3.webp" alt="Frog And Toad T-Shirt" class="product-image mb-2">
                        <div class="product-badge">Buy More Save More</div>
                        <h3 class="product-title">Cottagecore Aesthetic Frog And Toad Men Cotton Tops</h3>
                        <div class="product-price">Rs. 1,382</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                (11)
                            </div>
                            <div class="product-sales">79 sold</div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Overseas</span>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="col-md-3">
                    <div class="product-card p-2">
                        <img src="Assets/images/S5f458dbeb95746b08e25d080a60d1eb9v.jpg_200x200q90.jpg_.webp" alt="Camo T-shirt" class="product-image mb-2">
                        <h3 class="product-title">Yfashion Men Cotton T-shirt Fashion Landscape Painting</h3>
                        <div class="product-price">Rs. 1,890</div>
                        <div class="d-flex justify-content-between align-items-center mt-2">
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                (12)
                            </div>
                        </div>
                        <div class="mt-2">
                            <span class="location-badge">Western</span>
                        </div>
                    </div>
                </div>
            </div>





        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>


</body>
</html>
