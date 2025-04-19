<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gift Notes</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/giftNotescss.css">
</head>
<body>

<h1>Gift Notes</h1>

<ul>
    <c:forEach var="note" items="${giftNotes}">
        <li>${note.message}</li>
    </c:forEach>
</ul>

<form action="giftNotes" method="post">
    <label>Gift Note:</label>
    <input type="text" name="message" required>
    <button type="submit">Add</button>
</form>


</body>
</html>
