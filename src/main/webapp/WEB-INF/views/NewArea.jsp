<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> New Area</title>
</head>
<body>


   <h2>New Area</h2>

   <form action="savearea" method="POST">
    <label name="areaName">Enter your area:</label>
    <input type="text" name="areaName"> <br><br>
    
    <label id="cityId">Enter your city</label>  
    
    <select name="cityId">
    
    <c:forEach items="${cityList}" var="city">
      <option value="${city.cityId}">${city.cityName}</option>
      
    </c:forEach>
    </select><br><br>
    
    <input type="submit" value=" Submit">
    
   </form>


</body>
</html>