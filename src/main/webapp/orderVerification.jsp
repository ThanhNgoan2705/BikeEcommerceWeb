<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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
                <a class="nav-link active" data-toggle="tab" href="#verify-order" role="tab">Order Verification</a>
                <!-- Pills panels -->
                <div class="tab-content pt-4">
                    <!--Panel 1-->
                    <div class="tab-pane fade in show active" id="verify-order" role="tabpanel">
                        <!--Card content-->
                        <hr>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <label for="code">Code</label>
                                <input type="text" class="form-control" id="code" placeholder=""  value="${code}" required>
                                <button class="btn btn-primary " onclick="copyCode()">Copy Code</button>
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
<script>
    function copyCode() {
        var code = document.getElementById("code").value;
        // write code to clipboard
        navigator.clipboard.writeText(code);
        alert("Copied successfully");
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
<script src="/mdb/js/default.js"></script>
</body>
</html>
