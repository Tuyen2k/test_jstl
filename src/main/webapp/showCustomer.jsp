<%--
  Created by IntelliJ IDEA.
  User: tuyen
  Date: 21/08/2023
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div>
    <h2>LIST CUSTOMER</h2>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Image</th>
        </tr>
        </thead>
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td><c:out value="${customer.getName()}"></c:out></td>
                <td><c:out value="${customer.getBirthday()}"></c:out></td>
                <td><c:out value="${customer.getAddress()}"></c:out></td>
                <td><img src="<c:out value= "${customer.getImage()}"></c:out>" alt="ảnh"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
