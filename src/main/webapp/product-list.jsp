<%@ page import="lk.ijse.ecommercewebsite.DTO.ProductDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/23/2025
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product list</title>
    <link rel="icon" href="Assest/icon/icons8-coffee-shop-64.png">
    <link rel="stylesheet" href="css/Products.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
   .btn-outline-custom{
       background-color: #ab8975;
   }
    .btn-outline-custom a{
         text-decoration: none;
         color: white;
    }
</style>
</head>
<body>
<%--<nav class="navbar bg-body-custom">--%>
<%--    <form class="container-fluid justify-content-start">--%>
<%--        <button class="btn btn-outline-custom me-2 " type="button"><a href="product-list" class="fs-4 fw-medium "> View Products</a></button>--%>
<%--        <button class="btn btn-outline-custom me-2 fs-4 fw-bolder" type="button"><a href="product" class="fs-4 fw-medium "> Add Products</a></button>--%>
<%--    </form>--%>
<%--</nav>--%>

<%
    List<ProductDTO> productDTOList= (List<ProductDTO>) request.getAttribute("product");
    if (productDTOList!=null && !productDTOList.isEmpty()){
%>
<table id="productTable" class="product-table">
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Product</th>
        <th>Price</th>
        <th>Category</th>
        <th>Quantity</th>
    </tr>
    </thead>
    <tbody id="product-table-list">
    <% for (ProductDTO productDTO:productDTOList) {%>
    <tr>
        <td><%= productDTO.getProductId() %></td>
        <td><%= productDTO.getProductName() %></td>
        <td><%= productDTO.getPrice() %></td>
        <td><%= productDTO.getCategory() %></td>
        <td><%= productDTO.getQuantity() %></td>
    </tr>
    <%} %>
    </tbody>
</table>
<%
    }
%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.51.0/apexcharts.min.js"></script>
<script src="js/Products.js"></script>
<script src="js/Navigation.js"></script>
</body>
</html>
