<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
  
<html>
<head>
    <title>Insurance List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f4f4f4;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #000;
            color: #fff;
        }
    </style>
</head>
<body>

<h2>Insurance List</h2>
<table>
    <thead>
        <tr>
            <th>Insurance ID</th>
            <th>Insurance Type</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="insurance" items="${insuranceList}">
            <tr>
                <td>${insurance.id}</td>
                <td>${insurance.type}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>