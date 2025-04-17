<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Review</title>
</head>
<body>
  
        <h2>New Review</h2>
        
        <form action="savereview" method="POST">
        
         <!-- Rating -->   
         <select name="rating">
          
           <option value="1">1 Star </option>
          <option value="2">2 Star </option>
          <option value="3">3 Star </option>
          <option value="4">4 Star </option>
          <option value="5">5 Star </option>
         </select>    <br><br>
         
         
         <!-- Review text -->
         <label name="reviewText" >Review: </label>
         <input type="text" name="reviewText"> <br><br>    
        
        <!-- anyExtra Comment -->
        <label name="anyExtraComment">Extra Comment:</label>
        <input type="text" name="anyExtraComment">
        
        
        <!-- Submit Button -->
        <input type="submit" value="Submit">
        
        </form>

</body>
</html>

  