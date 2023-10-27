<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vie">
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
<body class="category-v2 hidden-sn white-skin animated">

<!-- Navigation -->
<%@ include file="default/header.jsp"%>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="default/menu.jsp"%>
<!-- Mega menu -->

<!-- Blog section -->
<section>
    <div class="container-fluid white">
        <hr class="mb-5 mt-0">
        <div class="container">

            <!-- Section: Blog v.3 -->
            <section class="mt-5 py-5 text-center text-lg-left">

                <!-- Grid row -->
                <div class="row my-xl-5 py-xl-4">

                    <!-- Grid column -->
                    <div class="col-sm-12 col-md-5 col-xl-5 mb-4">

                        <!-- Image -->
                        <div class="view overlay">
                            <img src="https://mdbootstrap.com/img/Photos/Others/model3.jpg" class="img-fluid z-depth-1" alt="">
                            <div class="mask rgba-white-slight"></div>
                        </div>
                        <!-- Image -->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-sm-12 col-md-6 col-xl-6">

                        <h3 class="dark-grey-text pb-2 font-weight-bold">
                            <strong>About me</strong>
                        </h3>
                        <p class="gold-text mb-4 text-uppercase font-weight-bold">SOME FACTS ABOUT ME</p>
                        <hr>

                        <p class="dark-grey-text mt-4 text-justify">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
                            odit aut fugit, sed quia consequuntur
                            magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
                            ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
                            incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,
                            quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
                            consequatur. Quis autem vel eum iure reprehenderit.</p>

                        <p class="dark-grey-text text-justify">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit
                            aut fugit, sed quia consequuntur
                            magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
                            ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
                            incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>

                        <h5 class="text-right font-weight-bold dark-grey-text mt-5">
                            <em>Anna Doe</em>
                        </h5>
                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </section>
            <!-- Section: Blog v.3 -->

        </div>

    </div>

</section>
<!-- Blog section -->

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

