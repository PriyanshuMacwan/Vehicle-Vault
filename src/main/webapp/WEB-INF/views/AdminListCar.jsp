<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
    
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - Car List</title>

    <!-- Google Fonts & Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700&display=fallback">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">

    <style>
        body {
            font-family: 'Source Sans Pro', sans-serif;
            background-color: #ffffff;
            color: black;
            padding: 20px;
        }

        .card {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.08);
        }

        h2 {
            font-size: 24px;
            font-weight: bold;
            color: black;
            margin-bottom: 20px;
        }

        .table-container {
            max-height: 400px;
            overflow-y: auto;
            border-radius: 6px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        thead {
            position: sticky;
            top: 0;
            background-color: #000;
            color: white;
            font-weight: bold;
        }

        th, td {
            padding: 14px;
            border-bottom: 1px solid #dee2e6;
        }

        tbody tr:hover {
            background-color: #e2e6ea;
            transition: 0.3s;
        }

        .car-image {
            width: 100px;
            height: auto;
            border-radius: 5px;
        }

        .action-buttons {
            display: flex;
            gap: 10px;
        }

        .btn-action {
            font-size: 14px;
            padding: 8px 12px;
            border-radius: 6px;
            cursor: pointer;
            border: 1px solid black;
            font-weight: 600;
            transition: all 0.3s ease-in-out;
        }

        .btn-view { background-color: #f8f9fa; color: black; }
        .btn-edit { background-color: #e9ecef; color: black; }
        .btn-delete { background-color: #dc3545; color: white; border: none; }

        .btn-action:hover {
            background-color: black;
            color: white;
        }

    </style>
</head>
<body>

<div class="card">
    <h2><i class="fas fa-car"></i> Car List</h2>

    <div class="table-container">
        <table class="table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>ID</th>
                    <th>Model</th>
                    <th>Brand</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
             <c:forEach items="${carList}" var="car">  
              <tr>
                    <td><img src="${car.carImagePath}" alt="Car Image" class="car-image"></td>
                    <td>${car.carId}</td>
                    <td>${car.make}</td>
                    <td>${car.model}</td>
                    <td>${car.price}</td>
                    <td class="action-buttons">
                       <a  href="adminviewcar?carId=${car.carId}"> <button class="btn-action btn-view" ><i class="fas fa-eye"></i> View</button></a>
                         <a href="admincarupdatepage?carId=${car.carId}" > <button class="btn-action btn-edit"><i class="fas fa-edit"></i> Update</button></a>
                       <a  href="admincarpage?carId=${car.carId}"> <button class="btn-action btn-delete"><i class="fas fa-trash"></i> Delete</button></a>
                    </td>
                </tr>
              </c:forEach>
                
                   

            </tbody>
        </table>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>