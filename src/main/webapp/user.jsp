<%@ page import="lk.ijse.ecommercewebsite.UserDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nethu
  Date: 1/25/2025
  Time: 5:57 PM
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
        }
        .product-list-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 30px;
            margin-top: 50px;
        }
        .back-button {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
            transition: transform 0.2s;
        }

        .delete-button a {
            color: white;
            text-decoration: none;
        }
        .back-button:hover {
            transform: scale(1.05);
        }

        #productTable {
            width: 100%;
            margin-top: 20px;
        }
        #productTable thead {
            background-color: rgba(183, 103, 67, 0.59);
        }
        #productTable th, #productTable td {
            vertical-align: middle;
            padding: 12px;
        }
        #productTable tr:nth-child(even) {
            background-color: #ffffff;
        }
        #productTable tr:hover {
            background-color: #ffffff;
            transition: background-color 0.3s ease;
        }

        .user-table{
            width: 95%;
            border-collapse: separate;
            border-spacing: 0;
            margin-left: 22px;
            margin-top: 60px;
            color: #7f5539;
        }
        .delete-user-button {
            background-color: #606290;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 12px;
        }
        .delete-user-button a{
            text-decoration: none;
            color: white;
            font-size: 1rem;
        }
    </style>
</head>
<body>
<div id="navigation" class="navigation">
    <ul>
        <li>
            <a href="#">
                <span class="icon"><img src="images/logo-01.png" class="logo"></span>
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
            <a href="user" id="CustomerForm-button">
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
<div class="container product-list-container">
    <h1 class="mb-4">User List</h1>
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
    <div class="card-body">
        <div class="table-responsive">
            <% List<UserDTO> users = (List<UserDTO>) request.getAttribute("userDtoList");
                if(users!= null && !users.isEmpty()){
            %>


            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">email</th>
                    <th scope="col">role</th>

                    <th scope="col">is_active</th>

                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <%
                    for (UserDTO user : users) {

                %>
                <tr>
                    <th scope="row"><%=user.getUserId()%></th>
                    <td><%=user.getName()%></td>
                    <td><%=user.getEmail()%></td>
                    <td><%=user.getRole()%></td>
                    <td><%=user.isActive()%></td>

                    <td>
                        <form id="deactivateUserForm" action="/EcommeceWeb_war_exploded/deactivateUser" method="POST" style="display:none;">
                            <input type="hidden" name="userId" value="<%=user.getUserId()%>"  > <!-- Pass any required data -->
                        </form>
                        <button class="btn btn-warning btn-sm" onclick="document.getElementById('deactivateUserForm').submit();">
                            Deactivate User
                        </button>
                        <form id="deleteUserForm" action="/EcommeceWeb_war_exploded/deleteUser" method="POST" style="display:none;">
                            <input type="hidden" name="userId"  value="<%=user.getUserId()%>"> <!-- Pass any required data -->
                        </form>

                        <button  class="btn btn-danger btn-sm" onclick="confirmDeletion();">
                            Delete User
                        </button>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

            <% } else { %>
            <p>No products found.</p>
            <% } %>
        </div>


    </div>
    <button id="delete-user" class="delete-user-button"><a href="delete-users">Delete User</a></button>
    <button class="btn btn-secondary back-button" onclick="window.history.back()">← Back</button>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function confirmDeletion() {
        if (confirm("Are you sure you want to delete this user?")) {
            document.getElementById('deleteUserForm').submit();
        }
    }
</script>


</body>
</html>
