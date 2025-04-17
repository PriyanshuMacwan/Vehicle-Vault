<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List State</title>
</head>

<body>
      <h2>List State</h2>
      
     <!-- Creating Table -->
     <table border="1">
       
       <!--  First Row -->
          
          <tr>
                
                <th>State Id</th>
                <th>State Name</th>
             
          </tr>  
      
      <!--  Rest of rows -->
          
     <c:forEach items="${stateList}" var="state">
           
          <tr>
                <td>${state.stateId}</td>
                <td>${state.stateName}</td>
              
          </tr>  
          
    </c:forEach>      
     </table>
</body>
</html>