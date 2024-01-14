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

</head>
<body class="product-v2 hidden-sn white-skin animated">

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
            <div class="col-lg-6 mb-4">
                <a class="nav-link active" data-toggle="tab" href="#userAddress" role="tab">Check Out </a>
                <!-- Pills panels -->
                <div class="tab-content pt-4">
                    <!--Panel 1-->
                    <div class="tab-pane fade in show active" id="userAddress" role="tabpanel">
                        <!--Card content-->
                        <form id="listAddress" method="post" action="/user/checkout">
                            <!--Grid column-->
                            <fieldset>
                                <div class="row">
                                    <div class="col">
                                        <label for="chooseAddress">Select Address</label>

                                        <select class=" custom-select md-form  d-block w-100" id="chooseAddress"
                                                name="addressId"
                                                required>
                                            <option value="" selected>Choose...</option>
                                            <c:forEach items="${addressList}" var="address">
                                                <option value="${address.addressId}">${address.homeAddress}
                                                    - ${address.district}-${address.city}</option>
                                            </c:forEach>
                                            <option value="addNewAddress">Thêm địa chỉ mới</option>
                                        </select>
                                        <input hidden="hidden" value=>
                                        <div class="invalid-feedback">
                                            Please select a valid country.
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col">
                                        <label for="shipping-fee">Shipping fee is 35.000</label>
                                        <input type="number" id="shipping-fee" class="form-control mb-4" disabled
                                               placeholder="35000">
                                    </div>
                                </div>
                                <hr>
                                <button id="continueButton" class="btn btn-primary" type="submit">Continue to
                                    checkout
                                </button>
                            </fieldset>
                        </form>
                        <form style="display: none" id="newAddress">
                            <!--address-->
                            <fieldset>
                                <div class="row">
                                    <div class="col">
                                        <label for="city">City</label>
                                        <input id="city" value="city" class="form-control mb-4"
                                               placeholder="city">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label for="district">District</label>
                                        <input id="district" value="district" class="form-control mb-4"
                                               placeholder="district">
                                    </div>
                                </div>
                                <label for="homeAddress">Home Address</label>
                                <input type="text" id="homeAddress" class="form-control mb-4"
                                       placeholder="1234 Main St">
                                <button id="addnew" class="btn btn-primary " onclick="addNewAddress()">Add New Address
                                </button>
                            </fieldset>
                        </form>
                    </div>
                    <!-- Pills panels -->
                </div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-6 mb-4">
                <!--Card-->
                <div class="card">

                    <!--Card content-->
                    <div class="card-body">
                        <h4 class="mb-4 mt-1 h5 text-center font-weight-bold">Summary</h4>
                        <hr>
                        <c:forEach items="${itemList}" var="cartItem">
                            <dl class="row">
                                <dd class="col-sm-4">
                                        ${cartItem.product.name}
                                </dd>
                                <dd class="col-sm-2">
                                        ${cartItem.quantity}
                                </dd>
                                <dd class="col-sm-3">${cartItem.product.price}</dd>
                                <dd class="col-sm-3 price">
                                        ${cartItem.product.price * cartItem.quantity}
                                </dd>
                            </dl>
                        </c:forEach>
                        <dl class="row">
                            <dd class="col-sm-7">
                                <h6 class="mb-0">Total</h6>
                            </dd>
                            <dd class="col-sm-5">
                                <h6 class="mb-0"><strong id="total-all">${totalPrice}</strong></h6>
                            </dd>
                        </dl>
                        <hr>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label>Cash on Delivery</label>
                            </div>
                        </div>
                        <hr>
                    </div>

                </div>
                <!--/.Card-->
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</div>
<!-- Main Container -->


<!-- Footer -->
<%@include file="default/footer.jsp" %>
<!-- Footer -->
<script>
    // show form add new address when chose option add new address
    document.getElementById("chooseAddress").addEventListener("change", showForm);

    function showForm() {
        var x = document.getElementById("chooseAddress").value;
        if (x === "addNewAddress" || x === "") {
            document.getElementById("newAddress").style.display = "block";
            document.getElementById("continueButton").style.display = "none";
        } else {
            document.getElementById("newAddress").style.display = "none";
            document.getElementById("continueButton").style.display = "block";
        }
    }
</script>
<script src="/mdb/js/popper.min.js"></script>
<script src="/mdb/js/jquery.min.js"></script>
<script src="/mdb/js/bootstrap.min.js"></script>
<script src="/mdb/js/mdb.min.js"></script>
<script src="/mdb/js/axios.min.js"></script>
<script>
    function addNewAddress() {
        var city = document.getElementById("city").value;
        var district = document.getElementById("district").value;
        var homeAddress = document.getElementById("homeAddress").value;
        $.ajax({
            url: "/user/api/address",
            type: "POST",
            data: {
                city: city,
                district: district,
                homeAddress: homeAddress
            },
            success: function (data) {
                if (data === "insert success") {
                    alert("Thêm địa chỉ thành công");
                    location.reload();
                } else {
                    alert("Thêm địa chỉ thất bại");
                }
                console.log(data);
            },
            error: function (data) {
                console.log(data);
            }
        });

    }
</script>
<script src="/mdb/js/default.js"></script>
</body>
</html>


