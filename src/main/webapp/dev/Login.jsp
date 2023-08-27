<%--
  Created by IntelliJ IDEA.
  User: hoang hai
  Date: 8/24/2023
  Time: 1:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>

<h2>Login</h2>

<form th:action="/login" method="post">
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="email">
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="pass">
    </div>
    <button type="submit">Login</button>
</form>
<h1>    ${requestScope.loginMessage} </h1>
<div id="popup" style="display: none;">
    <!-- Your popup content here -->
    <p id="popupMessage"></p>
</div>

<%--<script>--%>
<%--    $(document).ready(function() {--%>
<%--        $("#loginForm").submit(function(event) {--%>
<%--            event.preventDefault();--%>

<%--            $.ajax({--%>
<%--                type: "POST",--%>
<%--                url: "/login",--%>
<%--                data: $(this).serialize(),--%>
<%--                success: function(response) {--%>
<%--                    $("#popupMessage").text(response);--%>
<%--                    $("#popup").show();--%>
<%--                },--%>
<%--                error: function(xhr, status, error) {--%>
<%--                    $("#popupMessage").text("Login failed");--%>
<%--                    $("#popup").show();--%>
<%--                }--%>
<%--            });--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>

</body>
</html>
