<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<h1>Add Driver</h1>
<h3>Menu</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/index">Back to menu</a></li>
</ul>
<form action='' method='post'>
    <label>First name:</label><br>
    <input type="text" name='driverName' value="name"/><br>
    <label>License number:</label><br>
    <input type="text" name='license_number' value="number"/><br>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
