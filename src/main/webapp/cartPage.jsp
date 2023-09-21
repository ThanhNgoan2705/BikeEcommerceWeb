<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head><base target="_parent">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/css/mdb.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/css/all.min.css">
    <link rel="stylesheet" href="assets\css\cart.css">
    <style>
        INPUT:-webkit-autofill,SELECT:-webkit-autofill,TEXTAREA:-webkit-autofill{animation-name:onautofillstart}INPUT:not(:-webkit-autofill),SELECT:not(:-webkit-autofill),TEXTAREA:not(:-webkit-autofill){animation-name:onautofillcancel}@keyframes onautofillstart{}@keyframes onautofillcancel{}
    </style>
</head>
<body>
<!--Main Navigation-->
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
<main class="mb-6">
    <div class="container">
        <section class="h-100 h-custom" style="background-color: #d2c9ff;">
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
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-lg-8">
                                        <div class="p-5">
                                            <div class="d-flex justify-content-between align-items-center mb-5">
                                                <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                                                <h6 class="mb-0 text-muted">3 items</h6>
                                            </div>
                                            <hr class="my-4">

                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img
                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp"
                                                            class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted">Shirt</h6>
                                                    <h6 class="text-black mb-0">Cotton T-shirt</h6>
                                                    <a href="" class="text-muted "
                                                    ><small
                                                    ><i class="fas fa-heart  mt-2 me-2"></i>Move to wish
                                                        list</small
                                                    ></a
                                                    >
                                                </div>
                                                <div class="col-md-2 mb-4 mb-md-0">
                                                    <div class="form-outline mb-4">
                                                        <input
                                                                type="number"
                                                                id="typeNumber"
                                                                class="form-control"
                                                                value="1"
                                                                min="1"
                                                        />
                                                        <label class="form-label" for="typeNumber"
                                                        >Quantity</label
                                                        >
                                                    </div>


                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-3 offset-lg-1 ">
                                                    <h5 class="mb-2">
                                                        <s class="text-muted me-2 small align-middle">$119</s
                                                        ><span class="align-middle">$101</span>
                                                    </h5>
                                                    <p class="text-danger"><small>You save 15%</small></p>
                                                </div>


                                                <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                    <a href="#!" class="text-muted"><i class="fas fa-times"></i></a>
                                                </div>
                                            </div>

                                            <hr class="my-4">
                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img
                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img6.webp"
                                                            class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted">Shirt</h6>
                                                    <h6 class="text-black mb-0">Cotton T-shirt</h6>
                                                    <a href="" class="text-muted "
                                                    ><small
                                                    ><i class="fas fa-heart  mt-2 me-2"></i>Move to wish
                                                        list</small
                                                    ></a
                                                    >
                                                </div>
                                                <div class="col-md-2 mb-4 mb-md-0">
                                                    <div class="form-outline mb-4">
                                                        <input
                                                                type="number"
                                                                id="typeNumber"
                                                                class="form-control"
                                                                value="1"
                                                                min="1"
                                                        />
                                                        <label class="form-label" for="typeNumber"
                                                        >Quantity</label
                                                        >
                                                    </div>


                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-3 offset-lg-1">
                                                    <h5 class="mb-2">
                                                        <s class="text-muted me-2 small align-middle">$119</s
                                                        ><span class="align-middle">$101</span>
                                                    </h5>
                                                    <p class="text-danger"><small>You save 15%</small></p>
                                                </div>


                                                <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                    <a href="#!" class="text-muted"><i class="fas fa-times"></i></a>
                                                </div>
                                            </div>

                                            <hr class="my-4">
                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img
                                                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img7.webp"
                                                            class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted">Shirt</h6>
                                                    <h6 class="text-black mb-0">Cotton T-shirt</h6>
                                                    <a href="" class="text-muted "
                                                    ><small
                                                    ><i class="fas fa-heart  mt-2 me-2"></i>Move to wish
                                                        list</small
                                                    ></a
                                                    >
                                                </div>
                                                <div class="col-md-2 mb-4 mb-md-0">
                                                    <div class="form-outline mb-4">
                                                        <input
                                                                type="number"
                                                                id="typeNumber"
                                                                class="form-control"
                                                                value="1"
                                                                min="1"
                                                        />
                                                        <label class="form-label" for="typeNumber"
                                                        >Quantity</label
                                                        >
                                                    </div>


                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-3 offset-lg-1">
                                                    <h5 class="mb-2">
                                                        <s class="text-muted me-2 small align-middle">$119</s
                                                        ><span class="align-middle">$101</span>
                                                    </h5>
                                                    <p class="text-danger"><small>You save 15%</small></p>
                                                </div>


                                                <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                    <a href="#!" class="text-muted"><i class="fas fa-times"></i></a>
                                                </div>
                                            </div>

                                            <hr class="my-4">

                                            <div class="pt-5">
                                                <h6 class="mb-0"><a href="#!" class="text-body"><i
                                                        class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 bg-grey">
                                        <div class="p-5">
                                            <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                                            <hr class="my-4">

                                            <div class="d-flex justify-content-between mb-4">
                                                <h5 class="text-uppercase">items 3</h5>
                                                <h5>€ 132.00</h5>
                                            </div>

                                            <h5 class="text-uppercase mb-3">Shipping</h5>

                                            <div class="mb-4 pb-2">
                                                <select class="select">
                                                    <option value="1">Standard-Delivery- €5.00</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                    <option value="4">Four</option>
                                                </select>
                                            </div>

                                            <h5 class="text-uppercase mb-3">Give code</h5>

                                            <div class="mb-5">
                                                <div class="form-outline">
                                                    <input type="text" id="form3Examplea2"
                                                           class="form-control form-control-lg"/>
                                                    <label class="form-label" for="form3Examplea2">Enter your
                                                        code</label>
                                                </div>
                                            </div>
                                            <!-- Section: Details -->
                                            <div class="mb-5">
                                                <p class="text-primary">
                                                    <i class="fas fa-info-circle mr-1"></i> Do not delay the
                                                    purchase, adding items to your cart does not mean booking
                                                    them.
                                                </p>
                                            </div>

                                            <div class="mb-5">
                                                <h5 class="mb-4">Expected shipping delivery</h5>

                                                <p class="mb-0">Thu., 12.03. - Mon, 16.03.</p>
                                            </div>

                                            <div>
                                                <h5 class="mb-4">We accept</h5>

                                                <img
                                                        class="mr-2"
                                                        width="45px"
                                                        src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                                                        alt="Visa"
                                                />
                                                <img
                                                        class="mr-2"
                                                        width="45px"
                                                        src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
                                                        alt="American Express"
                                                />
                                                <img
                                                        class="mr-2"
                                                        width="45px"
                                                        src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                                                        alt="Mastercard"
                                                />
                                                <img
                                                        class="mr-2"
                                                        width="45px"
                                                        src="https://mdbootstrap.com/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png"
                                                        alt="PayPal acceptance mark"
                                                />
                                            </div>
                                            <!-- Section: Details -->

                                            <hr class="my-4">

                                            <div class="d-flex justify-content-between mb-5">
                                                <h5 class="text-uppercase">Total price</h5>
                                                <h5>€ 137.00</h5>
                                            </div>

                                            <button type="button" class="btn btn-dark btn-block btn-lg"
                                                    data-mdb-ripple-color="dark">Register
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/js/all.min.js"></script>
<script type="text/javascript">{
}</script>
</body>

</html>