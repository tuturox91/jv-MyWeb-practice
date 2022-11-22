<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Manufacturer</title>
</head>
<body>
<h1>Add manufacturer</h1>
<h3>Menu</h3>
<ul>
    <li><a href="${pageContext.request.contextPath}/index">Back to menu</a></li>
</ul>
<form action='' method='post'>
    <label>Manufacturer name:</label><br>
    <input type="text" name='name' value="name"/><br>
    <label>Country:</label><br>
    <input type="text" name='country' value="country"/><br>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
