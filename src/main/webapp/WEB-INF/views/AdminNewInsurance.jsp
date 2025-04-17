<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
<html>
<head>
    <title>Add Insurance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
            background: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input, button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: black;
            color: white;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add New Insurance</h2>
    <form action="addInsurance" method="post">
        <label for="insuranceType">Insurance Type:</label>
        <input type="text" id="insuranceType" name="type" required>

        <button type="submit">Add Insurance</button>
    </form>
</div>

</body>
</html>