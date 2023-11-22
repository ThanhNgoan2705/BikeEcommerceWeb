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

<%--main content--%>
<div class="container my-5 mt-lg-5 pt-lg-5 z-depth-1">

    <!--Section: Content-->
    <section class="dark-grey-text p-5">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-5 mb-4 mb-md-0">

                <div class="view">
                    <img src="https://mdbootstrap.com/img/illustrations/undraw_Group_chat_unwm.svg" class="img-fluid" alt="smaple image">
                </div>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-7 mb-lg-0 mb-4">

                <!-- Form -->
                <form class="" action="/forgotPass" method="post">

                    <!-- Section heading -->
                    <h3 class="font-weight-bold my-3">Enter Your Email</h3>

                    <p class="text-muted mb-4 pb-2">Please enter the email associated with your registered account. We will send a verification code. </p>

                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Enter your email address" aria-label="Enter your email address"
                               aria-describedby="button-addon2" name="email">
                        <div class="input-group-append">
                            <button class="btn btn-md btn-primary rounded-right m-0 px-3 py-2 z-depth-0 waves-effect" type="submit" id="button-addon2">send</button>
                        </div>
                    </div>
                    <small class="form-text black-text"><strong>* Leave your email address </strong></small>
                    <small class="form-text black-text" ><p style="color: red">${error}</p> </small>
                </form>
                <!-- Form -->

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </section>
    <!--Section: Content-->


</div>
<%--main content--%>

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
