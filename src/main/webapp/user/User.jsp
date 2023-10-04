<%@ page import="hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token" %>
<%@ page import="hcmuaf.edu.vn.BikeEcommerce.model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: hoang hai
  Date: 8/25/2023
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%Token token = (Token) request.getAttribute("token"); %>--%>
<h1>hello xin chaooooo <c:out value="${token.userId}"></c:out></h1>
<h1><c:out value="${user.userName}"></c:out></h1>

</body>
</html>
