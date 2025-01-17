<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lino Shop</title>
    <!-- Bootstrap CSS -->
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

<!-- Main Content -->
<div class="container my-4">
    <div class="row ">
        <!-- Category Menu -->
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
        </div>

        <!-- Main Content Area -->
        <div class="col-md-9">
            <!-- Banner -->
            <div class="mb-4">
                <img src="Assets/images/Now-we-have-the-option-of-delivering-next-day-to-any-location-in-Sri-Lanka-04.jpg" alt="School Supplies" class="img-fluid rounded">
            </div>

            <!-- Products Grid -->
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <%-- Example of how to iterate through products --%>
                <%--
                <c:forEach items="${products}" var="product">
                    <div class="col">
                        <div class="card h-100">
                            <img src="${product.image}" class="card-img-top" alt="${product.name}">
                            <div class="card-body">
                                <h5 class="card-title">${product.name}</h5>
                                <p class="card-text">${product.price}</p>
                                <button class="btn btn-primary">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                --%>
            </div>
        </div>
    </div>

    <!-- Islandwide Delivery Banner -->
    <div class="container-fluid bg-info text-white py-2 mb-4 my-4">
        <div class="container ">
            <div class="d-flex align-items-center justify-content-center">
                <i class="bi bi-truck fs-4 me-2"></i>
                <h4 class="mb-0 "> Islandwide delivery</h4>
            </div>
        </div>
    </div>

    <!-- Special Offers Section -->
    <div class="container mb-4">
        <h2 class="text-info mb-4">SPECIAL OFFERS</h2>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
            <!-- Product 1 -->
            <div class="col">
                <div class="card h-100 position-relative">
                    <div class="badge bg-danger position-absolute"
                         style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                    <img src="Assets/images/lino_waffle_bathrobe_beige_1-300x300.png"
                         class="card-img-top p-3"
                         alt="Coloured Waffle Bathrobe">
                    <div class="card-body">
                        <h5 class="card-title">Coloured Waffle Bathrobe</h5>
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <div>
                                <small class="text-decoration-line-through text-muted">Rs 10,150.00</small>
                                <div class="fs-5 fw-bold text-danger">Rs 7,250.00</div>
                            </div>
                        </div>
                        <small class="text-muted">or up to 4 X Rs1812.50 with Payzy</small>
                        <div class="d-flex justify-content-between mt-3">
                            <div>
                                <button class="btn btn-outline-primary btn-sm me-2">
                                    <i class="bi bi-search"></i>
                                </button>
                                <button class="btn btn-outline-danger btn-sm">
                                    <i class="bi bi-heart"></i>
                                </button>
                            </div>
                            <button class="btn btn-info text-white">BUY NOW</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col">
                <div class="card h-100 position-relative">
                    <div class="badge bg-danger position-absolute"
                         style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                    <img src="Assets/images/unnamed-300x300.jpg"
                         class="card-img-top p-3"
                         alt="Micro Waffle Bathrobe">
                    <div class="card-body">
                        <h5 class="card-title">Micro Waffle Bathrobe</h5>
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <div>
                                <small class="text-decoration-line-through text-muted">Rs 7,300.00</small>
                                <div class="fs-5 fw-bold text-danger">Rs 6,500.00</div>
                            </div>
                        </div>
                        <small class="text-muted">or up to 4 X Rs1625.00 with Payzy</small>
                        <div class="d-flex justify-content-between mt-3">
                            <div>
                                <button class="btn btn-outline-primary btn-sm me-2">
                                    <i class="bi bi-search"></i>
                                </button>
                                <button class="btn btn-outline-danger btn-sm">
                                    <i class="bi bi-heart"></i>
                                </button>
                            </div>
                            <button class="btn btn-info text-white">BUY NOW</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col">
                <div class="card h-100 position-relative">
                    <div class="badge bg-danger position-absolute"
                         style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                    <img src="Assets/images/Snatch4Deals_Plastic_Toothbrush_Holder_SDL073841615_1_97665-ed3e3-300x300.jpg"
                         class="card-img-top p-3"
                         alt="Automatic Toothpaste Dispenser">
                    <div class="card-body">
                        <h5 class="card-title">Automatic Toothpaste Dispenser With Holder</h5>
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <div>
                                <small class="text-decoration-line-through text-muted">Rs 1,700.00</small>
                                <div class="fs-5 fw-bold text-danger">Rs 1,210.00</div>
                            </div>
                        </div>
                        <small class="text-muted">or up to 4 X Rs302.50 with Payzy</small>
                        <div class="d-flex justify-content-between mt-3">
                            <div>
                                <button class="btn btn-outline-primary btn-sm me-2">
                                    <i class="bi bi-search"></i>
                                </button>
                                <button class="btn btn-outline-danger btn-sm">
                                    <i class="bi bi-heart"></i>
                                </button>
                            </div>
                            <button class="btn btn-info text-white">BUY NOW</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col">
                <div class="card h-100 position-relative">
                    <div class="badge bg-danger position-absolute"
                         style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                    <img src="Assets/images/Solar-Wall-Hanging-Light-1-300x300.jpg"
                         class="card-img-top p-3"
                         alt="3W High Quality Solar Garden Light">
                    <div class="card-body">
                        <h5 class="card-title">3W High Quality Solar Garden Light</h5>
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <div>
                                <small class="text-decoration-line-through text-muted">Rs 10,000.00</small>
                                <div class="fs-5 fw-bold text-danger">Rs 8,999.00</div>
                            </div>
                        </div>
                        <small class="text-muted">or up to 4 X Rs2249.75 with Payzy</small>
                        <div class="d-flex justify-content-between mt-3">
                            <div>
                                <button class="btn btn-outline-primary btn-sm me-2">
                                    <i class="bi bi-search"></i>
                                </button>
                                <button class="btn btn-outline-danger btn-sm">
                                    <i class="bi bi-heart"></i>
                                </button>
                            </div>
                            <button class="btn btn-info text-white">BUY NOW</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Special Offers Section - Row 2 -->
        <div class="container mb-4">
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                <!-- Product 5 -->
                <div class="col">
                    <div class="card h-100 position-relative">
                        <div class="badge bg-danger position-absolute"
                             style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                        <img src="Assets/images/Stainless-Steel-Solar-Garden-Lights-01-300x300.jpg"
                             class="card-img-top p-3"
                             alt="Solar Stainless Steel Outdoor Pathway Light">
                        <div class="card-body">
                            <h5 class="card-title">Solar Stainless Steel Outdoor Pathway Light</h5>
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <div>
                                    <small class="text-decoration-line-through text-muted">Rs 2,800.00</small>
                                    <div class="fs-5 fw-bold text-danger">Rs 2,450.00</div>
                                </div>
                            </div>
                            <small class="text-muted">or up to 4 X Rs612.50 with Payzy</small>
                            <div class="d-flex justify-content-between mt-3">
                                <div>
                                    <button class="btn btn-outline-primary btn-sm me-2">
                                        <i class="bi bi-search"></i>
                                    </button>
                                    <button class="btn btn-outline-danger btn-sm">
                                        <i class="bi bi-heart"></i>
                                    </button>
                                </div>
                                <button class="btn btn-info text-white">BUY NOW</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="col">
                    <div class="card h-100 position-relative">
                        <div class="badge bg-danger position-absolute"
                             style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                        <img src="Assets/images/Solar-Wall-Hanging-Light-1-300x300.jpg"
                             class="card-img-top p-3"
                             alt="Solar Wall Hanging Light-Outdoor">
                        <div class="card-body">
                            <h5 class="card-title">Solar Wall Hanging Light-Outdoor</h5>
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <div>
                                    <small class="text-decoration-line-through text-muted">Rs 3,550.00</small>
                                    <div class="fs-5 fw-bold text-danger">Rs 2,350.00</div>
                                </div>
                            </div>
                            <small class="text-muted">or up to 4 X Rs587.50 with Payzy</small>
                            <div class="d-flex justify-content-between mt-3">
                                <div>
                                    <button class="btn btn-outline-primary btn-sm me-2">
                                        <i class="bi bi-search"></i>
                                    </button>
                                    <button class="btn btn-outline-danger btn-sm">
                                        <i class="bi bi-heart"></i>
                                    </button>
                                </div>
                                <button class="btn btn-info text-white">BUY NOW</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 7 -->
                <div class="col">
                    <div class="card h-100 position-relative">
                        <div class="badge bg-danger position-absolute"
                             style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                        <img src="Assets/images/LINO-147-300x300.jpg"
                             class="card-img-top p-3"
                             alt="Non Slip Yoga Mat">
                        <div class="card-body">
                            <h5 class="card-title"> 68" × 24" (6mm)</h5>
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <div>
                                    <small class="text-decoration-line-through text-muted">Rs 4,100.00</small>
                                    <div class="fs-5 fw-bold text-danger">Rs 3,750.00</div>
                                </div>
                            </div>
                            <small class="text-muted">or up to 3 X Rs1250.00 with Payzy</small>
                            <div class="d-flex justify-content-between mt-3">
                                <div>
                                    <button class="btn btn-outline-primary btn-sm me-2">
                                        <i class="bi bi-search"></i>
                                    </button>
                                    <button class="btn btn-outline-danger btn-sm">
                                        <i class="bi bi-heart"></i>
                                    </button>
                                </div>
                                <button class="btn btn-info text-white">BUY NOW</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 8 -->
                <div class="col">
                    <div class="card h-100 position-relative">
                        <div class="badge bg-danger position-absolute"
                             style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                        <img src="Assets/images/tac-tool-1-300x300.jpeg"
                             class="card-img-top p-3"
                             alt="Bell + Howell TAC TOOL Stainless Steel Multi-Tool">
                        <div class="card-body">
                            <h5 class="card-title">Bell + Howell TAC TOOL Stainless Steel Multi-Tool</h5>
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <div>
                                    <small class="text-decoration-line-through text-muted">Rs 4,550.00</small>
                                    <div class="fs-5 fw-bold text-danger">Rs 3,990.00</div>
                                </div>
                            </div>
                            <small class="text-muted">or up to 4 X Rs997.50 with Payzy</small>
                            <div class="d-flex justify-content-between mt-3">
                                <div>
                                    <button class="btn btn-outline-primary btn-sm me-2">
                                        <i class="bi bi-search"></i>
                                    </button>
                                    <button class="btn btn-outline-danger btn-sm">
                                        <i class="bi bi-heart"></i>
                                    </button>
                                </div>
                                <button class="btn btn-info text-white">BUY NOW</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- For dynamic implementation using JSTL -->
        <%--
        <div class="container mb-4">
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                <c:forEach items="${specialOfferProducts}" var="product">
                    <div class="col">
                        <div class="card h-100 position-relative">
                            <div class="badge bg-danger position-absolute" style="top: 0.5rem; left: 0.5rem;">SALE!</div>
                            <img src="${product.imageUrl}" class="card-img-top p-3" alt="${product.name}">
                            <div class="card-body">
                                <h5 class="card-title">${product.name}</h5>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <div>
                                        <small class="text-decoration-line-through text-muted">Rs ${product.originalPrice}</small>
                                        <div class="fs-5 fw-bold text-danger">Rs ${product.salePrice}</div>
                                    </div>
                                </div>
                                <small class="text-muted">or up to 4 X Rs${product.installmentPrice} with Payzy</small>
                                <div class="d-flex justify-content-between mt-3">
                                    <div>
                                        <button class="btn btn-outline-primary btn-sm me-2" onclick="quickView(${product.id})">
                                            <i class="bi bi-search"></i>
                                        </button>
                                        <button class="btn btn-outline-danger btn-sm" onclick="addToWishlist(${product.id})">
                                            <i class="bi bi-heart"></i>
                                        </button>
                                    </div>
                                    <button class="btn btn-info text-white" onclick="buyNow(${product.id})">BUY NOW</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        --%>
    </div>
</div>


<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>