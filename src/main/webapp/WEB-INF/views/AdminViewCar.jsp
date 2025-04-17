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
    <h2> Details</h2>
    
    <img src="${car.carImagePath}" alt="Profile Picture" class="user-image">
    
    <table>
        <tr><th>Car ID:</th><td>${car.carId}</td></tr>
        <tr><th>Make</th><td>${car.make}</td></tr>
        <tr><th>Model</th><td>${car.model}</td></tr>
        <tr><th>Price</th><td>${car.price}</td></tr>
        <tr><th>Year</th><td>${car.year}</td></tr>
        <tr><th>Variant</th><td>${car.variant}</td></tr>
        <tr><th>Mileage</th><td>${car.mileage}</td></tr>
        <tr><th>Fuel Type</th><td>${car.fuelType}</td></tr>
        <tr><th>Transmission Type</th><td>${car.transmissionType}</td></tr>
        <tr><th>Color</th><td>${car.color}</td></tr>
        <tr><th>Status</th><td>${car.status}</td></tr>
        <tr><th>Listing Date</th><td>${car.listingDate}</td></tr>
        <tr><th>Seats</th><td>${car.seats}</td></tr>
        <tr><th>Engine Displacement</th><td>${car.engineDisplacement}</td></tr>
        
    </table>
    
    <a href="adminlistcar" class="btn">Back </a>
</div>

</body>
</html>