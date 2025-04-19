<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calendar View</title>
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/calenderViewcss.css">
</head>
<body>
    <h2>Event List</h2>

    <table border="1" cellpadding="10">
        <tr>
            <th>Event Name</th>
            <th>Event Date</th>
            
        </tr>

        <c:forEach var="event" items="${events}">
            <tr>
              
                <td>${event.eventName}</td>
                <td>${event.eventDate}</td>
           
            </tr>
        </c:forEach>
    </table>

</body>
</html>
