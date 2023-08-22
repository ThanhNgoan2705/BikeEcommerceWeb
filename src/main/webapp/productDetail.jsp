<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vi">

<head>
    <base target="_parent">
    <link rel="stylesheet" href="assets/css/cart.css">
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet"
          href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/css/mdb.min.css">
    <link rel="stylesheet"
          href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/css/all.min.css">
    <style>
        INPUT:-webkit-autofill, SELECT:-webkit-autofill, TEXTAREA:-webkit-autofill {
            animation-name: onautofillstart
        }

        INPUT:not(:-webkit-autofill), SELECT:not(:-webkit-autofill), TEXTAREA:not(:-webkit-autofill) {
            animation-name: onautofillcancel
        }

        @keyframes onautofillstart {
        }

        @keyframes onautofillcancel {
        }
    </style>

</head>
<body>
<!--Main Navigation-->
<section class="w3l-banner-slider-main inner-pagehny">
    <div class="breadcrumb-infhny">
        <div class="top-header-content">

            <header class="tophny-header">
                <div class="container-fluid">
                    <div class="top-right-strip row">
                        <!--/left-->
                        <div class="top-hny-left-content col-lg-6 pl-lg-0">
                            <h6>Upto 30% off on All styles , <a href="#" target="_blank"> Click here for <span
                                    class="fa fa-hand-o-right hand-icon" aria-hidden="true"></span> <span
                                    class="hignlaite">More
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
                                            <input type="email" class="form-control" id="exampleInputEmail1"
                                                   aria-describedby="emailHelp"
                                                   placeholder="" required="">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your
                                                email
                                                with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <p class="login-texthny mb-2">Password</p>
                                            <input type="password" class="form-control" id="exampleInputPassword1"
                                                   placeholder="" required="">
                                        </div>
                                        <div class="form-check mb-2">
                                            <div class="userhny-check">
                                                <label class="check-remember container">
                                                    <input type="checkbox" class="form-check"> <span
                                                        class="checkmark"></span>
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
                                        <input type="search" placeholder="Keyword" name="search" required="required"
                                               autofocus="">
                                        <button type="submit" class="btn">Search</button>
                                    </form>

                                </div>

                                <a class="close" href="#">×</a>
                            </div>
                            <!-- /search popup -->
                        </div>
                        <!--//search-right-->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon fa fa-bars"> </span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="about.html">About</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="about.html">What We Offer</a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
                <!--//nav-->
            </header>
            <div class="breadcrumb-contentnhy">
                <div class="container">
                    <nav aria-label="breadcrumb">
                        <h2 class="hny-title text-center">Product</h2>
                        <ol class="breadcrumb mb-0">
                            <li><a href="index.html">Home</a>
                                <span class="fa fa-angle-double-right"></span></li>
                            <li class="active">Product</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Main layout-->
<main class="mb-6 mt-3">
    <div class="container">
        <!-- Section: Product details -->
        <section class="mb-9">
            <div class="row gx-lg-5">
                <div class="col-md-6 mb-4 mb-md-0">
                    <div class="ecommerce-gallery" data-mdb-zoom-effect="true" data-mdb-auto-height="true">
                        <div class="row py-3 shadow-5">
                            <div class="col-12 mb-1">
                                <div class="lightbox">
                                    <img
                                            src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp"
                                            alt="White blouse"
                                            class="ecommerce-gallery-main-img active w-100"
                                    />
                                </div>

                            </div>
                            <div class="col-3 mt-1">
                                <img
                                        src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp"
                                        data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp"
                                        alt="White blouse"
                                        class="active w-100"
                                />
                            </div>
                            <div class="col-3 mt-1">
                                <img
                                        src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/12a.webp"
                                        data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/12a.webp"
                                        alt="Blue Jeans Jacket"
                                        class="w-100"
                                />
                            </div>
                            <div class="col-3 mt-1">
                                <img
                                        src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/13a.webp"
                                        data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/13a.webp"
                                        alt="Red Sweatshirt"
                                        class="w-100"
                                />
                            </div>
                            <div class="col-3 mt-1">
                                <img
                                        src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/15a.webp"
                                        data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/15a.webp"
                                        alt="Black Shirt"
                                        class="w-100"
                                />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 mb-4 mb-md-0">
                    <!-- Details -->
                    <div>
                        <h1 class="fw-bold mb-3 h5">Product Name</h1>
                        <div class="d-inline-block">
                            <p class="mb-2 text-uppercase small text-secondary"><a href="" class="text-muted mb-3">level
                                1 name</a>/<a href="" class="text-muted mb-3">level 2 name</a></p>
                        </div>
                        <div class="d-flex text-primary">
                            <ul
                                    class="rating mb-3 me-2"
                                    data-mdb-toggle="rating"
                                    data-mdb-readonly="true"
                                    data-mdb-value="4"
                            >
                                <li>
                                    <i
                                            class="far fa-star fa-sm text-primary ps-0"
                                            title="Bad"
                                    ></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star fa-sm text-primary"
                                            title="Poor"
                                    ></i>
                                </li>
                                <li>
                                    <i class="far fa-star fa-sm text-primary" title="OK"></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star fa-sm text-primary"
                                            title="Good"
                                    ></i>
                                </li>
                                <li>
                                    <i
                                            class="far fa-star fa-sm text-primary"
                                            title="Excellent"
                                    ></i>
                                </li>
                            </ul>
                            <a href=""><strong class="me-2">4/5</strong>(2 reviews)</a>
                        </div>
                        <!-- product price-->
                        <h5 class="mb-3">
                            <s class="text-muted me-2 small align-middle">$119</s
                            ><span class="align-middle">$101
                           <div class="d-flex justify-content-start align-items-lg-start w-100 h-100">
                                        <h5><span class="badge badge-danger ms-2 ">-10%</span></h5>
                                    </div></span>

                        </h5>
                        <!-- product description-->
                        <p class="text-muted">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Ratione accusantium harum repellendus illo mollitia similique
                            atque vitae repudiandae animi dolor? Rem eveniet saepe
                            deserunt aliquam. Enim incidunt quas voluptatibus perferendis.
                        </p>

                        <div class="table-responsive">
                            <table class="table table-sm table-borderless mb-0">
                                <tbody>
                                <tr>
                                    <th class="ps-0 w-25" scope="row">
                                        <strong>Brand</strong>
                                    </th>
                                    <td>Brand-name</td>
                                </tr>
                                <tr>
                                    <th class="ps-0 w-25" scope="row">
                                        <strong>Material</strong>
                                    </th>
                                    <td>Material name</td>
                                </tr>
                                <tr>
                                    <th class="ps-0 w-25" scope="row">
                                        <strong>Supplier</strong>
                                    </th>
                                    <td>USA, Europe</td>
                                </tr>
                                <tr>
                                    <th class="ps-0 w-25" scope="row">
                                        <strong>Warranty</strong>
                                    </th>
                                    <td>12 months</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <hr class="my-5"/>

                        <form action="">
                            <div class="row">
                                <!-- Quantity -->
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
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
                                <!-- Size -->
                                <div class="col-md-6 mb-4">
                                    <select class="select">
                                        <option value="1">16 inch</option>
                                        <option value="2">12 inch</option>
                                        <option value="3">M</option>
                                        <option value="4">L</option>
                                        <option value="5">XL</option>
                                    </select>
                                    <label class="form-label select-label">Wheel Size</label>
                                </div>
                                <!-- Colors -->
                                <div class="col-md-6 mb-4">
                                    <div class="">
                                        <input
                                                type="radio"
                                                class="btn-check"
                                                name="options"
                                                id="color-primary"
                                                autocomplete="off"
                                                checked
                                        />
                                        <label
                                                class="
                                  btn btn-primary btn-floating
                                  me-2
                                  mb-2
                                  shadow-0
                                  "
                                                for="color-primary"
                                        ></label>

                                        <input
                                                type="radio"
                                                class="btn-check"
                                                name="options"
                                                id="color-danger"
                                                autocomplete="off"
                                        />
                                        <label
                                                class="btn btn-danger btn-floating me-2 mb-2 shadow-0"
                                                for="color-danger"
                                        ></label>

                                        <input
                                                type="radio"
                                                class="btn-check"
                                                name="options"
                                                id="color-secondary"
                                                autocomplete="off"
                                        />
                                        <label
                                                class="
                                  btn btn-secondary btn-floating
                                  me-2
                                  mb-2
                                  shadow-0
                                  "
                                                for="color-secondary"
                                        ></label>

                                        <input
                                                type="radio"
                                                class="btn-check"
                                                name="options"
                                                id="color-success"
                                                autocomplete="off"
                                        />
                                        <label
                                                class="
                                  btn btn-success btn-floating
                                  me-2
                                  mb-2
                                  shadow-0
                                  "
                                                for="color-success"
                                        ></label>

                                        <input
                                                type="radio"
                                                class="btn-check"
                                                name="options"
                                                id="color-warning"
                                                autocomplete="off"
                                        />
                                        <label
                                                class="
                                  btn btn-warning btn-floating
                                  me-2
                                  mb-2
                                  shadow-0
                                  "
                                                for="color-warning"
                                        ></label>

                                        <input
                                                type="radio"
                                                class="btn-check"
                                                name="options"
                                                id="color-info"
                                                autocomplete="off"
                                        />
                                        <label
                                                class="btn btn-info btn-floating me-2 mb-2 shadow-0"
                                                for="color-info"
                                        ></label>
                                    </div>
                                </div>
                            </div>

                            <button
                                    type="button"
                                    class="btn btn-primary btn-rounded me-2"
                            >
                                <i class="fas fa-cart-plus me-2"></i>Add to cart
                            </button>
                            <button
                                    href="#!"
                                    type="button"
                                    class="btn btn-danger btn-floating"
                                    data-mdb-toggle="tooltip"
                                    title="Add to wishlist"
                            >
                                <i class="fas fa-heart"></i>
                            </button>
                        </form>
                    </div>
                    <!-- Details -->
                </div>
            </div>
        </section>
        <!-- Section: Product details -->

        <!-- Section: Reviews -->
        <section class="text-center">
            <p class="my-4"><strong>2 reviews for <em>Sophisticated dress</em></strong></p>

            <div class="row">
                <div class="col-md-7 mb-4">
                    <!-- Single review -->
                    <div class="shadow-4 p-4 rounded-5 mb-5">
                        <img
                                class="shadow-1-strong rounded-circle mb-3"
                                style="width: 40px"
                                src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg"
                                alt="Sample"
                        />
                        <p class="mb-3 fw-bold">Alan Turing</p>

                        <ul
                                class="rating mb-3 d-flex justify-content-center"
                                data-mdb-toggle="rating"
                                data-mdb-readonly="true"
                                data-mdb-value="3"
                        >
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                        </ul>

                        <p class="mb-0">
                            <i class="fas fa-quote-left pe-2"></i>Lorem ipsum dolor, sit
                            amet consectetur adipisicing elit. Molestias nemo ea sequi
                            repudiandae tempora porro harum fugit explicabo, corporis
                            neque veniam, mollitia, similique nobis architecto quibusdam
                            temporibus! Saepe, accusantium natus.
                        </p>
                    </div>
                    <!-- Single review -->

                    <!-- Single review -->
                    <div class="shadow-4 p-4 rounded-5 mb-5">
                        <img
                                class="shadow-1-strong rounded-circle mb-3"
                                style="width: 40px"
                                src="https://mdbootstrap.com/img/Photos/Avatars/img%20(4).jpg"
                                alt="Sample"
                        />
                        <p class="mb-3 fw-bold">Veronica Smith</p>

                        <ul
                                class="rating mb-3 d-flex justify-content-center"
                                data-mdb-toggle="rating"
                                data-mdb-readonly="true"
                                data-mdb-value="3"
                        >
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary"></i>
                            </li>
                        </ul>

                        <p class="mb-0">
                            <i class="fas fa-quote-left pe-2"></i>Lorem ipsum dolor sit
                            amet consectetur adipisicing elit. Autem nisi iusto, ducimus
                            voluptatum iste aliquid iure architecto dicta nulla, delectus
                            molestiae explicabo voluptas rem laudantium distinctio
                            quibusdam tempore deleniti. Saepe architecto porro doloremque
                            nulla sint officia dolorem ex. Assumenda labore consectetur,
                            nemo non cum modi? Fugiat vel quibusdam et voluptates?
                        </p>
                    </div>
                    <!-- Single review -->
                </div>

                <div class="col-md-5 mb-4">
                    <form>
                        <p>Rate this product</p>

                        <ul
                                class="rating d-flex justify-content-center mb-4"
                                data-mdb-toggle="rating"
                                data-mdb-value="3"
                        >
                            <li>
                                <i class="far fa-star fa-sm text-primary" title="Bad"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary" title="Poor"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary" title="OK"></i>
                            </li>
                            <li>
                                <i class="far fa-star fa-sm text-primary" title="Good"></i>
                            </li>
                            <li>
                                <i
                                        class="far fa-star fa-sm text-primary"
                                        title="Excellent"
                                ></i>
                            </li>
                        </ul>

                        <!-- Name input -->
                        <div class="form-outline mb-4">
                            <input type="text" id="form5Example1" class="form-control"/>
                            <label class="form-label" for="form5Example1">Name</label>
                        </div>

                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <input type="email" id="form5Example2" class="form-control"/>
                            <label class="form-label" for="form5Example2"
                            >Email address</label
                            >
                        </div>

                        <!-- Textarea -->
                        <div class="form-outline mb-4">
              <textarea
                      class="form-control"
                      id="textAreaExample"
                      rows="4"
              ></textarea>
                            <label class="form-label" for="textAreaExample"
                            >Your review</label
                            >
                        </div>

                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary mb-4">
                            Submit
                        </button>
                    </form>
                </div>
            </div>
        </section>
        <!-- Jumbotron -->
        <div class="p-5 text-center bg-light">
            <h1 class="mb-0 h3">Relative product</h1>
        </div>
        <!-- Jumbotron -->
        <!--Section: Wishlist-->
        <section class="text-center">
            <div class="row">
                <div class="col-lg-4 col-md-12 mb-4">
                    <div class="card">
                        <div class="bg-image hover-zoom ripple" data-mdb-ripple-color="light">
                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/belt.jpg"
                                 class="w-100"/>
                            <a href="#!">
                                <div class="mask">
                                    <div class="d-flex justify-content-start align-items-end h-100">
                                        <h5><span class="badge badge-primary ms-2">New</span></h5>
                                    </div>
                                </div>
                                <div class="hover-overlay">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
                                </div>
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="" class="text-reset">
                                <h5 class="card-title mb-3">Product name</h5>
                            </a>
                            <a href="" class="text-reset">
                                <p>Category</p>
                            </a>
                            <h6 class="mb-3">$61.99</h6>

                            <button type="button" class="btn btn-primary me-1 mb-1">
                                Add to cart
                            </button>
                            <button
                                    href="#!"
                                    type="button"
                                    class="btn btn-danger btn-floating"
                                    data-mdb-toggle="tooltip"
                                    title="Add to wishlist"
                            >
                                <i class="fas fa-heart"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-zoom ripple" data-mdb-ripple-color="light">
                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/img%20(4).jpg"
                                 class="w-100"/>
                            <a href="#!">
                                <div class="mask">
                                    <div class="d-flex justify-content-start align-items-end h-100">
                                        <h5><span class="badge badge-success ms-2">Eco</span></h5>
                                    </div>
                                </div>
                                <div class="hover-overlay">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
                                </div>
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="" class="text-reset">
                                <h5 class="card-title mb-3">Product name</h5>
                            </a>
                            <a href="" class="text-reset">
                                <p>Category</p>
                            </a>
                            <h6 class="mb-3">$61.99</h6>

                            <button type="button" class="btn btn-primary me-1 mb-1">
                                Add to cart
                            </button>
                            <button
                                    href="#!"
                                    type="button"
                                    class="btn btn-danger btn-floating"
                                    data-mdb-toggle="tooltip"
                                    title="Add to wishlist"
                            >
                                <i class="fas fa-heart"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card">
                        <div class="bg-image hover-zoom ripple" data-mdb-ripple-color="light">
                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/shoes%20(3).jpg"
                                 class="w-100"/>
                            <a href="#!">
                                <div class="mask">
                                    <div class="d-flex justify-content-start align-items-end h-100">
                                        <h5><span class="badge badge-danger ms-2">-10%</span></h5>
                                    </div>
                                </div>
                                <div class="hover-overlay">
                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
                                </div>
                            </a>
                        </div>
                        <div class="card-body">
                            <a href="" class="text-reset">
                                <h5 class="card-title mb-3">Product name</h5>
                            </a>
                            <a href="" class="text-reset">
                                <p>Category</p>
                            </a>
                            <h6 class="mb-3">
                                <s>$61.99</s><strong class="ms-2 text-danger">$50.99</strong>
                            </h6>

                            <button type="button" class="btn btn-primary me-1 mb-1">
                                Add to cart
                            </button>
                            <button
                                    href="#!"
                                    type="button"
                                    class="btn btn-danger btn-floating"
                                    data-mdb-toggle="tooltip"
                                    title="Add to wishlist"
                            >
                                <i class="fas fa-heart"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Main layout-->
        <!-- Section: Reviews -->
    </div>
</main>
<!--Main layout-->

<section class="w3l-footer-22">
    <!-- footer-22 -->
    <div class="footer-hny py-5">
        <div class="container py-lg-5">
            <div class="text-txt row">
                <div class="left-side col-lg-4">
                    <h3><a class="logo-footer" href="index.html">
                        Spry<span class="lohny">S</span>tore</a></h3>
                    <!-- if logo is image enable this
                                  <a class="navbar-brand" href="#index.html">
                                      <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                  </a> -->
                    <p>Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur.Vivamus
                        a ligula quam. Ut blandit eu leo non suscipit. </p>
                    <ul class="social-footerhny mt-lg-5 mt-4">

                        <li><a class="facebook" href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                        </li>
                        <li><a class="twitter" href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                        </li>
                        <li><a class="google" href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                        </li>
                        <li><a class="instagram" href="#"><span class="fa fa-instagram" aria-hidden="true"></span></a>
                        </li>
                    </ul>
                </div>

                <div class="right-side col-lg-8 pl-lg-5">
                    <h4>Women's Day Special Offer
                        All Branded Sandals are Flat 50% Discount</h4>
                    <div class="sub-columns">
                        <div class="sub-one-left">
                            <h6>Useful Links</h6>
                            <div class="footer-hny-ul">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">Careers</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms and Conditions</a></li>
                                    <li><a href="contact.html">Support</a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="sub-two-right">
                            <h6>Our Store</h6>
                            <p class="mb-5">49436 Broaddus Honey Court Avenue, Madisonville KY 95020, United States of
                                America</p>

                            <h6>We accept:</h6>
                            <ul>
                                <li><a class="pay-method" href="#"><span class="fa fa-cc-visa"
                                                                         aria-hidden="true"></span></a>
                                </li>
                                <li><a class="pay-method" href="#"><span class="fa fa-cc-mastercard"
                                                                         aria-hidden="true"></span></a>
                                </li>
                                <li><a class="pay-method" href="#"><span class="fa fa-cc-paypal"
                                                                         aria-hidden="true"></span></a>
                                </li>
                                <li><a class="pay-method" href="#"><span class="fa fa-cc-amex"
                                                                         aria-hidden="true"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="below-section row">
                <div class="columns col-lg-6">
                    <ul class="jst-link">
                        <li><a href="#">Privacy Policy </a></li>
                        <li><a href="#">Term of Service</a></li>
                        <li><a href="contact.html">Customer Care</a></li>
                    </ul>
                </div>
                <div class="columns col-lg-6 text-lg-right">
                    <p>© 2020 SpryStore. All rights reserved. Design by <a href="https://w3layouts.com/"
                                                                           target="_blank">
                        W3Layouts</a>
                    </p>
                </div>
                <button onclick="topFunction()" id="movetop" title="Go to top">
                    <span class="fa fa-angle-double-up"></span>
                </button>
            </div>
        </div>
    </div>
    <!-- //titels-5 -->
    <!-- move top -->

    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
</section>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/js/all.min.js"></script>
<div class="lightbox-gallery" id="lightbox-t0vdctmrf">
    <div class="lightbox-gallery-loader">
        <div class="spinner-grow text-light" role="status"><span class="sr-only">Loading...</span></div>
    </div>
    <div class="lightbox-gallery-toolbar">
        <div class="lightbox-gallery-left-tools"><p class="lightbox-gallery-counter"></p></div>
        <div class="lightbox-gallery-right-tools">
            <button class="lightbox-gallery-fullscreen-btn" aria-label="Toggle fullscreen"></button>
            <button class="lightbox-gallery-zoom-btn" aria-label="Zoom in"></button>
            <button class="lightbox-gallery-close-btn" aria-label="Close"></button>
        </div>
    </div>
    <div class="lightbox-gallery-content"></div>
    <div class="lightbox-gallery-arrow-left">
        <button aria-label="Previous"></button>
    </div>
    <div class="lightbox-gallery-arrow-right">
        <button aria-label="Next"></button>
    </div>
    <div class="lightbox-gallery-caption-wrapper"><p class="lightbox-gallery-caption"></p></div>
</div>
<script type="text/javascript">{
}</script>
</body>
</html>


