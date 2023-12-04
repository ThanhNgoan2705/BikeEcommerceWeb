<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xe Điện Long Vũ</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%--    fontAwesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <%--    MDB CSS--%>
    <style>INPUT:-webkit-autofill, SELECT:-webkit-autofill, TEXTAREA:-webkit-autofill {
        animation-name: onautofillstart
    }

    INPUT:not(:-webkit-autofill), SELECT:not(:-webkit-autofill), TEXTAREA:not(:-webkit-autofill) {
        animation-name: onautofillcancel
    }

    @keyframes onautofillstart {
    }

    @keyframes onautofillcancel {
    }</style>
    <link href="mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="mdb/css/mdb.min.css" rel="stylesheet">
    <link href="mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="mdb/css/style.css" rel="stylesheet">
    <link href="mdb/css/default.css" rel="stylesheet">

</head>
<body class="homepage-v2 hidden-sn white-skin animated">
<!--onTop-->
<%@include file="default/ontopButton.jsp" %>
<!--onTop-->

<!-- Navigation -->
<%@ include file="default/header.jsp" %>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="default/menu.jsp" %>
<!-- Mega menu -->


<!-- Main Container -->
<div class="container">

    <!-- Grid row -->
    <div class="row pt-4">

        <!-- Content -->
        <div class="col-lg-12">

            <!-- Section: Intro -->
            <section class="section pt-4">

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-lg-8 col-md-12 mb-3 pb-lg-2">


                        <!--Carousel Wrapper-->
                        <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
                            <!--Indicators-->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                                <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                            </ol>
                            <!--/.Indicators-->
                            <!--Slides-->
                            <div class="carousel-inner" role="listbox">
                                <!--First slide-->

                                <div class="carousel-item active">
                                    <img class="d-block w-100"
                                         src="https://mdbootstrap.com/img/Photos/Slides/img%20(130).webp"
                                         alt="First slide">
                                    <div class="carousel-caption dark-grey-text d-flex align-items-center pt-3 pl-4 ">

                                        <a><span class="badge badge-danger">bestseller</span></a>

                                        <h2 class="card-title font-weight-bold pt-2"><strong>This is news title</strong>
                                        </h2>

                                        <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>

                                        <a class="btn btn-danger btn-sm btn-rounded clearfix d-none d-md-inline-block">Read
                                            more</a>

                                    </div>
                                </div>
                                <!--/First slide-->
                                <!--Second slide-->
                                <div class="carousel-item">
                                    <img class="d-block w-100"
                                         src="https://mdbootstrap.com/img/Photos/Slides/img%20(129).webp"
                                         alt="Second slide">
                                    <div class="carousel-caption dark-grey-text d-flex align-items-center pt-3 pl-4 ">

                                        <a><span class="badge badge-danger">bestseller</span></a>

                                        <h2 class="card-title font-weight-bold pt-2"><strong>This is news title</strong>
                                        </h2>

                                        <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>

                                        <a class="btn btn-danger btn-sm btn-rounded clearfix d-none d-md-inline-block">Read
                                            more</a>

                                    </div>
                                </div>
                                <!--/Second slide-->
                                <!--Third slide-->
                                <div class="carousel-item">
                                    <img class="d-block w-100"
                                         src="https://mdbootstrap.com/img/Photos/Slides/img%20(70).webp"
                                         alt="Third slide">
                                    <div class="carousel-caption d-flex align-items-start ">

                                        <a href="#"><span class="badge badge-danger">bestseller</span></a>

                                        <h2 class="card-title font-weight-bold pt-2"><strong>This is news title</strong>
                                        </h2>
                                    </div>
                                </div>
                                <!--/Third slide-->
                            </div>
                            <!--/.Slides-->
                            <!--Controls-->
                            <a class="carousel-control-prev" href="#carousel-example-1z" role="button"
                               data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-example-1z" role="button"
                               data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                            <!--/.Controls-->
                        </div>
                        <!--/.Carousel Wrapper-->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-4">

                        <!-- Section: Categories -->
                        <section class="section">
                            <c:forEach items="${categories}" var="cate">
                                <ul class="list-group z-depth-1">
                                    <li class="list-group-item d-flex justify-content-between align-items-center">

                                        <a class="dark-grey-text font-small"><i
                                                class="fas fa-laptop dark-grey-text mr-2"
                                                aria-hidden="true"></i>${cate.name}</a>
                                        <c:forEach items="${quantityByCategory}" var="TotalQuantity">
                                                <c:if test="${TotalQuantity.key == cate}">
                                                    <span class="badge badge-danger badge-pill">${TotalQuantity.value}</span></a>
                                                </c:if>
                                        </c:forEach>
                                    </li>
                                </ul>
                            </c:forEach>
                        </section>

                        <!-- Section: Categories -->

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </section>
            <!-- Section: Intro -->

            <!-- Section: Products -->
            <section>

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-12">

                        <!-- Grid row -->
                        <div class="row">
                            <c:forEach items="${top1Products}" var="product">
                                <c:forEach items="${imageProduct}" var="image">
                                    <!-- Grid column -->
                                    <div class="col-lg-4 col-md-12 mb-4">

                                        <!-- Card -->
                                        <div class="card card-ecommerce">

                                            <!-- Card image -->
                                            <div class="view overlay">

                                                <img src="${image.link}" class="img-fluid" alt="">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>

                                            </div>
                                            <!-- Card image -->

                                            <!-- Card content -->
                                            <div class="card-body">

                                                <!-- Category & Title -->
                                                <h5 class="card-title mb-1"><strong><a href=""
                                                                                       class="dark-grey-text">${product.name}</a></strong>
                                                </h5>

                                                <span class="badge badge-danger mb-2">bestseller</span>

                                                <!-- Rating -->
                                                <ul class="rating">

                                                    <li><i class="fas fa-star blue-text"></i></li>

                                                    <li><i class="fas fa-star blue-text"></i></li>

                                                    <li><i class="fas fa-star blue-text"></i></li>

                                                    <li><i class="fas fa-star blue-text"></i></li>

                                                    <li><i class="fas fa-star blue-text"></i></li>

                                                </ul>

                                                <!-- Card footer -->
                                                <div class="card-footer pb-0">

                                                    <div class="row mb-0">

                                                        <span class="float-left"><strong>${product.price}</strong></span>

                                                        <span class="float-right">

                            <a   class="addToCart" role="button" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i
                                    class="fas fa-shopping-cart ml-3" onclick="addTocart(${product.productId})"></i></a>

                          </span>

                                                    </div>

                                                </div>

                                            </div>
                                            <!-- Card content -->

                                        </div>
                                        <!-- Card -->

                                    </div>
                                    <!-- Grid column -->
                            </c:forEach>
                            </c:forEach>
                        </div>

                    </div>

                </div>

                <!-- Grid row -->
            </section>
            <!-- Section: Products -->

            <!-- Section: Advertising -->
            <section>

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-12">

                        <!-- Image -->
                        <div class="view  z-depth-1">

                            <img src="https://mdbootstrap.com/img/Photos/Others/ecommerce6.jpg" class="img-fluid"
                                 alt="sample image">

                            <div class="mask rgba-stylish-slight">

                                <div class="dark-grey-text text-right pt-lg-5 pt-md-1 mr-5 pr-md-4 pr-0">

                                    <div>

                                        <a>

                                            <span class="badge badge-primary">SALE</span>

                                        </a>

                                        <h2 class="card-title font-weight-bold pt-md-3 pt-1">

                                            <strong>Sale 20% off on every smartphone!

                                            </strong>

                                        </h2>

                                        <p class="pb-lg-3 pb-md-1 clearfix d-none d-md-block">Lorem ipsum dolor sit
                                            amet, consectetur
                                            adipisicing elit. </p>

                                        <a class="btn mr-0 btn-primary btn-rounded clearfix d-none d-md-inline-block">Read
                                            more</a>

                                    </div>

                                </div>

                            </div>

                        </div>
                        <!-- Image -->

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

                <!-- Grid row -->
                <div class="row mt-4 pt-1">

                    <!-- Grid column -->
                    <div class="col-lg-8 col-md-12 mb-3 mb-md-4 pb-lg-2">

                        <!-- Image -->
                        <div class="view zoom z-depth-1">

                            <img src="https://mdbootstrap.com/img/Photos/Others/product1.jpg" class="img-fluid"
                                 alt="sample image">

                            <div class="mask rgba-white-light">

                                <div class="dark-grey-text d-flex align-items-center pt-4 ml-lg-3 pl-lg-3 pl-md-5">

                                    <div>

                                        <a><span class="badge badge-danger">bestseller</span></a>

                                        <h2 class="card-title font-weight-bold pt-2"><strong>This is news title</strong>
                                        </h2>

                                        <p class="hidden show-ud-up">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit. </p>

                                        <a class="btn btn-danger btn-sm btn-rounded clearfix d-none d-md-inline-block"></i>
                                            Read more</a>

                                    </div>

                                </div>

                            </div>

                        </div>
                        <!-- Image -->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-4 col-md-12 mb-4">

                        <!-- Image -->
                        <div class="view zoom z-depth-1 photo">

                            <img src="https://mdbootstrap.com/img/Photos/Others/product3.jpg" class="img-fluid"
                                 alt="sample image">

                            <div class="mask rgba-stylish-strong">

                                <div class="white-text center-element text-center w-75">

                                    <div class="">

                                        <a><span class="badge badge-info">NEW</span></a>

                                        <h2 class="card-title font-weight-bold pt-2"><strong>This is news title</strong>
                                        </h2>

                                        <p class="">Lorem ipsum dolor sit amet, consectetur. </p>

                                        <a class="btn btn-info btn-sm btn-rounded"></i> Read more</a>

                                    </div>

                                </div>

                            </div>

                        </div>
                        <!-- Image -->

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </section>
            <!-- Section: Advertising -->

            <!-- Section: product list -->
            <section class="mb-5">

                <div class="row">

                    <!-- New Products -->
                    <div class="col-lg-4 col-md-12 col-12 pt-4">

                        <hr>

                        <h5 class="text-center font-weight-bold dark-grey-text"><strong>New Products</strong></h5>

                        <hr>

                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/1.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a class="pt-5"><strong>iPad</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$849</strong></h6>

                            </div>

                        </div>
                        <!-- First row -->

                        <!-- Second row -->
                        <div class="row mt-2 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/10.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Headphones</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$49</strong> <span
                                        class="grey-text"><small><s>$89</s></small></span></h6>

                            </div>

                        </div>
                        <!-- Second row -->

                        <!-- Third row -->
                        <div class="row mt-2 py-2 pb-1 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/3.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>iMac 27"</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$1449</strong> <span
                                        class="grey-text"><small><s>$2189</s></small></span></h6>

                            </div>

                        </div>
                        <!-- Third row -->

                    </div>
                    <!-- New Products -->

                    <!-- Top Sellers -->
                    <div class="col-lg-4 col-md-12 pt-4">

                        <hr>

                        <h5 class="text-center font-weight-bold dark-grey-text"><strong>Top Sellers</strong></h5>

                        <hr>

                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/4.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Dell V-964i</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$649</strong> <span
                                        class="grey-text"><small><s>$889</s></small></span></h6>

                            </div>

                        </div>
                        <!-- First row -->

                        <!-- Second row -->
                        <div class="row mt-2 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/5.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Asus GT67i</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$1249</strong> <span
                                        class="grey-text"><small><s>$1489</s></small></span></h6>

                            </div>

                        </div>
                        <!-- Second row -->

                        <!-- Third row -->
                        <div class="row mt-2 py-2 pb-1 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/6.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Headphones</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$49</strong> <span
                                        class="grey-text"><small><s>$89</s></small></span></h6>

                            </div>

                        </div>
                        <!-- Third row -->

                    </div>
                    <!-- Top Sellers -->

                    <!-- Random Products -->
                    <div class="col-lg-4 col-md-12 pt-4">

                        <hr>

                        <h5 class="text-center font-weight-bold dark-grey-text"><strong>Random products</strong></h5>

                        <hr>

                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/7.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Dell 786i</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$749</strong> <span
                                        class="grey-text"><small><s>$889</s></small></span></h6>

                            </div>

                        </div>
                        <!-- First row -->

                        <!-- Second row -->
                        <div class="row mt-2 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/8.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Samsung V54</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$249</strong> <span
                                        class="grey-text"><small><s>$489</s></small></span></h6>

                            </div>

                        </div>
                        <!-- Second row -->

                        <!-- Third row -->
                        <div class="row mt-2 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">

                                <a><img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg"
                                        class="img-fluid"></a>

                            </div>

                            <div class="col-6">

                                <!-- Title -->
                                <a><strong>Canon 675-D</strong></a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text"><strong>$2149</strong> <span
                                        class="grey-text"><small><s>$2489</s></small></span></h6>

                            </div>

                        </div>
                        <!-- Third row -->

                    </div>
                    <!-- Random Products -->

                </div>

            </section>
            <!-- Section: product list -->

            <!-- Section: Last items -->
            <section>

                <h4 class="font-weight-bold mt-4 dark-grey-text"><strong>LAST ITEMS</strong></h4>

                <hr class="mb-5">

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!-- Card -->
                        <div class="card card-ecommerce">

                            <!-- Card image -->
                            <div class="view overlay">

                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg"
                                     class="img-fluid"
                                     alt="">

                                <a>

                                    <div class="mask rgba-white-slight"></div>

                                </a>

                            </div>
                            <!-- Card image -->

                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Category & Title -->
                                <h5 class="card-title mb-1"><strong><a href=""
                                                                       class="dark-grey-text">Headphones</a></strong>
                                </h5>
                                <span class="badge badge-danger mb-2">bestseller</span>

                                <!-- Rating -->
                                <ul class="rating">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Card footer -->
                                <div class="card-footer pb-0">

                                    <div class="row mb-0">

                                        <span class="float-left"><strong>1439$</strong></span>

                                        <span class="float-right">

                        <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i
                                class="fas fa-shopping-cart ml-3"></i></a>

                      </span>

                                    </div>

                                </div>

                            </div>
                            <!-- Card content -->

                        </div>
                        <!-- Card -->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!-- Card -->
                        <div class="card card-ecommerce">

                            <!-- Card image -->
                            <div class="view overlay">

                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/16.jpg"
                                     class="img-fluid"
                                     alt="">

                                <a>

                                    <div class="mask rgba-white-slight"></div>

                                </a>

                            </div>
                            <!-- Card image -->

                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Category & Title -->
                                <h5 class="card-title mb-1"><strong><a href=""
                                                                       class="dark-grey-text">Headphones</a></strong>
                                </h5>
                                <span class="badge badge-danger mb-2">bestseller</span>

                                <!-- Rating -->
                                <ul class="rating">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Card footer -->
                                <div class="card-footer pb-0">

                                    <div class="row mb-0">

                                        <span class="float-left"><strong>1439$</strong></span>

                                        <span class="float-right">

                        <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i
                                class="fas fa-shopping-cart ml-3"></i></a>

                      </span>

                                    </div>

                                </div>

                            </div>
                            <!-- Card content -->

                        </div>
                        <!-- Card -->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!-- Card -->
                        <div class="card card-ecommerce">

                            <!-- Card image -->
                            <div class="view overlay">

                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg"
                                     class="img-fluid"
                                     alt="">

                                <a>

                                    <div class="mask rgba-white-slight"></div>

                                </a>

                            </div>
                            <!-- Card image -->

                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Category & Title -->
                                <h5 class="card-title mb-1"><strong><a href=""
                                                                       class="dark-grey-text">iPhone</a></strong></h5>
                                <span
                                        class="badge badge-info mb-2">new</span>

                                <!-- Rating -->
                                <ul class="rating">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                </ul>

                                <!-- Card footer -->
                                <div class="card-footer pb-0">

                                    <div class="row mb-0">

                                        <span class="float-left"><strong>1439$</strong></span>

                                        <span class="float-right">

                        <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i
                                class="fas fa-shopping-cart ml-3"></i></a>

                      </span>

                                    </div>

                                </div>

                            </div>
                            <!-- Card content -->

                        </div>
                        <!-- Card -->

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!-- Card -->
                        <div class="card card-ecommerce">

                            <!-- Card image -->
                            <div class="view overlay">

                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/3.jpg"
                                     class="img-fluid"
                                     alt="">

                                <a>

                                    <div class="mask rgba-white-slight"></div>

                                </a>

                            </div>
                            <!-- Card image -->

                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Category & Title -->
                                <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">iMac</a></strong>
                                </h5><span
                                    class="badge badge-danger mb-2">bestseller</span>

                                <!-- Rating -->
                                <ul class="rating">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                </ul>

                                <!-- Card footer -->
                                <div class="card-footer pb-0">

                                    <div class="row mb-0">

                                        <span class="float-left"><strong>1439$</strong></span>

                                        <span class="float-right">

                        <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart"><i
                                class="fas fa-shopping-cart ml-3"></i></a>

                      </span>

                                    </div>

                                </div>

                            </div>
                            <!-- Card content -->

                        </div>
                        <!-- Card -->

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

                <!-- Grid row -->
                <div class="row justify-content-center mb-4">

                    <!-- Pagination -->
                    <nav class="mb-4">

                        <ul class="pagination pagination-circle pg-blue mb-0">

                            <!-- First -->
                            <li class="page-item disabled clearfix d-none d-md-block"><a
                                    class="page-link waves-effect waves-effect">First</a></li>

                            <!-- Arrow left -->
                            <li class="page-item disabled">

                                <a class="page-link waves-effect waves-effect" aria-label="Previous">

                                    <span aria-hidden="true">«</span>

                                    <span class="sr-only">Previous</span>

                                </a>

                            </li>

                            <!-- Numbers -->
                            <li class="page-item active"><a class="page-link waves-effect waves-effect">1</a></li>

                            <li class="page-item"><a class="page-link waves-effect waves-effect">2</a></li>

                            <li class="page-item"><a class="page-link waves-effect waves-effect">3</a></li>

                            <li class="page-item"><a class="page-link waves-effect waves-effect">4</a></li>

                            <li class="page-item"><a class="page-link waves-effect waves-effect">5</a></li>

                            <!-- Arrow right -->
                            <li class="page-item">

                                <a class="page-link waves-effect waves-effect" aria-label="Next">

                                    <span aria-hidden="true">»</span>

                                    <span class="sr-only">Next</span>

                                </a>

                            </li>

                            <!-- First -->
                            <li class="page-item clearfix d-none d-md-block"><a
                                    class="page-link waves-effect waves-effect">Last</a>
                            </li>

                        </ul>

                    </nav>
                    <!-- Pagination -->

                </div>
                <!-- Grid row -->

            </section>
            <!-- Section: Last items -->

        </div>
        <!-- Content -->

    </div>
    <!-- Grid row -->

</div>
<!-- Main Container -->


<!-- Footer -->
<%@include file="default/footer.jsp" %>
<!-- Footer -->
<script src="/mdb/js/popper.min.js"></script>
<script src="/mdb/js/jquery.min.js"></script>
<script src="/mdb/js/bootstrap.min.js"></script>
<script src="/mdb/js/mdb.min.js"></script>
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
<script>
    function addTocart(productId) {
        // cộng thêm 1 vào giỏ hàng
        $.ajax({
            url: "/user/addProductToCart",
            type: "POST",
            data: {
                productId: productId,
                quantity: 1
            },
            success: function (data) {
               var itemCount = parseInt($(".number").text());
               var flyNumber = $('<span class="fly-number">'+(itemCount+1)+'</span>');
               // get button add position
                var position = $('.addToCart').offset();
                // set the animation's start position
                flyNumber.css({
                    top: position.top ,
                    left: position.left
                });
               $('.shopping-cart').append(flyNumber);
               setTimeout(function () {
                   $('.number').text(itemCount+1);
                   flyNumber.remove();
               },1000);
               console.log(data);
            },
            error: function (data) {
                console.log(data);
            }
        });

    }
</script>
<script src="mdb/js/default.js"></script>
</body>
</html>
