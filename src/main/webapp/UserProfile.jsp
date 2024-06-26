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


    <link rel="stylesheet"
          href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/css/mdb.min.css">
    <link href="/mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="./mdb/css/manaKey.css" rel="stylesheet">
    <link href="/mdb/css/style.css" rel="stylesheet">
    <link href="/mdb/css/default.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">


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
                            <button class="btn btn-primary btn-lg btn-block" onclick="editInfor()">Update Information
                            </button>
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
                        <div class="table-responsive">
                            <table id="orderTable" class="table table-hover flex-nowrap" style="width: 100%">
                            </table>
                        </div>
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
                        <div id="button-container-table">
                            <button class="btn createk" onclick="momodal()">Create Key</button>

                            <button class="btn importk" onclick="momodal2()">Import Key</button>

                            <button class="btn revok" onclick="momodal3()">Revocation Key</button>
                        </div>
                        <!-- popup thong bao -->


                    </div>
                    <hr class="mb-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-wrap">
                                <table class="table table-dark">
                                    <thead>
                                    <tr class="bg-dark">

                                        <th>Name</th>
                                        <th>Seri</th>
                                        <th>Start Date</th>
                                        <th>End Date</th>
                                        <th>Status</th>
                                    </tr>
                                    </thead>
                                    <tbody id="myTable" border="1">
                                    <c:forEach var="certView" items="${certViews}">
                                        <tr class="bg-primary bug">
                                            <td>${certView.getName()}</td>
                                            <td id="seri" name="seri">${certView.getSeri()}</td>
                                            <td>${certView.getStartDate()}</td>
                                            <td>${certView.getEndDate()}</td>

                                            <td>${certView.getStatus()}</td>

                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>

                    <div class="nenmodal" id="nenmodal-1">

                        <div class="ndmodal">
                            <div class="closemodal">
                                <button onclick="momodal(), redirect('/user') ">×</button>
                            </div>
                            <div method="POST" id="contactForm" name="contactForm" class="contactForm">
                                <div class="fname">
                                    <label class="label1">Name</label>
                                    <input id="issuerName" name="issuerName" type="text"
                                           placeholder="Người dùng nhập tên để tạo cetificate">
                                    <button class="btnblock" type="submit" onclick="createKey()">Create Key</button>
                                </div>

                                <div class="rowKey">
                                    <div class="colKey">
                                        <div class="groupKey">
                                            <label class="label1">Private Key</label>
                                            <input class="inputframe" type="text" id="privateKey">
                                            <i class="fa fa-clone" id="copypri" aria-hidden="true"></i>
                                        </div>
                                    </div>

                                    <div class="colKey">
                                        <div class="groupKey">
                                            <label class="label1">Public Key</label>
                                            <input class="inputframe" type="text" id="publicKey">
                                            <i class="fa fa-clone" id="copypub" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="colKey">
                                        <div class="groupKey">
                                            <label class="label1">Certificate</label>
                                            <input class="inputframe" type="text" id="certificate">
                                            <i class="fa fa-clone" id="copycer" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- màn hình import key -->
                <div class="nenmodal" id="nenmodal-2">

                    <div class="ndmodal">
                        <div class="closemodal">
                            <button onclick="momodal2(), redirect('/user') ">×</button>
                        </div>
                        <div method="POST" id="contactForm2" name="contactForm" class="contactForm">

                            <div class="rowKey">
                                <div class="colKey">
                                    <div class="groupKey">
                                        <label class="label1">Name </label>
                                        <input type="text" class="inputframe" name="username" id="username">
                                    </div>
                                </div>
                            </div>
                            <div class="colKey">
                                <div class="groupKey">
                                    <label class="label1">Public Key</label>
                                    <input type="text" name="pubKey2" class="inputframe"
                                           id="pubKey2">
                                    <i class="fa fa-clone" id="copypub2" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                        <div class="colKey">
                            <div class="groupKey">
                                <label class="label1">Certificate</label>
                                <input type="text" class="inputframe" id="certificate2">
                                <i class="fa fa-clone" id="copycer2" aria-hidden="true"></i>
                                <button class="btnblock btncreate" type="submit" onclick="ImportKey()">Create</button>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- màn hình revocation key -->
    <div class="nenmodal" id="nenmodal-3">

        <div class="ndmodal">
            <div class="closemodal">
                <button onclick="momodal3(), redirect('/user') ">×</button>
            </div>

            <div method="POST" id="contactForm3" name="contactForm" class="contactForm">

                <div class="md-form md-outline input-with-post-icon datepicker" data-date-format="dd-mm-yyyy"
                     id="customDays" aria-haspopup="true" aria-expanded="false" aria-readonly="false"
                     aria-owns="customDays_root">
                    <input placeholder="Select date" type="text" id="Customization" name="revokedAt"
                           class="form-control picker__input">
                    <label for="Customization" class="active">Ngày khóa</label>
                    <i class="fas fa-calendar input-prefix active" tabindex="0"></i>
                </div>

                <div class="colKey">
                    <div class="groupKey">
                        <label class="label">Số Seri</label>
                        <input type="text" class="inputframe" name="Number" id="Number">
                        <i class="fa fa-clone" id="copyseri2" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="group">
                    <button class="btnblock btnrevo" type="submit" onclick="revocation()">Khóa
                        <i class="fa fa-lock  " aria-hidden="true" onclick="abc()"></i>
                    </button>
                </div>
            </div>


        </div>
    </div>
</div>
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
<%--<script src="/mdb/js/jquery.min.js"></script>--%>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/jquery.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/popper.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/mdb.min.js"></script>
<script src="/mdb/js/default.js"></script>

<script>
    $('.datepicker').datepicker({
        format: "dd-mm-yyyy",
        weekdaysShort: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
        showMonthsShort: true,

    })
</script>
//datatables order
<script>
    $(document).ready(function () {
        let table = $('#orderTable').dataTable({
            info: false,
            scrollX: true,
            "ajax": {
                "url": "/user/order-api",
                "type": "GET",
                "dataSrc": "",
                "dataType": "json",
                "contentType": "application/json",
            },
            "columns": [
                {title: "Order ID", data: "orderId"},
                {title: "Full Address", data: "fullAddress"},
                {
                    title: "Shipping Fee", data: "shippingFee", render: function (data) {
                        return writeToCurrencyString(data);

                    }
                },
                {title: "Total Price", data: "total", render: function (data) {
                        return writeToCurrencyString(data);
                    }},
                {
                    title: "Status", data: "status",
                    render: function (data, type, row) {
                        if (data === 0) {
                            return '<a class="badge badge-pill badge-danger">UNVERIFIED</a>'
                        }
                        if (data === 1) {
                            return '<span class="badge badge-pill badge-success">PENDING</span>'
                        } else if (data === 2) {
                            return '<span class="badge badge-pill badge-success">CONFIRMED</span>'
                        } else if (data === 3) {
                            return '<span class="badge badge-pill badge-success">PROCESSING</span>'
                        } else if (data === 4) {
                            return '<span class="badge badge-pill badge-success">SHIPPING</span>'
                        } else if (data === 5) {
                            return '<span class="badge badge-pill badge-success">DELIVERED</span>'
                        } else if (data === 6) {
                            return '<span class="badge badge-pill badge-danger">CANCELLED</span>'
                        } else if (data === 7) {
                            return '<span class="badge badge-pill badge-warning">RETURNED</span>'
                        } else if (data === 8) {
                            return '<span class="badge badge-pill badge-dark">REFUNDED</span>'
                        }
                    }
                },
                {
                    title: "Action", data: "orderId",
                    render: function (data, type, row) {
                        if (row.status === 0) {
                            return '<a href="/user/order?orderId=' + data + '" class="btn btn-primary btn-sm">Check signature</a>'
                        }
                        return '<button class="btn btn-primary btn-sm verifyBtn" type="button">Verify Order</button>'
                    }
                }
            ]
        });
    });

    function writeToCurrencyString(price) {
        return price.toLocaleString('en-US') + ' VND';
    }
</script>
<script>
    function verifyOrder(orderId) {
        return new Promise((resovle, reject) => {
            $.ajax({
                url: '/api/verify-order',
                type: 'POST',
                data: {
                    orderId: orderId
                },
                success: function (data) {
                    if (data === "true") {
                        // create popup alert success
                        alert("Verify Order Success");
                        resovle(true);

                    } else {
                        // create popup alert fail
                        alert("Verify Order Fail");
                        resovle(false);
                    }
                },
                error: function (data) {
                    console.log(data);
                }
            })
        });
    }

    $(document).on('click', '.verifyBtn', function () {
        var orderId = $(this).closest('tr').find('td:eq(0)').text();
        console.log(orderId);
        verifyOrder(orderId).then((result) => {
            if (result) {
                // get row index with orderId
                var table = $('#orderTable').DataTable();
                var index = table.rows().eq(0).filter(function (rowIdx) {
                    return table.cell(rowIdx, 0).data() === orderId ? true : false;
                });
                // change color of row
                table.rows(index).nodes().to$().addClass('table-success');

            } else {
                // get row index with orderId
                var table = $('#orderTable').DataTable();
                var index = table.rows().eq(0).filter(function (rowIdx) {
                    return table.cell(rowIdx, 0).data() === orderId ? true : false;
                });
                // change color of row
                table.rows(index).nodes().to$().addClass('table-danger');
            }
        });
    });
</script>
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

    function momodal() {
        document.getElementById("nenmodal-1").classList.toggle("active");

    }

</script>
<script>
    function redirect(url) {
        window.location.href = url;
    }
</script>
<script>
    function momodal2() {
        document.getElementById("nenmodal-2").classList.toggle("active");
    }
</script>
<script>
    function momodal3() {
        document.getElementById("nenmodal-3").classList.toggle("active");
    }
</script>

<script>

</script>
//tao khoa
<script type="text/javascript">
    function createKey() {
        var issuerName = document.getElementById("issuerName").value;
        $.ajax({
            url: "/user/userKey",
            method: "GET",
            dataType: "json",
            data: {
                issuerName: issuerName
            },
            contentType: "application/json",

            success: function (data) {
                console.log("data" + data);
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
//import key
<script type="text/javascript">

    function ImportKey() {
        var username = document.getElementById("username").value;
        var pubKey2 = document.getElementById("pubKey2").value;
        console.log("ten" + username + "pub" + pubKey2);
        $.ajax({
            url: "/user/importKey",
            method: "GET",
            dataType: "json",
            data: {
                username: username,
                pubKey2: pubKey2,
            },
            contentType: "application/json",
            success: function (data) {
                console.log("data" + data);
                // Hiển thị thông tin khóa trên giao diện

                $("#certificate2").val(data.cer);


            },
            error: function () {
                alert("Error creating RSA key pair.");
            }
        });

    }
</script>
<script type="text/javascript">

    function revocation() {
        var Number = document.getElementById("Number").value;
        var Customization = document.getElementById("Customization").value;

        $.ajax({
            url: "/user/RevocationCert",
            method: "GET",
            dataType: "json",
            data: {
                Number: Number,
                Customization: Customization,
            },
            contentType: "application/json",
            success: function (data) {


            },

        });
    }
</script>

<script>
    function abc() {

        var userConfirmed = confirm("Bấm vào nút OK để tiếp tục");

        if (userConfirmed) {

            ipnElement.select(); // Step 4
            location.reload();
        } else {

        }
    }

</script>
<script>
    // step 1
    const ipnElement = document.querySelector('#privateKey')
    const btnElement = document.querySelector('#copypri')
    //
    const ipnElement1 = document.querySelector('#publicKey')
    const btnElement1 = document.querySelector('#copypub')
    //
    const ipnElement2 = document.querySelector('#certificate')
    const btnElement2 = document.querySelector('#copycer')
    //
    const ipnElement3 = document.querySelector('#pubKey2')
    const btnElement3 = document.querySelector('#copypub2')

    const ipnElement4 = document.querySelector('#certificate2')
    const btnElement4 = document.querySelector('#copycer2')

    const ipnElement5 = document.querySelector('#seri2')
    const btnElement5 = document.querySelector('#copyseri2')

    // step 2
    btnElement.addEventListener('click', function () {

        ipnElement.select() // step 4
        document.execCommand('copy')
    })
    btnElement1.addEventListener('click', function () {
        ipnElement1.select() // step 4
        document.execCommand('copy')
    })
    btnElement2.addEventListener('click', function () {
        ipnElement2.select() // step 4
        document.execCommand('copy')
    })
    btnElement3.addEventListener('click', function () {
        ipnElement3.select() // step 4
        document.execCommand('copy')
    })
    btnElement4.addEventListener('click', function () {
        ipnElement4.select() // step 4
        document.execCommand('copy')
    })
    btnElement5.addEventListener('click', function () {
        ipnElement5.select() // step 4
        document.execCommand('copy')
    })


</script>

</body>
</html>



