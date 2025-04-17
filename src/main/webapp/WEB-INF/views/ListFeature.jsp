<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Feature</title>
</head>
<body>
    
     <table border="1">
     
       <!-- Table head -->
       <tr> 
            <th>Feature Id</th>
            <th>Feature Name</th>
       </tr>
     
     <c:forEach items="${featureList}" var="feature">  
       <tr> 
           <td>${feature.featureId}</td>
           <td>${feature.featureName}</td>
       </tr>
      </c:forEach>
     </table>
</body>
</html>