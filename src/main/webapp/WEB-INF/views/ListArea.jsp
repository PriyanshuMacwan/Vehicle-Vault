<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Area</title>
</head>
<body>

<h2>List Area</h2>


  <table border="1"> 
   
   <!-- Table heading -->
    
    <tr> 
       <th> Area Id </th>
      <th> Area Name </th>
      <th> City Id </th>
    </tr>
    
    
    
    
    <!-- Body -->
   
   <c:forEach items="${areaList}" var="area">
   
           <tr>
                   <th>${area.areaId }</th>
                   <th>${area.areaName}</th>
                   <th>${area.cityId}</th>       
          </tr>
     
   </c:forEach> 
     
  </table>

</body>
</html>