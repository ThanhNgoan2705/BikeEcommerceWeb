<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base target="_parent">
    <link rel="stylesheet" href="assets/css/cart.css">
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/css/mdb.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/css/all.min.css">
    <style>
        INPUT:-webkit-autofill,SELECT:-webkit-autofill,TEXTAREA:-webkit-autofill{animation-name:onautofillstart}INPUT:not(:-webkit-autofill),SELECT:not(:-webkit-autofill),TEXTAREA:not(:-webkit-autofill){animation-name:onautofillcancel}@keyframes onautofillstart{}@keyframes onautofillcancel{}
    </style>
</head>
<body>
<section class="w3l-banner-slider-main inner-pagehny">
    <div class="breadcrumb-infhny" style="min-height: 10em">
        <div class="top-header-content">
            <header class="tophny-header">
                <div class="container-fluid">
                    <div class="top-right-strip row">
                        <!--/left-->
                        <div class="top-hny-left-content col-lg-6 pl-lg-0">
                            <h6>Upto 30% off on All styles , <a href="#" target="_blank"> Click here for <span
                                    class="fa fa-hand-o-right hand-icon" aria-hidden="true"></span> <span class="hignlaite">More
                    details</span></a></h6>
                        </div>
                        <!--//left-->
                        <!--/right-->
                        <ul class="top-hnt-right-content col-lg-6">

                            <li class="button-log usernhy">
                                <a class="btn-open" href="#">
                                    <span class="fa fa-user" aria-hidden="true"></span>
                                </a>
                            </li>
                            <li class="transmitvcart galssescart2 cart cart box_1">
                                <form action="#" method="post" class="last">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="display" value="1">
                                    <button class="top_transmitv_cart" type="submit" name="submit" value="">
                                        My Cart
                                        <span class="fa fa-shopping-cart"></span>
                                    </button>
                                </form>
                            </li>
                        </ul>
                        <!--//right-->
                        <div class="overlay-login text-left">
                            <button type="button" class="overlay-close1">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </button>
                            <div class="wrap">
                                <h5 class="text-center mb-4">Login Now</h5>
                                <div class="login-bghny p-md-5 p-4 mx-auto mw-100">
                                    <!--/login-form-->
                                    <form action="#" method="post">
                                        <div class="form-group">
                                            <p class="login-texthny mb-2">Email address</p>
                                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                                   placeholder="" required="">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email
                                                with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <p class="login-texthny mb-2">Password</p>
                                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="">
                                        </div>
                                        <div class="form-check mb-2">
                                            <div class="userhny-check">
                                                <label class="check-remember container">
                                                    <input type="checkbox" class="form-check"> <span class="checkmark"></span>
                                                    <p class="privacy-policy">Remember me</p>
                                                </label>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <button type="submit" class="submit-login btn mb-4">Sign In</button>

                                    </form>
                                    <!--//login-form-->
                                </div>
                                <!---->
                            </div>
                        </div>
                    </div>
                </div>
                <!--/nav-->
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid serarc-fluid">
                        <a class="navbar-brand" href="index.html">
                            Spry<span class="lohny">S</span>tore</a>
                        <!-- if logo is image enable this
                                <a class="navbar-brand" href="#index.html">
                                  <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                </a> -->
                        <!--/search-right-->
                        <div class="search-right">

                            <a href="#search" title="search"><span class="fa fa-search mr-2" aria-hidden="true"></span>
                                <span class="search-text">Search here</span></a>
                            <!-- search popup -->


                            <div id="search" class="pop-overlay">
                                <div class="popup">

                                    <form action="#" method="post" class="search-box">
                                        <input type="search" placeholder="Keyword" name="search" required="required" autofocus="">
                                        <button type="submit" class="btn">Search</button>
                                    </form>

                                </div>

                                <a class="close" href="#">×</a>
                            </div>
                            <!-- /search popup -->
                        </div>
                        <!--//search-right-->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon fa fa-bars"> </span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="about.jsp">About</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="about.jsp">What We Offer</a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link" href="contact.jsp">Contact</a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
                <!--//nav-->
            </header>
        </div>
    </div>
</section>
<!--Main layout-->
<main class="mb-6">
    <div class="container">
        <!-- Section: Checkout form -->
        <section class="h-100 h-custom">
            <div class="breadcrumb-contentnhy">
                <div class="container">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0">
                            <li><a href="index.html">Home</a>
                                <span class="fa fa-angle-double-right"></span></li>
                            <li class="active">Product</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="container py-5">
                <div class="row gx-lg-5 d-flex justify-content-center align-items-center">
                    <div class="col-lg-8 mb-4 mb-md-0">
                        <!-- Section: Biling details -->
                        <section class="">
                            <form>
                                <h5 class="mb-4">Shipping address</h5>

                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row mb-4">
                                    <div class="col">
                                        <div class="form-outline">
                                            <input
                                                    type="text"
                                                    id="form6Example1"
                                                    class="form-control"
                                            />
                                            <label class="form-label" for="form6Example1"
                                            >First name</label
                                            >
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-outline">
                                            <input
                                                    type="text"
                                                    id="form6Example2"
                                                    class="form-control"
                                            />
                                            <label class="form-label" for="form6Example2"
                                            >Last name</label
                                            >
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input -->
                                <div class="form-outline mb-4">
                                    <input
                                            type="text"
                                            id="form6Example3"
                                            class="form-control"
                                    />
                                    <label class="form-label" for="form6Example3"
                                    >Company name</label
                                    >
                                </div>

                                <!-- Text input -->
                                <div class="form-outline mb-4">
                                    <input
                                            type="text"
                                            id="form6Example4"
                                            class="form-control"
                                    />
                                    <label class="form-label" for="form6Example4"
                                    >Address</label
                                    >
                                </div>

                                <!-- Email input -->
                                <div class="form-outline mb-4">
                                    <input
                                            type="email"
                                            id="form6Example5"
                                            class="form-control"
                                    />
                                    <label class="form-label" for="form6Example5"
                                    >Email</label
                                    >
                                </div>

                                <!-- Number input -->
                                <div class="form-outline mb-4">
                                    <input
                                            type="number"
                                            id="form6Example6"
                                            class="form-control"
                                    />
                                    <label class="form-label" for="form6Example6"
                                    >Phone</label
                                    >
                                </div>

                                <!-- Message input -->
                                <div class="form-outline mb-5">
                <textarea
                        class="form-control"
                        id="form6Example7"
                        rows="4"
                ></textarea>
                                    <label class="form-label" for="form6Example7"
                                    >Additional information</label
                                    >
                                </div>

                                <h5 class="mb-4">Billing address</h5>

                                <!-- Checkbox -->
                                <div class="form-check mb-2">
                                    <input
                                            class="form-check-input me-2"
                                            type="checkbox"
                                            value=""
                                            id="form6Example8"
                                            checked
                                    />
                                    <label class="form-check-label" for="form6Example8">
                                        Same as shipping address
                                    </label>
                                </div>
                            </form>
                        </section>
                        <!-- Section: Biling details -->
                    </div>

                    <div class="col-lg-4 mb-4 mb-md-0">
                        <!-- Section: Summary -->
                        <section class="shadow-4 p-4 rounded-5 mb-4">
                            <h5 class="mb-5">The total amount of</h5>

                            <div class="d-flex justify-content-between mb-3">
                                <span>Temporary amount </span>
                                <span>$53,98</span>
                            </div>
                            <div class="d-flex justify-content-between">
                                <span>Shipping </span>
                                <span>Gratis</span>
                            </div>
                            <hr class="my-4"/>
                            <div class="d-flex justify-content-between fw-bold mb-5">
                                <span>The total amount of (including VAT) </span>
                                <span>$53,98</span>
                            </div>

                            <button
                                    type="button"
                                    class="btn btn-primary btn-rounded w-100"
                            >
                                Proceed to shipping
                            </button>
                        </section>
                        <!-- Section: Summary -->

                        <!-- Section: Summary -->
                        <section class="shadow-4 p-4 rounded-5">
                            <h5 class="mb-4">Apply promo code</h5>

                            <div class="d-flex align-items-center">
                                <input
                                        type="text"
                                        class="form-control rounded me-1"
                                        placeholder="Promo code"
                                />
                                <button
                                        type="button"
                                        class="btn btn-link btn-rounded overflow-visible"
                                >
                                    Apply
                                </button>
                            </div>
                        </section>
                        <!-- Section: Summary -->
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Checkout form -->
    </div>
</main>
<!--Main layout-->
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/js/all.min.js"></script>
<script type="text/javascript">{
}</script>
</body>
</html>