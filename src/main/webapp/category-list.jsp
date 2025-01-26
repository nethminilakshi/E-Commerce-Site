<%@ page import="lk.ijse.ecommercewebsite.DTO.CategoryDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/25/2025
  Time: 12:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/Category.css">
    <link rel="icon" href="Assest/icon/icons8-coffee-shop-64.png">
</head>
<body>
<!-- ------------------------------------ Navgation Side Bar ------------------------------------ -->


<%
    List<CategoryDTO> categoryDTOList= (List<CategoryDTO>) request.getAttribute("category");
    if (categoryDTOList!=null && !categoryDTOList.isEmpty()){
%>

<table id="categoryTable" class="category-table">
    <thead>
    <tr>
        <th>Category ID</th>
        <th>Category Name</th>
        <th>Description</th>

    </tr>
    </thead>
    <tbody id="category-table-list">
    <% for (CategoryDTO categoryDTO:categoryDTOList) {%>
    <tr>
        <td><%= categoryDTO.getCategoryId() %></td>
        <td><%= categoryDTO.getCategoryName() %></td>
        <td><%= categoryDTO.getDescription() %></td>
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
<script src="js/Category.js"></script>
<script src="js/Navigation.js"></script>
</body>
</html>
