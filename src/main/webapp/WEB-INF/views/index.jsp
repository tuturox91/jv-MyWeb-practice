<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Menu</h1>
    <ul>
        <li><a href="${pageContext.request.contextPath}/drivers">Show all Drivers</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers/add">Create driver</a></li>
        <li><a href="${pageContext.request.contextPath}/manufacturers/add">Create manufacturer</a></li>
        <li><a href="${pageContext.request.contextPath}/cars/add">Create car</a></li>
        <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add drivers to car</a></li>
    </ul>
</body>
</html>
