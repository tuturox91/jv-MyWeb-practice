<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<h1>Add Driver To Car</h1>
<h3>Menu</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/index">Back to menu</a></li>
</ul>
<form action='' method='post'>
    <label>Driver id:</label><br>
    <input type="text" name='driverId' value="driver id"/><br>
    <label>Car id:</label><br>
    <input type="text" name='carId' value="car id"/><br>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
