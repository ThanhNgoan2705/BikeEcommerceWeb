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
<body class="homepage-v2 hidden-sn white-skin animated">

<!-- Navigation -->
<%@ include file="default/header.jsp"%>
<!-- Navigation -->

<!-- Mega menu -->
<div class="container mt-lg-5 pt-5">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark primary-color mt-5">

        <!-- Navbar brand -->
        <a class="font-weight-bold white-text mr-4" href="#">Categories</a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
                aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">

            <!-- Links -->
            <ul class="navbar-nav mr-auto">

                <li class="nav-item dropdown mega-dropdown active">

                    <a class="nav-link dropdown-toggle  no-caret" id="navbarCategories" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Laptop</a>

                    <div class="dropdown-menu mega-menu v-2 row z-depth-1 white" aria-labelledby="navbarCategories">

                        <div class="row mx-md-4 mx-1">

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-5 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Brand</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item mb-0" href="">Sony</a></li>

                                    <li class=""><a class="menu-item" href="">Lenovo</a></li>

                                    <li class=""><a class="menu-item" href="">Apple</a></li>

                                    <li class=""><a class="menu-item" href="">Dell</a></li>

                                    <li class=""><a class="menu-item" href="">Asus</a></li>

                                </ul>

                            </div>

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-md-5 mt-4 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Sales</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item" href="">Laptops Up to 50% Off </a></li>

                                    <li class=""><a class="menu-item" href="">Laptops under $399</a></li>

                                    <li class=""><a class="menu-item" href="">Laptops Up to 50% Off</a></li>

                                    <li class=""><a class="menu-item" href="">Laptops for designers</a></li>

                                    <li class=""><a class="menu-item" href="">Laptops for developers</a></li>

                                </ul>

                            </div>

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Processor Type</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item" href="">Intel Core i5 4th Gen.</a></li>

                                    <li class=""><a class="menu-item" href="">Intel Core i5 5th Gen.</a></li>

                                    <li class=""><a class="menu-item" href="">Intel Core i5 3th Gen.</a></li>

                                    <li class=""><a class="menu-item" href="">Intel Core i5 6th Gen.</a></li>

                                    <li class=""><a class="menu-item" href="">Intel Core i5 7th Gen.</a></li>

                                </ul>

                            </div>

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-5">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Customers opinions</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item" href="">Totam rem aperiam eaque</a></li>

                                    <li class=""><a class="menu-item" href="">Beatae vitae dicta sun</a></li>

                                    <li class=""><a class="menu-item" href="">Quae ab illo inventore</a></li>

                                    <li class=""><a class="menu-item" href="">Nemo enim ipsam</a></li>

                                    <li class=""><a class="menu-item" href="">Neque porro quisquam est</a></li>

                                </ul>

                            </div>

                        </div>

                    </div>

                </li>

                <li class="nav-item dropdown mega-dropdown">

                    <a class="nav-link dropdown-toggle no-caret" id="navbarFeature" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Cameras</a>

                    <div class="dropdown-menu mega-menu v-2 row z-depth-1 white" aria-labelledby="navbarFeature">

                        <div class="row mx-md-4 mx-1">

                            <div class="col-md-12 col-lg-4 sub-menu my-lg-5 mt-5 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Featured</h6>

                                <!-- Featured image -->
                                <div class="view overlay mb-3 z-depth-1">

                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg" class="img-fluid"
                                         alt="First sample image">

                                    <div class="mask flex-center rgba-white-slight">

                                        <p></p>

                                    </div>

                                </div>

                                <h4 class="mb-2"><a class="news-title-2 pl-0" href="">Lorem ipsum dolor sit</a></h4>

                            </div>

                            <div class="col-md-6 col-lg-4 sub-menu my-lg-5 my-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Brands</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item" href="">Canon</a></li>

                                    <li class=""><a class="menu-item" href="">Nikon</a></li>

                                    <li class=""><a class="menu-item" href="">Sony</a></li>

                                    <li class=""><a class="menu-item" href="">GoPro</a></li>

                                    <li class=""><a class="menu-item" href="">Samsung</a></li>

                                </ul>

                            </div>

                            <div class="col-md-6 col-lg-4 sub-menu my-lg-5 my-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Accesories</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item" href="">Excepteur sint</a></li>

                                    <li class=""><a class="menu-item" href="">Sunt in culpa</a></li>

                                    <li class=""><a class="menu-item" href="">Sed ut perspiciatis</a></li>

                                    <li class=""><a class="menu-item" href="">Mollit anim id est</a></li>

                                    <li class=""><a class="menu-item" href="">Accusantium doloremque</a></li>

                                </ul>

                            </div>

                        </div>

                    </div>

                </li>

                <li class="nav-item dropdown mega-dropdown">

                    <a class="nav-link dropdown-toggle no-caret" id="navbarDropdownMenuLink1" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Accesories</a>

                    <div class="dropdown-menu mega-menu v-2 row z-depth-1 white" aria-labelledby="navbarDropdownMenuLink1">

                        <div class="row mx-md-4 mx-1">

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-5 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Featured</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item mb-0" href="">Mouse</a></li>

                                    <li class=""><a class="menu-item" href="">Printer</a></li>

                                    <li class=""><a class="menu-item" href="">Laptop bags</a></li>

                                    <li class=""><a class="menu-item" href="">Software</a></li>

                                    <li class=""><a class="menu-item" href="">Headphones</a></li>

                                </ul>

                            </div>

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-md-5 mt-4 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Related</h6>

                                <!-- Featured image -->
                                <div class="view overlay mb-3 z-depth-1">

                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(43).jpg" class="img-fluid"
                                         alt="First sample image">

                                    <div class="mask flex-center rgba-white-slight">

                                        <p></p>

                                    </div>

                                </div>

                                <h4 class="mb-2"><a class="news-title-2 pl-0" href="">Lorem ipsum dolor sit</a></h4>

                                <p class="font-small text-uppercase dark-grey-text"><i class="far fa-clock-o pr-2"
                                                                                       aria-hidden="true"></i>July 17, 2017 / <i class="far fa-comments px-1" aria-hidden="true"></i> 20
                                </p>

                            </div>

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-4">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">Bestseller</h6>

                                <!-- Featured image -->
                                <div class="view overlay mb-3 z-depth-1">

                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/6.jpg" class="img-fluid"
                                         alt="First sample image">

                                    <div class="mask flex-center rgba-white-slight">

                                        <p></p>

                                    </div>

                                </div>

                                <h4 class="mb-2"><a class="news-title-2 pl-0" href="">Ut labore et dolore magna</a></h4>

                                <p class="font-small text-uppercase dark-grey-text"><i class="far fa-clock-o pr-2"
                                                                                       aria-hidden="true"></i>July 16, 2017 / <i class="far fa-comments px-1" aria-hidden="true"></i> 25
                                </p>

                            </div>

                            <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-5">

                                <h6 class="sub-title text-uppercase font-weight-bold blue-text">

                                    Customers opinion</h6>

                                <ul class="caret-style pl-0">

                                    <li class=""><a class="menu-item" href="">Totam rem aperiam eaque</a></li>

                                    <li class=""><a class="menu-item" href="">Beatae vitae dicta sun</a></li>

                                    <li class=""><a class="menu-item" href="">Quae ab illo inventore</a></li>

                                    <li class=""><a class="menu-item" href="">Nemo enim ipsam</a></li>

                                    <li class=""><a class="menu-item" href="">Neque porro quisquam est</a></li>

                                </ul>

                            </div>

                        </div>

                    </div>

                </li>

            </ul>
            <!-- Links -->

            <!-- Search form -->
            <form class="search-form" role="search">

                <div class="form-group md-form my-0 waves-light">

                    <input type="text" class="form-control" placeholder="Search">

                </div>

            </form>

        </div>
        <!-- Collapsible content -->

    </nav>
    <!-- Navbar -->

</div>
<!-- Mega menu -->

<div class="container mt-5">


    <!--Section: Content-->
    <section class="dark-grey-text mb-5">

        <style>
            .map-container-section {
                overflow:hidden;
                padding-bottom:56.25%;
                position:relative;
                height:0;
            }
            .map-container-section iframe {
                left:0;
                top:0;
                height:100%;
                width:100%;
                position:absolute;
            }
        </style>

        <!-- Section heading -->
        <h3 class="font-weight-bold text-center mb-4">Contact Us</h3>
        <!-- Section description -->
        <p class="text-center w-responsive mx-auto pb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            Fugit, error amet numquam iure provident voluptate esse quasi, veritatis totam voluptas nostrum quisquam
            eum porro a pariatur veniam.</p>

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-lg-5 mb-lg-0 pb-lg-3 mb-4">

                <!-- Form with header -->
                <div class="card">
                    <div class="card-body">
                        <!-- Header -->
                        <div class="form-header blue accent-1">
                            <h3 class="mt-2"><i class="fas fa-envelope"></i> Write to us:</h3>
                        </div>
                        <p class="dark-grey-text">We'll write rarely, but only the best content.</p>
                        <!-- Body -->
                        <div class="md-form">
                            <i class="fas fa-user prefix grey-text"></i>
                            <input type="text" id="form-name" class="form-control">
                            <label for="form-name">Your name</label>
                        </div>
                        <div class="md-form">
                            <i class="fas fa-envelope prefix grey-text"></i>
                            <input type="text" id="form-email" class="form-control">
                            <label for="form-email">Your email</label>
                        </div>
                        <div class="md-form">
                            <i class="fas fa-tag prefix grey-text"></i>
                            <input type="text" id="form-Subject" class="form-control">
                            <label for="form-Subject">Subject</label>
                        </div>
                        <div class="md-form">
                            <i class="fas fa-pencil-alt prefix grey-text"></i>
                            <textarea id="form-text" class="form-control md-textarea" rows="3"></textarea>
                            <label for="form-text">Send message</label>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-light-blue">Submit</button>
                        </div>
                    </div>
                </div>
                <!-- Form with header -->

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-lg-7">

                <!--Google map-->
                <div id="map-container-section" class="z-depth-1-half map-container-section mb-4" style="height: 400px">
                    <iframe src="https://maps.google.com/maps?q=Manhatan&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0"
                            style="border:0" allowfullscreen></iframe>
                </div>
                <!-- Buttons-->
                <div class="row text-center">
                    <div class="col-md-4">
                        <a class="btn-floating blue accent-1">
                            <i class="fas fa-map-marker-alt"></i>
                        </a>
                        <p>New York, 94126</p>
                        <p class="mb-md-0">United States</p>
                    </div>
                    <div class="col-md-4">
                        <a class="btn-floating blue accent-1">
                            <i class="fas fa-phone"></i>
                        </a>
                        <p>+ 01 234 567 89</p>
                        <p class="mb-md-0">Mon - Fri, 8:00-22:00</p>
                    </div>
                    <div class="col-md-4">
                        <a class="btn-floating blue accent-1">
                            <i class="fas fa-envelope"></i>
                        </a>
                        <p>info@gmail.com</p>
                        <p class="mb-0">sale@gmail.com</p>
                    </div>
                </div>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

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

