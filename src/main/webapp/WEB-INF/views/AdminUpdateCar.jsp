<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Car</title>
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
            background: white;
            padding: 25px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #444;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }
        input, select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input:focus, select:focus {
            outline: none;
            border-color: #007bff;
        }
        .btn-submit {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Car</h2>
    
    
    <form action="adminupdatecar" method="post" enctype="multipart/form-data">
    
    <div class="form-group">
      <label>CarId:</label>
      <input type="text" name="carId" value="${car.carId}" readonly>
    </div>
    
    
        <div class="form-group">
            <label>Make:</label>
            <input type="text" name="make" value="${car.make}" required >
        </div>
        
        <div class="form-group">
            <label>Model:</label>
            <input type="text" name="model" value="${car.model}" required>
        </div>
       
        <div class="form-group">
    <label>Car Image:</label>
    <input type="file" name="carImage" >
       </div>
         
        <div class="form-group">
            <label>Year:</label>
            <input type="number" name="year" value="${car.model}" required>
        </div>

        <div class="form-group">
            <label>Variant:</label>
            <input type="text" value="${car.model}" name="variant" required>
        </div>
        
        <div class="form-group">
            <label>Mileage (km/l):</label>
            <input type="number" value="${car.model}" name="mileage">
        </div>
        
        <div class="form-group">
            <label>Fuel Type:</label>
            <select name="fuelType" >
                <option>Petrol</option>
                <option>Diesel</option>
                <option>Electric</option>
                <option>Hybrid</option>
            </select>
        </div>
        
        <div class="form-group">
            <label>Transmission Type:</label>
            <select name="transmissionType" >
               <option value="${car.transmissionType}" selectedDisable>${car.transmissionType}</option>
                <option>Manual</option>
                <option>Automatic</option>
            </select>
        </div>
        
        <div class="form-group">
            <label>Price:</label>
            <input type="number" value="${car.price}" name="price">
        </div>
        
        <div class="form-group">
            <label>Color:</label>
            <input type="text"value="${car.color}" name="color">
        </div>
        
        <div class="form-group">
            <label>Description:</label>
            <input type="text" value="${car.description}" name="description">
        </div>
        
       <div class="form-group">
       <label>Status:</label>
          <select name="status" required>
          <option value="${car.status}">${car.status}</option>
        <option value="Available">Available</option>
        <option value="Sold">Sold</option>
          </select>
        </div> 
        <div class="form-group">
            <label>Registration Number:</label>
            <input type="text" value="${car.registrationNum}" name="registrationNum" >
        </div>
        
        <div class="form-group">
            <label>Registration Year:</label>
            <input type="number" value="${car.registrationYear}" name="registrationYear">
        </div>
        
        <div class="form-group">
            <label>Insurance:</label>
            <input type="text" value="${car.insurance}" name="insurance">
        </div>
        
        <div class="form-group">
            <label>Seats:</label>
            <input type="number" value="${car.seats}" name="seats">
        </div>
        
        <div class="form-group">
            <label>Kms Driven:</label>
            <input type="number" value="${car.kmsDriven}" name="kmsDriven">
        </div>
        
        <div class="form-group">
            <label>RTO:</label>
            <input type="text" value="${car.RTO}" name="RTO">
        </div>
        
        <div class="form-group">
            <label>Ownership:</label>
            <input type="text" value="${car.ownerShip}" name="OwnerShip">
        </div>
        
        <div class="form-group">
            <label>Engine Displacement:</label>
            <input type="text" value="${car.engineDisplacement}" name="engineDisplacement">
        </div>
        
        <div class="form-group">
            <label>Number of Air Bags:</label>
            <input type="number" value="${noOfAirBags}" name="NoOfAirBags">
        </div>
        
        <button type="submit" class="btn-submit">Update Car</button>
    </form>
</div>

</body>
</html>