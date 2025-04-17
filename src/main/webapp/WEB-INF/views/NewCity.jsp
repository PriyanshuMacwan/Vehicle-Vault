<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New City</title>
</head>
</head>

<body>  
  <h2> New City </h2>
  
  <form action = "savecity" method="POST">
  
  
  <input type="text" name="cityName" placeholder="City Name"> <br><br> 
  
  <label name="stateId"> Choose your state:</label>
  <select name="stateId" id="stateId"> 
  
    <c:forEach items="${stateList}" var="state">
  
      <option value="${state.stateId}">${state.stateName}</option>
      
    </c:forEach>   
  </select> <br><br>
    
    
   <input type="submit" value="Submit">     
 

  </form>
  

</body>
</html>

