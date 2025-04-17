<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .search-box {
            text-align: right;
            margin-bottom: 15px;
        }
        input[type="text"] {
            padding: 8px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            padding: 8px 12px;
            background-color: black;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            background: white;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }
        th {
            background-color: #000;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .action-links a {
            padding: 8px 12px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            display: inline-block;
        }
        .view { background-color: #007bff; }
        .delete { background-color: #dc3545; }
        .update { background-color: #28a745; }
        .action-links a:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>User List</h2>
    
    <div class="search-box">
        <form action="searchUser" method="get">
            <input type="text" name="keyword" placeholder="Search by Name">
            <button type="submit">Search</button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listUser}" var="u">
                <tr>
                    <td>${u.firstName} ${u.lastName}</td>
                    <td>${u.status}</td>
                    <td class="action-links">
                        <a href="adminviewuser?userId=${u.userId}" class="view">View</a>
                        <a href="admindeleteuser?userId=${u.userId}" class="delete">Delete</a>
                        <a href="adminupdatepage?userId=${u.userId}" class="update">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>