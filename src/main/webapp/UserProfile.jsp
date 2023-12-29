<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:11 AM
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
    <link href="/mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="/mdb/css/mdb.min.css" rel="stylesheet">
    <link href="/mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="/mdb/css/style.css" rel="stylesheet">
    <link href="/mdb/css/default.css" rel="stylesheet">
    <link href="/mdb/css/styleKey.css" rel="stylesheet">

</head>

<body class="homepage-v1 hidden-sn white-skin animated">
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
<div class="card">
    <div class="card-body">

        <!--Grid row-->
        <div class="row">

            <!--Grid column-->
            <div class="col-lg-3 mb-4">

                <!-- Pills navs -->
                <ul class="nav flex-column md-pills nav-justified pills-primary font-weight-bold">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#tabUserInfor" role="tab">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabAddress" role="tab">List Address</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabOrderHistory" role="tab">Order History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabListFavourite" role="tab">Favourite List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabChangePassWord" role="tab">Change Password</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabKeyManagement" role="tab">Key Management</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <!-- Pills panels -->
                <div class="tab-content pt-4">

                    <!--User Profile-->
                    <div class="tab-pane fade in show active" id="tabUserInfor" role="tabpanel">

                        <!--Card content-->
                        <form>

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-md-12 mb-4">
                                    <!--firstName-->
                                    <label for="fullName" class="">FullName</label>
                                    <input type="text" id="fullName" class="form-control" value="${name}">
                                </div>
                                <!--Grid column-->
                            </div>
                            <!--Grid row-->

                            <!--email-->
                            <div class="row">
                            <label class="ml-1">Email </label>
                            <p class="text-default ml-4">${emailShow}</p>
                            <a href="" class="btn btn-primary btn-sm">Change Email</a>
                            </div>
                            <hr>
                            <button class="btn btn-primary btn-lg btn-block" onclick="editInfor()">Update Information</button>
                        </form>

                    </div>
                    <!--User Profile-->

                    <!--User Addresses-->
                    <div class="tab-pane fade" id="tabAddress" role="tabpanel">

                        <!--Grid row-->
                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-5 mb-4">

                                <img src="https://mdbootstrap.com/img/Photos/Others/images/43.webp"
                                     class="img-fluid z-depth-1-half"
                                     alt="Second sample image">

                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-7 mb-4">

                                <h5 class="mb-3 h5">Additional premium support</h5>

                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, ea ut aperiam
                                    corrupti,
                                    dolorem.</p>

                                <!--Name-->
                                <select class="mdb-select colorful-select dropdown-info">
                                    <option value="" disabled>Choose a period of time</option>
                                    <option value="1" selected>+6 months : 200$</option>
                                    <option value="2">+12 months: 400$</option>
                                    <option value="3">+18 months: 800$</option>
                                    <option value="4">+24 months: 1200$</option>
                                </select>

                                <button type="button" class="btn btn-primary btn-md">Add premium support to the cart
                                </button>

                            </div>
                            <!--Grid column-->

                        </div>
                        <!--Grid row-->

                        <hr class="mb-5">

                        <!--Grid row-->
                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-5 mb-4">

                                <img src="https://mdbootstrap.com/img/Photos/Others/images/44.webp"
                                     class="img-fluid z-depth-1-half"
                                     alt="Second sample image">

                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-7 mb-4">

                                <h5 class="mb-3 h5">MDB Membership</h5>

                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, ea ut aperiam
                                    corrupti,
                                    dolorem.</p>

                                <!--Name-->
                                <select class="mdb-select colorful-select dropdown-info">
                                    <option value="" disabled>Choose a period of time</option>
                                    <option value="1" selected>+6 months : 200$</option>
                                    <option value="2">+12 months: 400$</option>
                                    <option value="3">+18 months: 800$</option>
                                    <option value="4">+24 months: 1200$</option>
                                </select>

                                <button type="button" class="btn btn-primary btn-md">Add MDB Membership to the cart
                                </button>

                            </div>
                            <!--Grid column-->

                        </div>
                        <!--Grid row-->

                        <hr class="mb-4">

                        <button class="btn btn-primary btn-lg btn-block" type="submit">Next step</button>

                    </div>
                    <!--User Addresses-->

                    <!--list Order-->
                    <div class="tab-pane fade" id="tabOrderHistory" role="tabpanel">
                        <div id="dt-select_filter" class="dataTables_filter"><label>Search:<input type="search"
                                                                                                  class="form-control form-control-sm"
                                                                                                  placeholder=""
                                                                                                  aria-controls="dt-select"></label>
                        </div>
                        <table id="dt-select" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>OrderId</th>
                                <th>Name Product</th>
                                <th>Price</th>
                                <th>Shipping_fee</th>
                                <th>Send day</th>
                                <th>Receive day</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                        </table>

                        <hr class="mb-4">

                    </div>
                    <!--list Order-->

                    <!--list Favourite-->
                    <div class="tab-pane fade" id="tabListFavourite" role="tabpanel">
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
                                                                               class="dark-grey-text">iPhone</a></strong>
                                        </h5>
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
                                        <h5 class="card-title mb-1"><strong><a href=""
                                                                               class="dark-grey-text">iMac</a></strong>
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
                                    <li class="page-item active"><a class="page-link waves-effect waves-effect">1</a>
                                    </li>

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
                    </div>
                    <!--list Favourite-->
                    <!--Change Password-->
                    <div class="tab-pane fade" id="tabChangePassWord" role="tabpanel">
                        <%--                        Form Change Password--%>
                        <form class="text-center border border-light p-5">

                            <p class="h4 mb-4">Change Password</p>

                            <input type="password" id="currentPassWord" class="form-control mb-4"
                                   placeholder="Current Password">

                            <input type="password" id="newPassWord" class="form-control mb-4"
                                   placeholder="New Password">

                            <input type="password" id="confirmPassWord" class="form-control mb-4"
                                   placeholder="Confirm Password">

                            <button class="btn btn-info btn-block my-4" onclick="changePassWord()">Change Password
                            </button>

                        </form>
                    </div>

                    <!--Key Management-->
                    <div class="tab-pane fade" id="tabKeyManagement" role="tabpanel">
                        <div>
                            <button class="btn createk" onclick="momodal()"  >Create Key</button>
                        </div>
                       <div>
                           <button class="btn importk" onclick="momodal2()"  >Import Key</button>
                       </div>
                                <hr class="mb-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-wrap">
                                            <table class="table table-dark">
                                                <thead>
                                                <tr class="bg-dark">
                                                    <th>STT</th>
                                                    <th>PublicKey</th>
                                                    <th>Seri</th>
                                                    <th>&nbsp;</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr class="bg-primary">
                                                    <th scope="row">1</th>
                                                    <td>Mark Otto</td>
                                                    <td>cfss678</td>
                                                    <td><a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            <div class="nenmodal" id="nenmodal-1">
                                <div class="nenmodal2"></div>
                                <div class="ndmodal">
                                    <div class="closemodal"><button onclick="momodal()">×</button></div>
                                    <div method="POST" id="contactForm" name="contactForm" class="contactForm">
                                        <button class="btnblock" type="submit" onclick="createKey()">Create Key</button>
                                        <div class="row">
                                            <div class="col">
                                                <div class="group">
                                                    <label class="label1" >Private Key</label>
                                                    <input type="text" class="form-control" id="privateKey" >
                                                    <i class="fa fa-clone" onclick="" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="group">
                                                    <label class="label1">Public Key</label>
                                                    <input type="text" class="form-control" id="publicKey">
                                                    <i class="fa fa-clone" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="group">
                                                    <label class="label1" >Certificate</label>
                                                    <input type="text" class="form-control" id="certificate">
                                                    <i  class="fa fa-download" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- màn hình import key -->
<%--                            <div class="nenmodal" id="nenmodal-2">--%>
<%--                                <div class="nenmodal2"></div>--%>
<%--                                <div class="ndmodal">--%>
<%--                                    <div class="closemodal"><button onclick="momodal2()">×</button></div>--%>
<%--                                    <div method="POST" id="contactForm2" name="contactForm" class="contactForm">--%>
<%--                                        <button class="btnblock" type="submit" onclick="createKey()">Create Key</button>--%>
<%--                                        <div class="row">--%>
<%--                                            <div class="col">--%>
<%--                                                <div class="group">--%>
<%--                                                    <label class="label1" >Private Key</label>--%>
<%--                                                    <input type="text" class="form-control" id="privateKey2" >--%>
<%--                                                    <i id="downloadIcon2" class="fa fa-download" aria-hidden="true"></i>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col">--%>
<%--                                                <div class="group">--%>
<%--                                                    <label class="label1">Public Key</label>--%>
<%--                                                    <input type="text" class="form-control" id="publicKey2">--%>
<%--                                                    <i class="fa fa-download" aria-hidden="true"></i>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col">--%>
<%--                                                <div class="group">--%>
<%--                                                    <label class="label1" >Certificate</label>--%>
<%--                                                    <input type="text" class="form-control" id="certificate2">--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

                    </div>

                </div>
                <!-- Pills panels -->
            </div>
        </div>
        <!--Grid column-->

    </div>
    <!--Grid row-->
</div>
<!-- Main Container -->
<!-- Footer -->
<%@include file="default/footer.jsp" %>
<!-- Footer -->
<script src="/mdb/js/jquery.min.js"></script>
<script src="/mdb/js/bootstrap.min.js"></script>
<script src="/mdb/js/mdb.min.js"></script>
<%--<script type="text/javascript">--%>
<%--    /* WOW.js init */--%>
<%--    new WOW().init();--%>

<%--    // Tooltips Initialization--%>
<%--    $(function () {--%>
<%--        $('[data-toggle="tooltip"]').tooltip()--%>
<%--    })--%>

<%--    // Material Select Initialization--%>
<%--    $(document).ready(function () {--%>

<%--        $('.mdb-select').material_select();--%>
<%--    });--%>

<%--    // SideNav Initialization--%>
<%--    $(".button-collapse").sideNav();--%>

<%--</script>--%>
<script src="/mdb/js/default.js"></script>

<script>
    function editInfor() {
        var fullName = document.getElementById("fullName").value;
        console.log(fullName);
        $.ajax({
            url: '/user/api',
            type: 'POST',
            data: {
                fullName: fullName
            },
            success: function (data) {
                if (data === "changeName success") {
                    alert("Edit Information Success");
                } else {
                    alert("Edit Information Fail");
                }
            },
            error: function (data) {
                console.log(data);
            }
        })
    }
</script>
<script>
    function changePassWord() {
        var currentPassWord = document.getElementById("currentPassWord").value;
        var newPassWord = document.getElementById("newPassWord").value;
        var confirmPassWord = document.getElementById("confirmPassWord").value;
        $.ajax({
            url: '/user/api',
            type: 'POST',
            data: {
                oldPass: currentPassWord,
                newPass: newPassWord,
                reNewPass: confirmPassWord
            },
            success: function (data) {
                console.log(data);
                if (data === "changePass success") {
                    alert("Change Password Success");
                } else {
                    alert("Change Password Fail");
                }
            },
            error: function (data) {
                console.log(data);
            }
        })
    }
</script>
<script>
    function momodal(){
        document.getElementById("nenmodal-1").classList.toggle("active");
    }
</script>
<%--<script>--%>
<%--    function momodal2(){--%>
<%--        document.getElementById("nenmodal-2").classList.toggle("active");--%>
<%--    }--%>
<%--</script>--%>
//tao khoa
<script type="text/javascript">
    function createKey() {
        $.ajax({
            url: "/user/userKey",
            method: "GET",
            dataType : "json",
            contentType:"application/json",
            success: function (data) {
                console.log("data"+data);
                // Hiển thị thông tin khóa trên giao diện
                $("#publicKey").val(data.pubKey);
                $("#privateKey").val(data.priKey);
                $("#certificate").val(data.cer);


            },
            error: function () {
                alert("Error creating RSA key pair.");
            }
        });
    }
</script>
// tai ve
<script>
    $(document).ready(function () {
        $("#downloadIcon").click(function () {
            // Sử dụng AJAX để gửi yêu cầu POST
            $.ajax({
                type: "POST",
                url: "DownloadServlet", // Đặt đường dẫn đến Servlet hoặc JSP xử lý yêu cầu ở đây
                success: function (data) {
                    // Xử lý phản hồi từ server
                    // Trong trường hợp này, giả sử server trả về một đường dẫn file
                    downloadFile(data);
                },
                error: function () {
                    alert("Đã xảy ra lỗi khi tải về.");
                }
            });
        });

        // Hàm tải về tệp tin
        function downloadFile(filePath) {
            var a = document.createElement('a');
            a.href = filePath;
            a.download = 'downloaded_file.txt';
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }
    });
</script>
</body>
</html>



