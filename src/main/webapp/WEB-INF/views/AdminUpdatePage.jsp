=<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        input, select {
            width: 100%;
            padding: 5px;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <h1>User Data</h1>
    
    <table>
        <tr>
            <th>User Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Contact Number</th>
            <th>Role</th>
            <th>Create At</th>
            <th>Status</th>
            <th>Action</th>
        </tr>

        <!-- Placeholder for dynamic data rendering -->
        <script>
            function confirmUpdate() {
                return confirm("Are you sure you want to update this user?");
            }
        </script>

        <tr>
            <form action="adminupdateuser?userId=${user.userId}" method="post" onsubmit="return confirmUpdate()">
                <td>${user.userId}</td>
                <td><input type="text" name="firstName" value="${user.firstName}" required></td>
                <td><input type="text" name="lastName" value="${user.lastName}" required></td>
                <td><input type="email" name="email" value="${user.email}" required></td>
                <td><input type="text" name="gender" value="${user.gender}" required></td>
                <td><input type="number" name="contactNum" value="${user.contactNum}" required></td>
                <td><input type="text" name="role" value="${user.role}" required></td>
                <td>${user.createdAt}</td>
                <td>
                    <label for="status">Select Status:</label>
                    <select name="status" required>
                        <option value="ACTIVE">Active</option>
                        <option value="INACTIVE">Inactive</option>
                    </select>
                </td>
                <td><input type="submit" value="Update" class="submit-btn"></td>
            </form>
        </tr>
    </table>

</body>
</html>