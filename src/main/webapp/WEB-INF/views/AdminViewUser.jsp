<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            width: 50%;
            margin: auto;
            background: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        h2 {
            color: #555;
            margin-bottom: 20px;
        }
        .user-image {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ccc;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            background: white;
            border-radius: 8px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #e9ecef;
            color: #333;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .btn {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 20px;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>User Details</h2>
    
    <img src="${user.profilePicturePath}" alt="Profile Picture" class="user-image">
    
    <table>
        <tr><th>User ID:</th><td>${user.userId}</td></tr>
        <tr><th>First Name:</th><td>${user.firstName}</td></tr>
        <tr><th>Last Name:</th><td>${user.lastName}</td></tr>
        <tr><th>Email:</th><td>${user.email}</td></tr>
        <tr><th>Gender:</th><td>${user.gender}</td></tr>
        <tr><th>Contact Number:</th><td>${user.contactNum}</td></tr>
        <tr><th>Role:</th><td>${user.role}</td></tr>
        <tr><th>Created At:</th><td>${user.createdAt}</td></tr>
        <tr><th>Status:</th><td>${user.status}</td></tr>
    </table>
    
    <a href="adminlistuser" class="btn">Back to User List</a>
</div>

</body>
</html>