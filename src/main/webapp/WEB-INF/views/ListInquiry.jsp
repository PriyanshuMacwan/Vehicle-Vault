<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>List Inquiry</title>
</head>
<body>
    <h2>List Inquiry</h2>
    
    <table border="1">
       
       <tr> 
       <th>Inquiry Id</th>
       <th>car Id</th>
       <th>User Id</th>
       <th>Inquiry Date</th>
       <th>Status</th>
       <th>Message</th>
       </tr>
       
       
       <c:forEach items="${inquiryList}" var="inquiry">
    
       <tr>
       
       <td>${inquiry.inquiryId}</td>
       <td>${inquiry.carId}</td>
       <td>${inquiry.userId}</td>
       <td>${inquiry.inquiryDate}</td>
       <td>${inquiry.status}</td>
       <td>${inquiry.message}</td>
      
      </tr>
      
      </c:forEach>
    
    
    
    </table>
    
</body>
</html>
