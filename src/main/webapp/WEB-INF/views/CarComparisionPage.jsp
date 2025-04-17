<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Car Comparison</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #ffffff;
            font-family: 'Poppins', sans-serif;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 30px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #ff8800;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        h2 img {
            width: 120px;
            margin-right: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 2px solid #ff8800; /* Orange Borders */
            border-radius: 8px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ff8800; /* Orange Accents */
        }

        th {
            background: #ff8800;
            color: white;
            font-weight: bold;
        }

        td {
            background: #fdfdfd;
        }

        .header-cell {
            font-weight: bold;
            background: #fafafa;
            color: #ff8800;
        }
    </style>
</head>
<body> 

         <h2>
            <img src="https://thumbs.dreamstime.com/b/black-white-classic-car-vector-illustration-retro-vintage-jeep-good-your-logo-graphic-resourse-poster-banner-etc-342127747.jpg" alt="Graphic Car Icon" >
            Car Comparison
        </h2>
    
    
    
    <div class="container">
    
        <table class="table">
            
            
            <tr>
               <th>Make</th>
               
               <c:forEach items="${carList}" var="car">  
                <td>${car.make}</td>
                </c:forEach>
                
            </tr>
            
            
            <tr>
            
            <td class="header-cell">Model</td>
            
               <c:forEach items="${carList}" var="car">
               
                <td>${car.model}</td>
                
                </c:forEach>

            </tr>
            
            
            <tr>
            <td class="header-cell">Year</td>
               <c:forEach items="${carList}" var="car">
  
                <td>${car.year }</td>
                </c:forEach>
                
            </tr>
            
            
            <tr>
            <td class="header-cell">Price</td>
               <c:forEach items="${carList}" var="car">
       
                <td>${car.price}</td>
                </c:forEach>
                
            </tr>
            
            <tr>
             <td class="header-cell">Displacement</td>
               <c:forEach items="${carList}" var="car">
               
                <td>${car.engineDisplacement}</td>
                </c:forEach>
            </tr>
            
            <tr>
             <td class="header-cell">Fuel</td>
               <c:forEach items="${carList}" var="car">
                
                <td>${car.fuelType}</td>
                </c:forEach>
            </tr>
            
            
            
             <tr>
             <td class="header-cell">Fuel</td>
               <c:forEach items="${carList}" var="car">
                
                <td>${car.fuelType}</td>
                </c:forEach>
            </tr>
            
            
        </table>
    
    </div>
</body>
</html>