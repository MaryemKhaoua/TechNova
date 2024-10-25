<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2>User List</h2>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Identification</th>
        <th>Nationality</th>
        <th>Registration Date</th>
        <th>Account Expiration</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.identification}</td>
            <td>${user.nationality}</td>
            <td><fmt:formatDate value="${user.registrationDate}" pattern="yyyy-MM-dd"/></td>
            <td><fmt:formatDate value="${user.expirationDate}" pattern="yyyy-MM-dd"/></td>
            <td>
                <a href="editUser?id=${user.id}">Edit</a> |
                <a href="deleteUser?id=${user.id}" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br/>
<a href="addUser">Add New User</a>
</body>
</html>
