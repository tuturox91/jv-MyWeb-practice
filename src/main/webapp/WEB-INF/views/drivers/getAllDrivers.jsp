<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
    <link rel="stylesheet" href="./css/maincss.css">
</head>
<body>
<ul>
    <li><a href="${pageContext.request.contextPath}/index">Back to menu</a></li>

</ul>
<h1>All drivers</h1>
<table class="content-table">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>License Number</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <form action="${pageContext.request.contextPath}/drivers/delete..."> <!--ссылка куда надо-->
                <input type='submit' value='Delete driver' class="button-68"/>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>