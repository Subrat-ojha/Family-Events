<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addEventcss.css">
</head>
<body>
<h1>This is addEvent page</h1>
<form action="addEvent" method="POST">
<label for="eventName">Event Name</label>
<input type="text" name="eventName" id="eventName">
<label for="eventDate">Event Date</label>
<input type="text" name="eventDate" id="eventDate">

<br>
<input type="submit" value="add event">
</form>



<c:if test="${not empty msg}">
<p>${msg}</p>
</c:if>


<c:if test="${not empty event}">
<p>${event}</p>
</c:if>


</body>
</html>