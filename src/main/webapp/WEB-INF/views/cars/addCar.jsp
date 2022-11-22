<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
<h1>Add Car</h1>
<h3>Menu</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/index">Back to menu</a></li>
</ul>
<form action='' method='post'>
    <label>Model name:</label><br>
    <input type="text" name='name' value="name"/><br>
    <label>Manufacturer id:</label><br>
    <input type="text" name='manufacturer' value="id"/><br>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
