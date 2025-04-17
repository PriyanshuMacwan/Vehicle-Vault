<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List City</title>
</head>
<body>
 
      
      <table border="1">
      
      
      <!-- First row -->
        <tr> 
         
            <th>City Id </th>
            <th>City Name </th>
            <th>State Id </th>
        
        
        </tr>
      
     <c:forEach items="${cityList}" var="city">
      
      
     <!-- Second Row --> 
      
      <tr> 
        
        <td>${city.cityId}</td>
        <td>${city.cityName}</td>
        <td>${city.stateId}</td>
      </tr>
      
      
      </c:forEach>
      
      </table>
 
</body>
</html>