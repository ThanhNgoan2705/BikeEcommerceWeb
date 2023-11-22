<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/4/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xe Điện Long Vũ</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%--    fontAwesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <%--    MDB CSS--%>
    <style>INPUT:-webkit-autofill,SELECT:-webkit-autofill,TEXTAREA:-webkit-autofill{animation-name:onautofillstart}INPUT:not(:-webkit-autofill),SELECT:not(:-webkit-autofill),TEXTAREA:not(:-webkit-autofill){animation-name:onautofillcancel}@keyframes onautofillstart{}@keyframes onautofillcancel{}</style>
    <link href="mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="mdb/css/mdb.min.css" rel="stylesheet">
    <link href="mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="mdb/css/style.css" rel="stylesheet">
    <link href="mdb/css/default.css" rel="stylesheet">

</head>
<body class="homepage-v2 hidden-sn white-skin animated">
<!-- Navigation -->
<%@ include file="default/header.jsp"%>
<!-- Navigation -->

<div class="container my-5 py-5 mt-5 z-depth-1">
    <!--Section: Content-->
    <section class="px-md-5 mx-md-5 text-center text-lg-left dark-grey-text">


        <!--Grid row-->
        <div class="row d-flex justify-content-center">

            <!--Grid column-->
            <div class="col-md-6">

                <!-- Default form login -->
                <form class="text-center" action="login" method="post">

                    <p class="h4 mb-4">Log in</p>

                    <!-- Email -->
                    <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="E-mail" name="email">

                    <!-- Password -->
                    <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password" name="pass">

                    <div class="d-flex justify-content-around">
                        <div>
                            <!-- Remember me -->
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                                <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                            </div>
                        </div>
                        <div>
                            <!-- Forgot password -->
                            <a href="forgotPassword.jsp">Forgot password?</a>
                        </div>
                    </div>

                    <!-- Sign in button -->
                    <button class="btn btn-info btn-block my-4" type="submit">Sign in</button>

                    <!-- Register -->
                    <p>Not a member?
                        <a href="register.jsp">Register</a>
                    </p>

                    <!-- Social login -->
                    <p>or sign in with:</p>

                    <a href="#" class="mx-1" role="button"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="mx-1" role="button"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="mx-1" role="button"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="mx-1" role="button"><i class="fab fa-github"></i></a>

                </form>
                <!-- Default form login -->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->


    </section>
    <!--Section: Content-->
</div>
<!-- Footer -->
<%@include file="default/footer.jsp"%>
<!-- Footer -->
<script src="mdb/js/jquery.min.js"></script>
<script src="mdb/js/bootstrap.min.js"></script>
<script src="mdb/js/mdb.min.js"></script>
<script type="text/javascript">
    /* WOW.js init */
    new WOW().init();

    // Tooltips Initialization
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    // Material Select Initialization
    $(document).ready(function () {

        $('.mdb-select').material_select();
    });

    // SideNav Initialization
    $(".button-collapse").sideNav();

</script>
</body>
</html>
