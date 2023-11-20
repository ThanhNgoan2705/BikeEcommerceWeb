<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:08 AM
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

<!-- Main Container-->
<div class="container mt-5 pt-3">
    <div class="row pt-4">

        <!-- Content-->
        <div class="col-lg-9">

            <!-- Filter Area-->
            <div class="row">

                <div class="col-md-4 mt-3">

                    <!-- Sort by-->
                    <select class="mdb-select grey-text md-form" multiple>

                        <option value="" disabled selected>Choose your option</option>

                        <option value="1">Option 1</option>

                        <option value="2">Option 2</option>

                        <option value="3">Option 3</option>

                    </select>

                    <label class="mdb-main-label">Example label</label>

                    <button class="btn-save btn btn-primary btn-sm">Save</button>

                    <!-- Sort by-->
                </div>

                <div class="col-8 col-md-8 text-right">

                    <!-- View Switcher-->
                    <a class="btn blue darken-3 btn-sm"><i class="fas fa-th mr-2" aria-hidden="true"></i><strong>
                        Grid</strong></a>

                    <a class="btn blue darken-3 btn-sm"><i class="fas fa-th-list mr-2" aria-hidden="true"></i><strong>

                        List</strong></a>
                    <!-- View Switcher-->
                </div>

            </div>
            <!-- Filter Area-->

            <!-- Section: Products -->
            <section>

                <!-- Grid row -->
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-12">

                        <!-- Grid row -->
                        <div class="row">

                            <!-- Grid column -->
                            <div class="col-lg-4 col-md-12 mb-4">

                                <!-- Card -->
                                <div class="card card-ecommerce">

                                    <!-- Card image -->
                                    <div class="view overlay">

                                        <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg"
                                             class="img-fluid" alt="">

                                        <a>

                                            <div class="mask rgba-white-slight"></div>

                                        </a>

                                    </div>
                                    <!-- Card image -->

                                    <!-- Card content -->
                                    <div class="card-body">

                                        <!-- Category & Title -->
                                        <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">Asus CT-567</a></strong>
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
                            <div class="col-lg-4 col-md-6 mb-4">

                                <!-- Card -->
                                <div class="card card-ecommerce">

                                    <!-- Card image -->
                                    <div class="view overlay">

                                        <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/1.jpg"
                                             class="img-fluid" alt="">

                                        <a>

                                            <div class="mask rgba-white-slight"></div>

                                        </a>

                                    </div>
                                    <!-- Card image -->

                                    <!-- Card content -->
                                    <div class="card-body">

                                        <!-- Category & Title -->
                                        <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">iPad PRO</a></strong></h5>

                                        <span class="badge badge-danger mb-2">bestseller</span>

                                        <span class="badge badge-success mb-2 ml-2">SALE</span>

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

                                                <h5 class="mb-0 pb-0 mt-1 font-weight-bold"><span
                                                        class="red-text"><strong>$699</strong></span>

                                                    <span class="grey-text"><small><s>$920</s></small></span>

                                                </h5>

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
                            <div class="col-lg-4 col-md-6 mb-4">

                                <!-- Card -->
                                <div class="card card-ecommerce">

                                    <!-- Card image -->
                                    <div class="view overlay">

                                        <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/6.jpg"
                                             class="img-fluid" alt="">

                                        <a>

                                            <div class="mask rgba-white-slight"></div>

                                        </a>

                                    </div>
                                    <!-- Card image -->

                                    <!-- Card content -->
                                    <div class="card-body">

                                        <!-- Category & Title -->
                                        <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">Dell V-964i</a></strong>
                                        </h5>

                                        <span class="badge badge-danger mb-2">bestseller</span><span
                                            class="badge badge-info mb-2 ml-2">new</span>

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

                        </div>
                        <!-- Grid row -->

                        <!-- Grid row -->
                        <div class="row mb-3">

                            <!-- Grid column -->
                            <div class="col-lg-4 col-md-12 mb-4">

                                <!-- Card -->
                                <div class="card card-ecommerce">

                                    <!-- Card image -->
                                    <div class="view overlay">

                                        <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg"
                                             class="img-fluid" alt="">

                                        <a>

                                            <div class="mask rgba-white-slight"></div>

                                        </a>

                                    </div>
                                    <!-- Card image -->

                                    <!-- Card content -->
                                    <div class="card-body">

                                        <!-- Category & Title -->
                                        <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">Samsung V54</a></strong>
                                        </h5>

                                        <span class="badge grey mb-2">best rated</span>

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
                            <div class="col-lg-4 col-md-6 mb-4">

                                <!-- Card -->
                                <div class="card card-ecommerce">

                                    <!-- Card image -->
                                    <div class="view overlay">

                                        <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/7.jpg"
                                             class="img-fluid" alt="">

                                        <a>

                                            <div class="mask rgba-white-slight"></div>

                                        </a>

                                    </div>
                                    <!-- Card image -->

                                    <!-- Card content -->
                                    <div class="card-body">

                                        <!-- Category & Title -->
                                        <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">Dell 786i</a></strong></h5>

                                        <span class="badge badge-info mb-2">new</span>

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

                            <!-- Grid column -->
                            <div class="col-lg-4 col-md-6 mb-4">

                                <!-- Card -->
                                <div class="card card-ecommerce">

                                    <!-- Card image -->
                                    <div class="view overlay">

                                        <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg"
                                             class="img-fluid" alt="">

                                        <a>

                                            <div class="mask rgba-white-slight"></div>

                                        </a>

                                    </div>
                                    <!-- Card image -->

                                    <!-- Card content -->
                                    <div class="card-body">

                                        <!-- Category & Title -->
                                        <h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">Canon 675-D</a></strong>
                                        </h5>

                                        <span class="badge badge-info mb-2">new</span>

                                        <span class="badge badge-success mb-2 ml-2">SALE</span>

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

                                                <h5 class="mb-0 pb-0 mt-1 font-weight-bold"><span
                                                        class="red-text"><strong>$1199</strong></span>

                                                    <span class="grey-text"><small><s>$1520</s></small></span>

                                                </h5>

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

                    </div>

                </div>
                <!-- Grid row -->

            </section>
            <!-- Section: Products -->

        </div>
        <!-- Content-->

        <!-- Sidebar-->
        <div class="col-lg-3">

            <div class="">

                <!-- Grid row-->
                <div class="row">

                    <div class="col-md-6 col-lg-12 mb-5">

                        <!-- Panel-->
                        <h5 class="font-weight-bold dark-grey-text"><strong>Order By</strong></h5>

                            <div class="divider"></div>

                            <p class="blue-text"><a>Default</a></p>

                            <p class="dark-grey-text"><a>Popularity</a></p>

                            <p class="dark-grey-text"><a>Average rating</a></p>

                            <p class="dark-grey-text"><a>Price: low to high</a></p>

                            <p class="dark-grey-text"><a>Price: high to low</a></p>

                    </div>

                    <!-- Filter by category-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Category</strong></h5>

                            <div class="divider"></div>

                            <!-- Radio group-->
                            <div class="form-group ">

                                <input class="form-check-input" name="group100" type="radio" id="radio100">

                                <label for="radio100" class="form-check-label dark-grey-text">All</label>

                            </div>

                            <div class="form-group">

                                <input class="form-check-input" name="group100" type="radio" id="radio101" checked>

                                <label for="radio101" class="form-check-label dark-grey-text">Laptop</label>

                            </div>

                            <div class="form-group">

                                <input class="form-check-input" name="group100" type="radio" id="radio102">

                                <label for="radio102" class="form-check-label dark-grey-text">Smartphone</label>

                            </div>

                            <div class="form-group">

                                <input class="form-check-input" name="group100" type="radio" id="radio103">

                                <label for="radio103" class="form-check-label dark-grey-text">Tablet</label>

                            </div>

                            <div class="form-group">

                                <input class="form-check-input" name="group100" type="radio" id="radio104">

                                <label for="radio104" class="form-check-label dark-grey-text">Headphones</label>

                            </div>
                            <!-- Radio group-->

                    </div>
                    <!-- Filter by category-->

                </div>
                <!-- Grid row-->

                <!-- Grid row-->
                <div class="row">

                    <!-- Filter by price-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Price</strong></h5>

                            <div class="divider"></div>

                            <form class="range-field mt-3">

                                <input id="calculatorSlider" class="no-border" type="range" value="0" min="0" max="30" />

                            </form>

                            <!-- Grid row-->
                            <div class="row justify-content-center">

                                <!-- Grid column-->
                                <div class="col-md-6 text-left">

                                    <p class="dark-grey-text"><strong id="resellerEarnings">0$</strong></p>

                                </div>
                                <!-- Grid column-->

                                <!-- Grid column-->
                                <div class="col-md-6 text-right">

                                    <p class="dark-grey-text"><strong id="clientPrice">319$</strong></p>

                                </div>
                                <!-- Grid column-->

                            </div>
                            <!-- Grid row-->

                    </div>
                    <!-- Filter by price-->

                    <!-- Filter by rating-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Rating</strong></h5>

                            <div class="divider"></div>

                            <div class="row ml-1">

                                <!-- Rating-->
                                <ul class="rating mb-0">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li>

                                        <p class="ml-3 dark-grey-text"><a>4 and more</a></p>

                                    </li>

                                </ul>

                            </div>

                            <div class="row ml-1">

                                <!-- Rating-->
                                <ul class="rating mb-0">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                    <li>

                                        <p class="ml-3 dark-grey-text"><a>3 - 3,99</a></p>

                                    </li>

                                </ul>

                            </div>

                            <div class="row ml-1">

                                <!-- Rating-->
                                <ul class="rating">

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star blue-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                    <li><i class="fas fa-star grey-text"></i></li>

                                    <li>

                                        <p class="ml-3 dark-grey-text"><a>3.00 and less</a></p>

                                    </li>

                                </ul>

                            </div>

                    </div>
                    <!-- Filter by rating-->

                </div>
                <!-- Grid row-->

            </div>

        </div>
        <!-- Sidebar-->

    </div>

</div>
<!-- Main Container-->

<!--onTop-->
<%@include file="default/ontopButton.jsp"%>
<!--onTop-->

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

    let slider = $("#calculatorSlider");
    let reseller = $("#resellerEarnings");
    let client = $("#clientPrice");
    let percentageBonus = 30; // = 30%

    let license = {
        corpo: {
            active: true,
            price: 319,
        },
        dev: {
            active: false,
            price: 149,
        },
        priv: {
            active: false,
            price: 79,
        }
    };

    const calculate = (price, value) => {

        client.text((Math.round((price - (value / 100 * price)))) + '$');
        reseller.text((Math.round(((percentageBonus - value) / 100 * price))) + '$')
    }


    slider.on('input change', e => {

        if (license.priv.active) {

            calculate(license.priv.price, $(e.target).val());
        } else if (license.corpo.active) {

            calculate(license.corpo.price, $(e.target).val());
        } else if (license.dev.active) {

            calculate(license.dev.price, $(e.target).val());
        }
    })

    // Material Select Initialization
    $(document).ready(function () {

        $('.mdb-select').material_select();
    });

    // SideNav Initialization
    $(".button-collapse").sideNav();

</script>
<script src="mdb/js/default.js"></script>

</body>
</html>
