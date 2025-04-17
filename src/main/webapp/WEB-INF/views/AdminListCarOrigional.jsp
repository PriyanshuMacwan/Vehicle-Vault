<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car</title>
</head>
<body>
 <h2> List Car</h2>
 
 <table border="1">
  <tr> 
       
       <th>CarId</th>
       <th>Make</th>
       <th>Model</th>
       <th>Year</th>  
       <th>Variant</th>
       <th>Mileage</th>
       <th>FuelType</th>
       <th>Transmission</th>
       <th>Price</th>
       <th>Color</th>
       <th>Description</th>
       <th>Status</th>
       <th>Listing Date</th>
       <th>Registration Number</th>
       <th>User Id</th>
       <th>City Id</th>
       <th>Area Id</th>
       <th>StateId</th>
       <th>Registration Year</th>
       <th>Insurance</th>
       <th>Seats</th>
       <th>kmsDriven</th>
       <th>RTO</th>
       <th>OwnerShip</th>
       <th>Engine Displacement</th>
       <th>No of Air Bags </th>
       
  </tr>
  
  <c:forEach items="${carList}" var="car"> 
  <tr> 
       <td>${car.carId}</td>
       <td>${car.make}</td>
       <td>${car.model}</td>
       <td>${car.year}</td>
       <td>${car.variant}</td>
       <td>${car.mileage}</td>
       <td>${car.fuelType}</td>
       <td>${car.transmissionType}</td>
       <td>${car.price}</td>
       <td>${car.color}</td>
       <td>${car.description}</td>
       <td>${car.status}</td>
       <td>${car.listingDate}</td>
       <td>${car.registrationNum}</td>
       <td>${car.userId}</td>
       <td>${car.cityId}</td>
       <td>${car.areaId}</td>
       <td>${car.stateId}</td>
       <td>${car.registrationYear}</td>
       <td>${car.insurance}</td>
       <td>${car.seats}</td>
       <td>${car.kmsDriven}</td>
       <td>${car.RTO}</td>
       <td>${car.ownerShip}</td>
       <td>${car.engineDisplacement}</td>
       <td>${car.noOfAirBags}</td>
 </tr>
</c:forEach>
</body>
</html>




