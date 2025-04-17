<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Review</title>
</head>
<body>

  <h2>List Review</h2>
    
     <table border="1">
     
       <!-- Table head -->
       <tr> 
            <th>reviewId</th>
            <th>carId</th>
            <th>userId</th>
            <th>rating</th>
            <th>reviewDate</th>
            <th>Review Text</th>
            <th>anyExtraComment</th>
       </tr>
       
       
       <!-- table body -->
        
        
       
       <c:forEach items="${reviewList}" var="review">
       <tr> 
            <th>${review.reviewId}</th>
            <th>${review.carId}</th>
            <th>${review.userId}</th>
            <th>${review.rating}</th>
            <th>${review.reviewDate}</th>
            <th>${review.reviewText}</th>
            <th>${review.anyExtraComment}</th>
       </tr>
     </c:forEach>
     </table>
 
 
    
</body>
</html>