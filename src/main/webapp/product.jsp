<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link href="/mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="/mdb/css/mdb.min.css" rel="stylesheet">
    <link href="/mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="/mdb/css/style.css" rel="stylesheet">
    <link href="/mdb/css/default.css" rel="stylesheet">

</head>
<body class="category-v2 hidden-sn white-skin animated">
<!-- Navigation -->
<%@ include file="/default/header.jsp"%>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="/default/menu.jsp"%>
<!-- Mega menu -->

<!-- Main Container-->
<div class="container-fluid mt-5 pt-3">
    <div class="row pt-4">
        <!-- Sidebar-->
        <div class="col-lg-3">

            <div class="">

                <!-- Grid row-->
                <div class="row">

                    <div class="col-md-6 col-lg-12 mb-5">

                        <!-- Panel-->
                        <h5 class="font-weight-bold dark-grey-text"><strong>Order By</strong></h5>

                        <div class="divider"></div>

                        <p class="blue-text"><a><i class="fas fa-certificate"></i>BestSellers</a></p>

                        <p class="blue-text"><a>Popularity</a></p>

                        <p class="blue-text"><a><i class="fas fa-angle-double-up"></i>Low to High</a></p>

                        <p class="blue-text"><a><i class="fas fa-angle-double-down"></i> High to Low</a></p>

                    </div>

                    <!-- Filter by category-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Category</strong></h5>

                        <div class="divider"></div>

                        <!-- checkbox group-->
                       <c:forEach items="${categories}" var="category">
                        <div class="form-check">
                            <input class="form-check-input" name="Cat" type="checkbox" id="${category.name}" value="${category.categoryId}">
                            <label for="${category.name}" class="form-check-label dark-grey-text">${category.name}</label>
                        </div>
                       </c:forEach>

                    </div>
                    <!-- Filter by category-->
                    <!-- Filter by brand-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Brand</strong></h5>

                        <div class="divider"></div>

                        <!-- checkbox group-->
                        <c:forEach items="${brands}" var="brand">
                            <div class="form-check">
                                <input class="form-check-input" name="Bra" type="checkbox" id="${brand.name}" value="${brand.brandId}" >
                                <label for="${brand.name}" class="form-check-label dark-grey-text">${brand.name}</label>
                            </div>
                        </c:forEach>
                        <!-- checkbox group-->

                    </div>
                    <!-- Filter by brand-->

                    <!-- Filter by supplier-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Supplier</strong></h5>

                        <div class="divider"></div>

                        <!-- checkbox group-->
                        <c:forEach items="${suppliers}" var="supplier">
                            <div class="form-check">
                                <input class="form-check-input" name="Sup" type="checkbox" id="${supplier.name}" value="${supplier.supplierId}" >
                                <label for="${supplier.name}" class="form-check-label dark-grey-text">${supplier.name}</label>
                            </div>
                        </c:forEach>
                        <!-- checkbox group-->

                    </div>
                    <!-- Filter by supplier-->

                    <!-- Filter by discount-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Discount</strong></h5>

                        <div class="divider"></div>

                        <!-- checkbox group-->
                        <c:forEach items="${discounts}" var="discount">
                            <div class="form-check">
                                <input class="form-check-input" name="Dis" type="checkbox" id="${discount.name}" value="${discount.discountId}" >
                                <label for="${discount.name}" class="form-check-label dark-grey-text">${discount.name}</label>
                            </div>
                        </c:forEach>
                        <!-- checkbox group-->
                    </div>
                    <!-- Filter by discount-->

                    <!-- Filter by wheel size-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Wheel Size</strong></h5>

                        <div class="divider"></div>

                        <!-- checkbox group-->
                        <c:forEach items="${wheelSizes}" var="wheelSize">
                            <div class="form-check">
                                <input class="form-check-input" name="Wheel" type="checkbox" id="${wheelSize}" value="${wheelSize}" >
                                <label for="${wheelSize}" class="form-check-label dark-grey-text">${wheelSize}</label>
                            </div>
                        </c:forEach>
                        <!-- checkbox group-->
                    </div>
                    <!-- Filter by wheel size-->

                    <!-- Filter by status-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Status</strong></h5>

                        <div class="divider"></div>

                        <!-- checkbox group-->
                            <div class="form-group">
                                <input class="form-check-input" name="Status" type="checkbox" id="1" value="1">
                                <label for="1" class="form-check-label dark-grey-text">ACTIVE</label>
                            </div>
                        <div class="form-group">
                            <input class="form-check-input" name="Status" type="checkbox" id="2" value="2">
                            <label for="2" class="form-check-label dark-grey-text">INACTIVE</label>
                        </div>
                        <div class="form-group">
                            <input class="form-check-input" name="Status" type="checkbox" id="3" value="3">
                            <label for="3" class="form-check-label dark-grey-text">OUT_OF_STOCK</label>
                        </div>
                        <div class="form-group">
                            <input class="form-check-input" name="Status" type="checkbox" id="4" value="4">
                            <label for="4" class="form-check-label dark-grey-text">ON_SALE</label>
                        </div>
                        <!-- checkbox group-->
                    </div>
                    <!-- Filter by status-->
                </div>
                <!-- Grid row-->

                <!-- Grid row-->
                <div class="row">

                    <!-- Filter by price-->
                    <div class="col-md-6 col-lg-12 mb-5">

                        <h5 class="font-weight-bold dark-grey-text"><strong>Price</strong></h5>

                        <div class="divider"></div>

                        <form class="range-field mt-3">

                            <input id="calculatorSlider" class="no-border" type="range" value="100000000" min="0" max="100000000"  />
                        </form>

                        <!-- Grid row-->
                        <div class="row justify-content-center">

                            <!-- Grid column-->
                            <div class="col-md-6 text-left">

                                <p class="dark-grey-text"><strong id="resellerEarnings">0</strong></p>

                            </div>
                            <!-- Grid column-->

                            <!-- Grid column-->
                            <div class="col-md-6 text-right">

                                <p class="dark-grey-text"><strong id="clientPrice">100.000.000</strong></p>

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
                        <div class="row productList">
                            <c:forEach items="${data}" var="prod">
                                <!-- Grid column -->
                                <div class=" col-lg-4 col-md-12 mb-4">

                                    <!-- Card -->
                                    <div class="card card-ecommerce">

                                        <!-- Card image -->
                                        <div class="view overlay">

                                            <img src="" class="img-fluid" alt="">
                                            <a>
                                                <div class="mask rgba-white-slight"></div>
                                            </a>

                                        </div>
                                        <!-- Card image -->

                                        <!-- Card content -->
                                        <div class="card-body">

                                            <!-- Category & Title -->
                                            <h5 class="card-title mb-1"><strong><a href=""
                                                                                   class="dark-grey-text">${prod.name}</a></strong>
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

                                                    <span class="float-left"><strong>${prod.price}</strong></span>

                                                    <span class="float-right">

                            <a class="addToCart" role="button" data-toggle="tooltip" data-placement="top"
                               title="Add to Cart"><i
                                    class="fas fa-shopping-cart ml-3" onclick="addTocart(${prod.productId})"></i></a>

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
                        </div>
                        <!-- Grid row -->

                        <!-- Grid row -->
                        <div class="row justify-content-center mb-4">

                            <!-- Pagination -->
                            <nav class="mb-4">

                                <ul class="pagination pagination-circle pg-blue mb-0">

                                    <!-- First -->
                                    <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                        <a class="page-link waves-effect waves-effect">First</a>
                                    </li>

                                    <!-- Arrow left -->
                                    <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                        <a class="page-link waves-effect waves-effect"
                                           aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>

                                    <!-- Numbers -->
                                    <c:forEach var="i" begin="1" end="${totalPage}">
                                        <li class="page-item ${i == currentPage ? 'active' : ''}">
                                            <a class="page-link waves-effect waves-effect"
                                            >${i}</a>
                                        </li>
                                    </c:forEach>
                                    <!-- Arrow right -->
                                    <li class="page-item ${currentPage == totalPage ? 'disabled' : ''}">
                                        <a class="page-link waves-effect waves-effect"
                                           aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>

                                    <!-- Last -->
                                    <li class="page-item ${currentPage == totalPage ? 'disabled' : ''}">
                                        <a class="page-link waves-effect waves-effect">Last</a>
                                    </li>
                                </ul>
                            </nav>
                            <!-- Pagination -->

                        </div>
                        <!-- Grid row -->


                    </div>

                </div>
                <!-- Grid row -->

            </section>
            <!-- Section: Products -->

        </div>
        <!-- Content-->


    </div>

</div>
<!-- Main Container-->

<!--onTop-->
<%@include file="/default/ontopButton.jsp"%>
<!--onTop-->
<!-- Footer -->
<%@include file="/default/footer.jsp"%>
<!-- Footer -->
<script src="/mdb/js/jquery.min.js"></script>
<script src="/mdb/js/bootstrap.min.js"></script>
<script src="/mdb/js/mdb.min.js"></script>
<script type="text/javascript">
    function loadRecord(pageNumber) {
        $.ajax({
            url: "/api/pagination",
            method: "GET",
            data: {page: pageNumber},
            success: function (response) {
                var data = JSON.parse(response);
                console.log(data.length);
                console.log(data);
                var html = "";
                for (var i = 0; i < data.length; i++) {
                    html += '<div class="col-lg-4 col-md-12 mb-4">'+
                        '<div class="card card-ecommerce">' +
                        '<div class="view overlay">' +
                        '<img src="' + data[i].image + '" class="img-fluid" alt="">' +
                        '<a><div class="mask rgba-white-slight"></div></a>' +
                        '</div>' +
                        '<div class="card-body">' +
                        '<h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">' + data[i].name + '</a></strong></h5>' +
                        '<span class="badge badge-danger mb-2">bestseller</span>' +
                        '<ul class="rating">' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '</ul>' +
                        '<div class="card-footer pb-0">' +
                        '<div class="row mb-0">' +
                        '<span class="float-left"><strong>' + data[i].price + '</strong></span>' +
                        '<span class="float-right">' +
                        '<a class="addToCart" role="button" data-toggle="tooltip" data-placement="top" title="Add to Cart">' +
                        '<i class="fas fa-shopping-cart ml-3" onclick="addTocart(' + data[i].productId + ')"></i></a>' +
                        '</span>' +
                        '</div></div></div></div></div>';
                }
                $(".productList").empty().html(html);

            },
            error: function (xhr, status, error) {
                console.log(xhr);
                console.log(status);
                console.log(error);
            }
        });
    }
    // pagination with 10 records per page
    $(document).on('click', '.page-link', function (event) {
        event.preventDefault();
        // get page number
        var page = $(this).text();
        // active page link
        $(this).parent().siblings().removeClass("active");
        $(this).parent().addClass("active");
        if (page === "First") {
            page = 1;
        }
        if (page === "Last") {
            let totalPage = parseInt($(".page-item").length) - 4;
            page = totalPage;
        }
        if (page === "«") {
            let currentPage = parseInt($(".page-item.active").text());
            page = currentPage - 1;
        }
        if (page === "»") {
            let currentPage = parseInt($(".page-item.active").text());
            page = currentPage + 1;
        }
        var recordsPerpage = 9;
        loadRecord(page);

    });
</script>
<script type="text/javascript">
    function productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice){
        var request = {
            category: category,
            brand: brand,
            supplier: supplier,
            discount: discount,
            status: status,
            wheelSize: wheelSize,
            minPrice: minPrice,
            maxPrice: maxPrice
        };
        $.ajax({
            url: "/products_filter",
            method: "POST",
            dataType: "json",
            contentType: "application/json",
            data: JSON.stringify( request),
            success: function (response) {
                console.log(response);
                var data = response;
                console.log(data.length);
                var html = "";
                for (var i = 0; i < data.length; i++) {
                    html+='<div class="col-lg-4 col-md-12 mb-4">'+
                        '<div class="card card-ecommerce">' +
                        '<div class="view overlay">' +
                        '<img src="' + data[i].image + '" class="img-fluid" alt="">' +
                        '<a><div class="mask rgba-white-slight"></div></a>' +
                        '</div>' +
                        '<div class="card-body">' +
                        '<h5 class="card-title mb-1"><strong><a href="" class="dark-grey-text">' + data[i].name + '</a></strong></h5>' +
                        '<span class="badge badge-danger mb-2">bestseller</span>' +
                        '<ul class="rating">' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '<li><i class="fas fa-star blue-text"></i></li>' +
                        '</ul>' +
                        '<div class="card-footer pb-0">' +
                        '<div class="row mb-0">' +
                        '<span class="float-left"><strong>' + data[i].price + '</strong></span>' +
                        '<span class="float-right">' +
                        '<a class="addToCart" role="button" data-toggle="tooltip" data-placement="top" title="Add to Cart">' +
                        '<i class="fas fa-shopping-cart ml-3" onclick="addTocart(' + data[i].productId + ')"></i></a>' +
                        '</span>' +
                        '</div></div></div></div></div>';
                }
                $(".productList").empty().html(html);
            }
        })
    }
    $(document).ready(function () {
        var category = [];
        var brand = [];
        var supplier = [];
        var discount = [];
        var status = [];
        var wheelSize = [];
        var minPrice = 0;
        var maxPrice = 100000000;
        $("input[name='Cat']").click(function () {
            category = [];
            $("input[name='Cat']:checked").each(function () {
                category.push($(this).val());
            });
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
        });
        $("input[name='Bra']").click(function () {
            brand = [];
            $("input[name='Bra']:checked").each(function () {
                brand.push($(this).val());
            });
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
        });
        $("input[name='Sup']").click(function () {
            supplier = [];
            $("input[name='Sup']:checked").each(function () {
                supplier.push($(this).val());
            });
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
        });
        $("input[name='Dis']").click(function () {
            discount = [];
            $("input[name='Dis']:checked").each(function () {
                discount.push($(this).val());
            });
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
        });
        $("input[name='Status']").click(function () {
            status = [];
            $("input[name='Status']:checked").each(function () {
                status.push($(this).val());
            });
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
        });
        $("input[name='Wheel']").click(function () {
            wheelSize = [];
            $("input[name='Wheel']:checked").each(function () {
                wheelSize.push($(this).val());
            });
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
        });
        $("#calculatorSlider").on("input", function () {
            var value = $(this).val();
            var resellerEarnings = value * 0.1;
            var clientPrice = value - resellerEarnings;
            $("#resellerEarnings").text(resellerEarnings);
            $("#clientPrice").text(clientPrice);
            minPrice = clientPrice;
            maxPrice = value;
            productFilter(category,brand,supplier, discount, status, wheelSize, minPrice, maxPrice);
    });
    });
</script>
<script src="/mdb/js/default.js"></script>
</body>
</html>
