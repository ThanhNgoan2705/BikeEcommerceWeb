<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/4/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vie">
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
    <link href="/mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="/mdb/css/mdb.min.css" rel="stylesheet">
    <link href="/mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="/mdb/css/style.css" rel="stylesheet">
    <link href="/mdb/css/default.css" rel="stylesheet">

</head>
<body class="cart-v2 hidden-sn white-skin animated">
<!--onTop-->
<%@include file="default/ontopButton.jsp" %>
<!--onTop-->

<!-- Navigation -->
<%@ include file="default/header.jsp" %>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="default/menu.jsp" %>
<!-- Mega menu -->


<!-- Main Layout -->
<main class="mt-2">

    <!-- Main Container -->
    <div class="container ">

        <!-- Section cart -->
        <section class="section my-5 pb-5">

            <div class="card card-ecommerce">

                <div class="card-body">
                    <h2 class="h2-responsive font-weight-bold text-center my-5">Shopping cart</h2>
                    <!-- Shopping Cart table -->
                    <div class="table-responsive">

                        <table class="table product-table table-cart-v-2">

                            <!-- Table head -->
                            <thead class="mdb-color lighten-5">

                            <tr>

                                <th></th>

                                <th class="font-weight-bold">

                                    <strong>Product</strong>

                                </th>

                                <th class="font-weight-bold">

                                    <strong>Color</strong>

                                </th>

                                <th></th>

                                <th class="font-weight-bold">

                                    <strong>Price</strong>

                                </th>

                                <th class="font-weight-bold">

                                    <strong>QTY</strong>

                                </th>

                                <th class="font-weight-bold">

                                    <strong>Amount</strong>

                                </th>

                                <th></th>

                            </tr>

                            </thead>
                            <!-- Table head -->
                            <c:forEach var="item" items="${itemList}">
                            <!-- Table body -->
                            <tbody>

                            <!-- First row -->
                            <tr id="${item.cartItemId}">

                                <th scope="row">

                                    <img src="${link}"
                                         alt=""
                                         class="img-fluid z-depth-0">

                                </th>

                                <td>

                                    <h5 class="mt-3">

                                        <strong>${item.product.name}</strong>

                                    </h5>

                                    <p class="text-muted">${item.product.brand.name}</p>

                                </td>

                                <td>

                                    <select id="colors-${item.cartItemId}" name="colors"
                                            onchange="updateColorAndQuantity('${item.cartItemId}',document.querySelector('#quantity-${item.cartItemId}').value, this.value);updatePriceByColorOnItemId('${item.cartItemId}',this.value)">
                                        <c:forEach var="color" items="${item.product.colors}">
                                            <option value="${color.colorId}">
                                                    ${color.name}
                                            </option>
                                        </c:forEach>
                                    </select>

                                </td>

                                <td></td>


                                <td id="price-${item.cartItemId}">${item.price}</td>


                                <td class="text-center text-md-left">

                                    <span class="qty"></span>

                                    <div class="def-number-input number-input safari_only">

                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepDown();updateQuantityAndTotal('${item.cartItemId}',this.parentNode.querySelector('input[type=number]').value,document.getElementById('colors-${item.cartItemId}').value ) "
                                                class="minus"></button>
                                        <input class="quantity" min="1" name="quantity" value="${item.quantity}"
                                               id="quantity-${item.cartItemId}"
                                               type="number"
                                               oninput="updateQuantityAndTotal('${item.cartItemId}',this.value,document.getElementById('colors-${item.cartItemId}').value)">
                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepUp();updateColorAndQuantity('${item.cartItemId}',this.parentNode.querySelector('input[type=number]').value,document.getElementById('colors-${item.cartItemId}').value )"

                                                class="plus"></button>
                                    </div>

                                </td>

                                <td class="font-weight-bold item">


                                    <strong id="total-for-one-item-${item.cartItemId}">${item.price * item.quantity} </strong>


                                </td>

                                <td>
                                    <button type="button" class="btn btn-danger btn-sm m-2 " data-toggle="tooltip"
                                            data-placement="top"
                                            title="Remove item"
                                            onclick="removeItem('${item.cartItemId}','${item.cartItemId}')"><i
                                            class="fa-solid fa-trash"></i></button>
                                </td>

                            </tr>
                            </c:forEach>
                            <!-- First row -->
                            <tr>

                                <td colspan="3"></td>

                                <td>

                                    <h4 class="mt-2">

                                        <strong>Total</strong>

                                    </h4>

                                </td>
                                <td class="text-right">

                                    <h4 class="mt-2">

                                        <strong id="total-all"></strong>

                                    </h4>

                                </td>

                                <td colspan="3" class="text-right">

                                    <a type="button" class="btn btn-primary btn-rounded" role="button"
                                       href="/user/checkout">Complete purchase

                                        <i class="fas fa-angle-right right"></i>

                                    </a>

                                </td>
                            </tr>

                            </tbody>

                            <!-- Table body -->

                        </table>

                    </div>
                    <!-- Shopping Cart table -->

                </div>
            </div>


        </section>
        <!-- Section cart -->

        <!-- Section products -->
        <section>

            <h4 class="font-weight-bold mt-4 title-1">

                <strong>YOU MAY BE INTERESTED IN</strong>

            </h4>

            <hr class="blue mb-5">

            <!-- Grid row -->
            <div class="row mb-3">

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
                            <h5 class="card-title mb-1">

                                <strong>

                                    <a href="" class="dark-grey-text">Sony D74v</a>

                                </strong>

                            </h5>

                            <span class="badge badge-info mb-2">new</span>

                            <!-- Rating -->
                            <ul class="rating">

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                            </ul>

                            <!-- Card footer -->
                            <div class="card-footer pb-0">

                                <div class="row mb-0">

                    <span class="float-left">

                      <strong>1439$</strong>

                    </span>

                                    <span class="float-right">

                      <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                        <i class="fas fa-shopping-cart ml-3"></i>

                      </a>

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

                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/8.jpg"
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
                            <h5 class="card-title mb-1">

                                <strong>

                                    <a href="" class="dark-grey-text">Samsung V54</a>

                                </strong>

                            </h5>

                            <span class="badge badge-info mb-2">new</span>

                            <!-- Rating -->
                            <ul class="rating">

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                            </ul>

                            <!-- Card footer -->
                            <div class="card-footer pb-0">

                                <div class="row mb-0">

                    <span class="float-left">

                      <strong>1439$</strong>

                    </span>

                                    <span class="float-right">

                      <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                        <i class="fas fa-shopping-cart ml-3"></i>

                      </a>

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

                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/7.jpg"
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
                            <h5 class="card-title mb-1">

                                <strong>

                                    <a href="" class="dark-grey-text">Dell 786i</a>

                                </strong>

                            </h5>

                            <span class="badge badge-info mb-2">new</span>

                            <!-- Rating -->
                            <ul class="rating">

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star grey-text"></i>

                                </li>

                            </ul>

                            <!-- Card footer -->
                            <div class="card-footer pb-0">

                                <div class="row mb-0">

                    <span class="float-left">

                      <strong>1439$</strong>

                    </span>

                                    <span class="float-right">

                      <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                        <i class="fas fa-shopping-cart ml-3"></i>

                      </a>

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

                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg"
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
                            <h5 class="card-title mb-1">

                                <strong>

                                    <a href="" class="dark-grey-text">Canon 675-D</a>

                                </strong>

                            </h5>

                            <span class="badge badge-info mb-2">new</span>

                            <span class="badge badge-success mb-2 ml-2">SALE</span>

                            <!-- Rating -->
                            <ul class="rating">

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                                <li>

                                    <i class="fas fa-star blue-text"></i>

                                </li>

                            </ul>

                            <!-- Card footer -->
                            <div class="card-footer pb-0">

                                <div class="row mb-0">

                                    <h5 class="mb-0 pb-0 mt-1 font-weight-bold">

                      <span class="red-text">

                        <strong>$1199</strong>

                      </span>

                                        <span class="grey-text">

                        <small>

                          <s>$1520</s>

                        </small>

                      </span>

                                    </h5>

                                    <span class="float-right">

                      <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                        <i class="fas fa-shopping-cart ml-3"></i>

                      </a>

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
            <div class="row flex-center mb-5">

                <p>

                    <a class="btn btn-primary btn-rounded mb-5" data-toggle="collapse" href="#collapseExample1"
                       aria-expanded="false" aria-controls="collapseExample1">More products</a>

                </p>

                <div class="collapse" id="collapseExample1">

                    <!-- Grid row -->
                    <div class="row">

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
                                    <h5 class="card-title mb-1">

                                        <strong>

                                            <a href="" class="dark-grey-text">Asus GR-597</a>

                                        </strong>

                                    </h5>

                                    <span class="badge badge-danger mb-2">bestseller</span>

                                    <!-- Rating -->
                                    <ul class="rating text-left">

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                    </ul>

                                    <!-- Card footer -->
                                    <div class="card-footer pb-0">

                                        <div class="row mb-0">

                        <span class="float-left">

                          <strong>1439$</strong>

                        </span>

                                            <span class="float-right">

                          <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                            <i class="fas fa-shopping-cart ml-3"></i>

                          </a>

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

                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/5.jpg"
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
                                    <h5 class="card-title mb-1">

                                        <strong>

                                            <a href="" class="dark-grey-text">Asus CT-567</a>

                                        </strong>

                                    </h5>

                                    <span class="badge badge-danger mb-2">bestseller</span>

                                    <!-- Rating -->
                                    <ul class="rating text-left">

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                    </ul>

                                    <!-- Card footer -->
                                    <div class="card-footer pb-0">

                                        <div class="row mb-0">

                        <span class="float-left">

                          <strong>1439$</strong>

                        </span>

                                            <span class="float-right">

                          <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                            <i class="fas fa-shopping-cart ml-3"></i>

                          </a>

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

                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/2.jpg"
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
                                    <h5 class="card-title mb-1">

                                        <strong>

                                            <a href="" class="dark-grey-text">iPad PRO</a>

                                        </strong>

                                    </h5>

                                    <span class="badge badge-danger mb-2">bestseller</span>

                                    <span class="badge badge-success mb-2 ml-2">SALE</span>

                                    <!-- Rating -->
                                    <ul class="rating text-left">

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star grey-text"></i>

                                        </li>

                                    </ul>

                                    <!-- Card footer -->
                                    <div class="card-footer pb-0">

                                        <div class="row mb-0">

                                            <h5 class="mb-0 pb-0 mt-1 font-weight-bold">

                          <span class="red-text">

                            <strong>$699</strong>

                          </span>

                                                <span class="grey-text">

                            <small>

                              <s>$920</s>

                            </small>

                          </span>

                                            </h5>

                                            <span class="float-right">

                          <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                            <i class="fas fa-shopping-cart ml-3"></i>

                          </a>

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

                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/4.jpg"
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
                                    <h5 class="card-title mb-1">

                                        <strong>

                                            <a href="" class="dark-grey-text">Dell V-964i</a>

                                        </strong>

                                    </h5>

                                    <span class="badge badge-danger mb-2">bestseller</span>

                                    <!-- Rating -->
                                    <ul class="rating text-left">

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                        <li>

                                            <i class="fas fa-star blue-text"></i>

                                        </li>

                                    </ul>

                                    <!-- Card footer -->
                                    <div class="card-footer pb-0">

                                        <div class="row mb-0">

                        <span class="float-left">

                          <strong>1439$</strong>

                        </span>

                                            <span class="float-right">

                          <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">

                            <i class="fas fa-shopping-cart ml-3"></i>

                          </a>

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
        <!-- Section products -->

    </div>
    <!-- Main Container -->

</main>
<!-- Main Layout -->

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
<script src="/mdb/js/default.js"></script>

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
                var flyNumber = $('<span class="fly-number">' + (itemCount + 1) + '</span>');
                // get button add position
                var position = $('.addToCart').offset();
                // set the animation's start position
                flyNumber.css({
                    top: position.top,
                    left: position.left
                });
                $('.shopping-cart').append(flyNumber);
                setTimeout(function () {
                    $('.number').text(itemCount + 1);
                    flyNumber.remove();
                }, 1000);
                console.log(data);
            },
            error: function (data) {
                console.log(data);
            }
        });

    }
</script>
<script>

    function updateColorAndQuantity(cartItemId, quantity, colorId) {
        // Đường dẫn của servlet
        var servletUrl = '/user/updateCartItem';

        // Dữ liệu gửi đi
        var data = {
            cartItemId: cartItemId,
            colorId: colorId,
            quantity: quantity
        };
        console.log(data);
        // Thực hiện yêu cầu AJAX bằng jQuery
        $.ajax({
            type: 'POST',
            url: servletUrl,
            data: data,
            success: function (response) {
                console.log('Request succeeded:', response);
                // Xử lý dữ liệu nhận được từ servlet (nếu cần)
                updatePriceByColorOnItemId(cartItemId, colorId);
                updateTotal(cartItemId, quantity, document.getElementById('price-' + cartItemId).textContent);
            },
            error: function (xhr, status, error) {
                console.error('Request failed:', status, error);
            }
        });
    }

    function updateTotal(cartItemId, quantity, price) {
        if (price == null) {
            price = 0;
        } else {
            price = parseInt(price);
        }
        var total = quantity * price;
        document.querySelector(`#total-for-one-item-` + cartItemId).textContent = total;
        updateTotalAll();
    }

    function updatePriceByColorOnItemId(cartItemId, colorId) {
        var servletUrl = '/getPriceByColorAndProductId';
        var data = {
            cartItemId: cartItemId,
            colorId: colorId
        };
        $.ajax({
            type: 'POST',
            url: servletUrl,
            data: data,
            success: function (response) {
                console.log('Request succeeded:', response);
                // Xử lý dữ liệu nhận được từ servlet (nếu cần)
                var priceElement = document.getElementById(`price-` + cartItemId);
                console.log(priceElement);
                priceElement.textContent = response;


            },
            error: function (xhr, status, error) {
                console.error('Request failed:', status, error);

            }
        });
    }

    function deleteItem(cartItemId, callback) {
        // Đường dẫn của servlet
        var servletUrl = '/user/deleteProductFromCart';

        // Dữ liệu gửi đi
        var data = {
            cartItemId: cartItemId
        };
        console.log(data);
        // Thực hiện yêu cầu AJAX bằng jQuery
        $.ajax({
            type: 'POST',
            url: servletUrl,
            data: data,
            success: function (response) {

                console.log('Request succeeded:', response);
                // Xử lý dữ liệu nhận được từ servlet (nếu cần)
                callback(true);

            },
            error: function (xhr, status, error) {
                console.error('Request failed:', status, error);
                callback(false);
            }
        });

    }

    function removeItem(rowId, cartItemId) {
        var isConfirmed = confirm('Bạn chắc chắn muốn xóa item này?');
        var itemCount = parseInt($(".number").text());
        if (isConfirmed) {
            var rowToRemove = document.getElementById(rowId);
            console.log(rowToRemove);
            if (rowToRemove) {
                rowToRemove.remove();
                deleteItem(cartItemId, function (callback) {
                    if (callback) {
                        $('.number').text(itemCount - 1);
                        console.log('delete success');
                        updateTotalAll();
                    } else {
                        console.log('delete fail');
                    }
                });
            } else {
                console.error('Row not found:', rowId);
            }
        } else {
            console.log('User cancelled');
        }
    }

    function updateTotalAll() {
        var totalAll = 0;
        // Lặp qua tất cả các phần tử có class "font-weight-bold" trong tbody
        var itemTotalElements = document.querySelectorAll('tbody .item');
        itemTotalElements.forEach(function (element) {
            // Trích xuất giá trị tổng từ phần tử và chuyển đổi thành số
            var itemTotal = parseFloat(element.textContent.trim());
            // Thêm giá trị tổng của sản phẩm vào tổng chung
            totalAll += itemTotal;
            console.log(itemTotal);
        });

        // Cập nhật nội dung của phần tử có id "total-all"
        document.getElementById('total-all').textContent = totalAll.toFixed(2);
    }


    window.onload = updateTotalAll;

</script>

</body>

</html>

