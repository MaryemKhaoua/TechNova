<%@ page import="java.util.List" %>
<%@ page import="com.technova.bean.User" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>User Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css">
    <style>
        body {
            background-color: #121212;
            color: #E0E0E0;
        }
        h2 {
            color: #BB86FC;
        }
        .btn-custom-create {
            background-color: #03DAC6;
            color: #121212;
        }
        .btn-custom-edit {
            background-color: #FF9800;
            color: #fff;
        }
        .btn-custom-delete {
            background-color: #CF6679;
            color: #fff;
        }
        .table thead {
            background-color: #333;
            color: #BB86FC;
        }
        .table tbody {
            background-color: #424242;
        }
        .table tbody tr td {
            color: #E0E0E0;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2>User Management System</h2>

    <div class="mb-3">
        <a href="<%= request.getContextPath() %>/users/new" class="btn btn-custom-create">Create User</a>
    </div>

    <table class="table table-bordered table-dark table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>ID Document</th>
            <th>Nationality</th>
            <th>Registration Date</th>
            <th>Expiration Date</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<User> users = (List<User>) request.getAttribute("users");
            if (users != null && !users.isEmpty()) {
                for (User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getFirstName() %></td>
            <td><%= user.getLastName() %></td>
            <td><%= user.getPieceIdentification() %></td>
            <td><%= user.getNationality() %></td>
            <td><%= user.getRegistrationDate() %></td>
            <td><%= user.getExpirationDate() %></td>
            <td>
                <a href="<%= request.getContextPath() %>/users/edit/<%= user.getId() %>" class="btn btn-custom-edit">Edit</a>
                <a href="<%= request.getContextPath() %>/users/delete/<%= user.getId() %>" class="btn btn-custom-delete">Delete</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="8" class="text-center">No users found</td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
