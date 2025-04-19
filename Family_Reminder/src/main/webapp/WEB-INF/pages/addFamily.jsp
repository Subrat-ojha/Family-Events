<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addFamilycss.css">
</head>
<body>
  <h2>Add Family Member</h2>
<c:if test="${not empty msg}">
    <p style="color: green;">${msg}</p>
</c:if>

<c:if test="${not empty familyMember}">
    <p>Added: ${familyMember.name} - ${familyMember.gender} - ${familyMember.dob}</p>
</c:if>



<!-- Plain HTML form -->
<form action="${pageContext.request.contextPath}/addFamily" method="post">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required />
    <br/>

    <label for="dob">Age:</label>
    <input type="number" id="dob" name="dob" required />
    <br/>

    <label for="gender">Relation:</label>
    <input type="text" id="gender" name="gender" required />
    <br/>

    <input type="submit" value="Add Member" />

</form>

</body>
</html>