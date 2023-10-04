<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 9/24/2023
  Time: 8:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/resetPass" method="post">
    <input type="hidden" name="token" value="${param.token}">
    <input type="password" name="pass">
    <input type="password" name="rePass">
    <input type="submit" value="reset">
</form>

</body>
</html>
