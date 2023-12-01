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
            <div class="col-lg-8 mb-4">
                <a class="nav-link active" data-toggle="tab" href="#tabCheckoutBilling123" role="tab">1.
                    Billing</a>
                <!-- Pills panels -->
                <div class="tab-content pt-4">
                    <!--Panel 1-->
                    <div class="tab-pane fade in show active" id="tabCheckoutBilling123" role="tabpanel">
                        <!--Card content-->
                        <form id="listAddress">
                            <!--Grid column-->
                            <fieldset>
                                <div class="row">
                                    <div class="col">
                                        <label for="chooseAddress">Select Address</label>
                                        <select class=" custom-select md-form  d-block w-100" id="chooseAddress"
                                                required>
                                            <option value="" disabled selected>Choose...</option>
                                            <option value="2"
                                                    data-secondary-text="Tran phu, Tay đo, hung ha, thai binh ">Chan
                                                chan - 097733548
                                            </option>
                                            <option value="2"
                                                    data-secondary-text="Tran phu, Tay đo, hung ha, thai binh ">Chan
                                                chan - 097733548
                                            </option>
                                            <option value="addNewAddress">Thêm địa chỉ mới</option>
                                        </select>
                                        <div class="invalid-feedback">
                                            Please select a valid country.
                                        </div>

                                    </div>
                                </div>
                                <hr>
                            </fieldset>
                        </form>
                        <form style="display: none" id="newAddress" action="checkout" method="post">
                            <!--address-->
                            <fieldset>
                                <div class="row">
                                    <div class="col">
                                        <label for="address" class="">Address</label>
                                        <input type="text" id="address" class="form-control mb-4"
                                               placeholder="1234 Main St">
                                    </div>

                                </div>
                                <!--Country-->
                                <div class="row">

                                    <!--Grid column-->
                                    <div class="col">

                                        <label for="country">Country</label>
                                        <input type="text" id="country" class="form-control mb-4"
                                               placeholder="1234 Main St">


                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col">

                                        <label for="state">State</label>
                                        <input type="text" id="state" class="form-control mb-4"
                                               placeholder="1234 Main St">

                                    </div>

                                </div>

                                <button class="btn btn-primary " type="submit">Add New Address</button>
                            </fieldset>
                        </form>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label>Cash on Delivery</label>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label for="code">Code</label>
                                <input type="text" class="form-control" id="code" placeholder="" required>
                                <button class="btn btn-primary " type="submit">Copy Code</button>
                                <small class="text-muted">Get the code to sign, please </small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label for="signature">Your Signature</label>
                                <input type="text" class="form-control" id="signature" placeholder="" required>
                                <small class="text-muted">Input your signature to verify </small>
                                <div class="invalid-feedback">
                                    Signature is required
                                </div>
                            </div>
                        </div>
                        <!--/.Panel 1-->
                    </div>
                    <!-- Pills panels -->
                </div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 mb-4">
                <!--Card-->
                <div class="card">

                    <!--Card content-->
                    <div class="card-body">
                        <h4 class="mb-4 mt-1 h5 text-center font-weight-bold">Summary</h4>

                        <hr>

                        <dl class="row">
                            <dd class="col-sm-8">
                                MDBootstrap UI KIT (jQuery version) - License 6-10 people + unlimited projects
                            </dd>
                            <dd class="col-sm-4">
                                $ 2000
                            </dd>
                        </dl>

                        <hr>

                        <dl class="row">
                            <dd class="col-sm-8">
                                Premium support - 2 years
                            </dd>
                            <dd class="col-sm-4">
                                $ 2000
                            </dd>
                        </dl>

                        <hr>

                        <dl class="row">
                            <dd class="col-sm-8">
                                MDB Membership - 2 years
                            </dd>
                            <dd class="col-sm-4">
                                $ 2000
                            </dd>
                        </dl>

                        <hr>

                        <dl class="row">
                            <dt class="col-sm-8">
                                Total
                            </dt>
                            <dt class="col-sm-4">
                                $ 2000
                            </dt>
                        </dl>
                    </div>

                </div>
                <!--/.Card-->
                <button class="btn btn-primary btn-lg btn-block" type="submit">Place order</button>
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
<script>// show form add new address when chose option add new address
document.getElementById("chooseAddress").addEventListener("change", showForm);

function showForm() {
    var x = document.getElementById("chooseAddress").value;
    if (x === "addNewAddress") {
        document.getElementById("newAddress").style.display = "block";
    } else {
        document.getElementById("newAddress").style.display = "none";
    }
}
</script>
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

    $(document).ready(function () {
        // Initially hide the form
        $('.custom-select').material_select();
    });

    // SideNav Initialization
    $(".button-collapse").sideNav();

</script>
<script src="/mdb/js/default.js"></script>
</body>
</html>


